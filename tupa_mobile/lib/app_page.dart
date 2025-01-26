import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:tupa_application_core/tupa_application_core.dart';

import 'package:tupa_dependencies_core/tupa_dependencies_core.dart';
import 'package:tupa_mobile/src/presentation/auth/auth_page.dart';
import 'package:tupa_ui_core/tupa_ui_core.dart';
import 'package:wakelock_plus/wakelock_plus.dart';

class AppPage extends StatelessWidget {
  const AppPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthCubit>(
          create: (context) =>
              AuthCubit(context.read(), context.read())..loginIfSaved(),
          lazy: false,
        ),
        BlocProvider<ProjectDetailCubit>(
          create: (context) => ProjectDetailCubit(),
          lazy: false,
        ),
        BlocProvider<ProjectWatcherCubit>(
          create: (context) =>
              ProjectWatcherCubit(context.read())..getAllProjects(),
          lazy: false,
        ),
        BlocProvider<TowerWatcherCubit>(
          create: (context) => TowerWatcherCubit(context.read()),
          lazy: false,
        ),
      ],
      child: const AppView(),
    );
  }
}

class AppView extends StatefulWidget {
  const AppView({super.key});

  @override
  State<AppView> createState() => _AppViewState();
}

class _AppViewState extends State<AppView> {
  @override
  void dispose() {
    FlashHelper.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    FlashHelper.init(context);

    // final size = MediaQuery.of(context).size;
    // final isTablet = size.width > 860;
    WakelockPlus.enable();
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          MaterialApp(
            title: "TUPÃ",
            theme: AppTheme.tabletTheme,
            debugShowCheckedModeBanner: false,
            builder: OverlayService.init(),
            locale: const Locale('pt', 'BR'),
            home: const AuthPage(),
            // routeInformationParser: Modular.routeInformationParser,
            // routerDelegate: Modular.routerDelegate,
            supportedLocales: const [
              Locale('pt', 'BR'),
            ],
            localizationsDelegates: const [
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
          ),
        ],
      ),
    );
  }
}
