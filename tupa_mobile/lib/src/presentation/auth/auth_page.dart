import 'package:tupa_application_core/tupa_application_core.dart' as auth;
import 'package:tupa_dependencies_core/tupa_dependencies_core.dart';
import 'package:flutter/material.dart';
import 'package:tupa_mobile/src/presentation/auth/auth_view.dart';
import 'package:tupa_mobile/src/presentation/core/home_page.dart';
import 'package:tupa_ui_core/tupa_ui_core.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.label,
      body: BlocListener<auth.AuthCubit, auth.AuthState>(
        listenWhen: (previous, current) => previous != current,
        listener: (context, state) {
          state.maybeWhen(
            loading: () => OverlayService.showCustomLoading(
              context,
              'Verificando usuário',
            ),
            authenticated: (u) {
              OverlayService.dismiss();
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => const HomePage(),
                ),
              );
            },
            failed: (failure) {
              OverlayService.dismiss();

              failure.maybeMap(
                  serverError: (_) => FlashHelper.errorBar(context,
                      message:
                          "Erro no servidor, por favor contate o suporte."),
                  emailNotAllowed: (_) => FlashHelper.errorBar(
                        context,
                        message: "Você não tem permissão para fazer login.",
                        duration: const Duration(seconds: 5),
                      ),
                  orElse: () {});
            },
            unauthenticated: () => OverlayService.dismiss(),
            orElse: () => OverlayService.dismiss(),
          );
        },
        child: const AuthView(),
      ),
    );
  }
}
