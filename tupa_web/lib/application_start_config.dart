import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
import 'package:tupa_backend/tupa_backend.dart';
import 'package:tupa_dependencies_core/tupa_dependencies_core.dart';
import 'package:tupa_domain/tupa_domain.dart';
import 'package:url_strategy/url_strategy.dart';

class ApplicationStartConfig {
  Future<void> configureApp(
      Widget appWidget, EnvironmentEnum environment) async {
    WidgetsFlutterBinding.ensureInitialized();

    final supabaseClient = await _configureDatabase();
    await _increaseSkiaCache();

    final logger = _configureLogger();
    setPathUrlStrategy();

    appWidget = await _configureRepositories(
      appWidget,
      logger,
      environment,
      supabaseClient,
    );

    runApp(_monitorPerfomanceWidget(appWidget));
  }

  Widget _monitorPerfomanceWidget(Widget child) {
    return child;
    // return kDebugMode
    //     ? StatsFl(
    //         align: Alignment.bottomLeft,
    //         isEnabled: true,
    //         height: 56,
    //         child: child,
    //       )
    //     : child;
  }

  Logger _configureLogger() {
    return Logger(
      ((error, {hint, stackTrace}) async {
        final dica = Hint.withMap({'hint': hint});
        Sentry.captureException(error, stackTrace: stackTrace, hint: dica);
      }),
    );
  }

  Future<void> _increaseSkiaCache() async {
    // Increase Skia cache size to support bigger images.
    const int megabyte = 1000000;
    SystemChannels.skia
        .invokeMethod('Skia.setResourceCacheMaxBytes', 512 * megabyte);

    await Future<void>.delayed(Duration.zero);
  }
}

Future<SupabaseClient> _configureDatabase() async {
  return DatabaseConfig().initializeDatabase(
    serverUrl: EnvironmentsVariables.param('SUPABASEURL')!,
    clientKey: EnvironmentsVariables.param('SUPABASEANONKEY')!,
  );
}

Future<MultiRepositoryProvider> _configureRepositories(
  Widget appWidget,
  ILogger logger,
  EnvironmentEnum environment,
  SupabaseClient supabaseClient,
) async {
  final localStorage = SharedPreferencesLocalStorage();
  await localStorage.instance;

  return MultiRepositoryProvider(
    providers: [
      RepositoryProvider<ILocalStorage>.value(value: localStorage),
      RepositoryProvider<SupabaseClient>.value(value: supabaseClient),
      RepositoryProvider<IAuthRepository>(
        create: (context) => environment == EnvironmentEnum.dev
            ? AuthRepositoryDesktop(
                context.read(),
                logger,
              )
            : AuthRepositoryDesktop(
                context.read(),
                logger,
              ),
      ),
      RepositoryProvider<IProjectDatasource>(
        create: (context) => ProjectDatasource(
          context.read(),
        ),
      ),
      RepositoryProvider<IProjectRepository>(
        create: (context) => ProjectRepository(context.read(), logger),
      ),
      RepositoryProvider<ITowerDatasource>(
        create: (context) => TowerDatasource(
          context.read(),
        ),
      ),
      RepositoryProvider<ITowerRepository>(
        create: (context) => TowerRepository(context.read(), logger),
      ),
    ],
    child: appWidget,
  );
}
