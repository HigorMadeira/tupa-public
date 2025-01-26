import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart';
import 'package:tupa_application_core/tupa_application_core.dart';
import 'package:tupa_dependencies_core/tupa_dependencies_core.dart';
import 'package:tupa_ui_core/tupa_ui_core.dart';
import 'package:tupa_web/router_delegate.dart';
import 'package:tupa_web/src/application/navigation/web_navigation_cubit.dart';
import 'package:tupa_web/src/application/project/form/project_form_cubit.dart';

class AppPage extends StatelessWidget {
  const AppPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ProjectWatcherCubit>(
          create: (context) =>
              ProjectWatcherCubit(context.read())..getAllProjects(),
          lazy: false,
        ),
        BlocProvider<AuthCubit>(
          create: (context) => AuthCubit(context.read(), context.read()),
          lazy: false,
        ),
        BlocProvider<WebNavigationCubit>(
          create: (context) => WebNavigationCubit(),
          lazy: false,
        ),
        BlocProvider<ProjectDetailCubit>(
          create: (context) => ProjectDetailCubit(),
          lazy: false,
        ),
        BlocProvider<TowerWatcherCubit>(
          create: (context) => TowerWatcherCubit(context.read()),
          lazy: false,
        ),
        BlocProvider<ProjectFormCubit>(
          create: (context) => ProjectFormCubit(context.read()),
          lazy: false,
        ),
      ],
      child: const AppView(),
    );
  }
}

class AppView extends StatelessWidget {
  const AppView({super.key});

  @override
  Widget build(BuildContext context) {
    FlashHelper.init(context);

    EasyLoading.instance.loadingStyle = EasyLoadingStyle.light;

    Intl.defaultLocale = 'pt_BR';
    return MaterialApp.router(
      title: "Tupã",
      theme: AppTheme.lightTheme.copyWith(
        visualDensity: VisualDensity.compact,
      ),
      debugShowCheckedModeBanner: false,
      builder: EasyLoading.init(builder: OverlayService.init()),
      locale: const Locale('pt', 'BR'),
      supportedLocales: const [
        Locale('pt', 'BR'),
      ],
      routeInformationParser: BeamerParser(),
      routerDelegate: CustomRouterDelegate.routerDelegate,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
    );
  }
}
