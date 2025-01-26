import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:tupa_application_core/tupa_application_core.dart';
import 'package:tupa_dependencies_core/tupa_dependencies_core.dart'
    hide AuthState;
import 'package:tupa_web/src/presentation/auth/home_view.dart';
import 'package:tupa_web/src/presentation/auth/splash_page.dart';
import 'package:tupa_web/src/presentation/core/page_route/web_page_route_builder.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
        listenWhen: (previous, current) => previous != current,
        listener: (context, state) {
          state.maybeWhen(
            loading: () => EasyLoading.show(
                status: 'Desconectando usuário...',
                maskType: EasyLoadingMaskType.black),
            orElse: () => EasyLoading.dismiss(),
          );

          state.maybeWhen(
            unauthenticated: () => Navigator.of(context).pushReplacement(
              WebPageRouterBuilder(
                const AuthPage(),
              ),
            ),
            orElse: () {},
          );
        },
        builder: (context, state) {
          final userRole = state.maybeMap(
            authenticated: (u) {
              return u.user.userRoles?.first;
            },
            orElse: () => null,
          );
          return HomeView(userRole: userRole);
        });
  }
}
