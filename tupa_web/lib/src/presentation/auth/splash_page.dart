// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:tupa_application_core/tupa_application_core.dart';
import 'package:tupa_dependencies_core/tupa_dependencies_core.dart'
    hide AuthState;
import 'package:tupa_ui_core/tupa_ui_core.dart';
import 'package:tupa_web/src/presentation/auth/auth_view.dart';
import 'package:tupa_web/src/presentation/auth/home_page.dart';
import 'package:tupa_web/src/presentation/core/page_route/web_page_route_builder.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((timeStamp) {
      Future.delayed(const Duration(milliseconds: 10),
          () => context.read<AuthCubit>().checkLoggedUser());
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthCubit, AuthState>(
      listenWhen: (previous, current) => previous != current,
      listener: (context, state) {
        state.maybeMap(
          initial: (_) {},
          authenticated: (_) {
            Navigator.of(context).push(
              WebPageRouterBuilder(const HomePage()),
            );
          },
          unauthenticated: (_) => Navigator.of(context).push(
            WebPageRouterBuilder(
              const AuthPage(),
            ),
          ),
          orElse: () {},
        );
      },
      child: const Scaffold(
        body: Center(
          child: Text('CARREGANDO...'), //Loading Screen right after html
        ),
      ),
    );
  }
}

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<AuthCubit, AuthState>(
        listenWhen: (previous, current) => previous != current,
        listener: (context, state) {
          state.maybeWhen(
            loading: () => EasyLoading.show(
                status: 'Verificando usuário...',
                maskType: EasyLoadingMaskType.black),
            orElse: () => EasyLoading.dismiss(),
          );
          state.maybeWhen(
              authenticated: (u) {
                Navigator.of(context).push(
                  WebPageRouterBuilder(
                    const HomePage(),
                  ),
                );
              },
              failed: (failure) {
                failure.maybeMap(
                    serverError: (_) => FlashHelper.errorBar(context,
                        message:
                            "Erro no servidor, por favor contate o suporte."),
                    emailNotAllowed: (_) => FlashHelper.errorBar(
                          context,
                          message: "Você não tem permissão para fazer login.",
                          duration: const Duration(seconds: 5),
                        ),
                    emailOrPasswordInvalid: (_) => FlashHelper.errorBar(
                          context,
                          message: "Usuário ou Senha Inválido",
                          duration: const Duration(seconds: 5),
                        ),
                    orElse: () {});
              },
              orElse: () {});
        },
        child: const AuthView(),
      ),
    );
  }
}
