import 'package:flutter/foundation.dart';
import 'package:tupa_dependencies_core/tupa_dependencies_core.dart';
import 'package:tupa_domain/tupa_domain.dart';
import 'package:tupa_mobile/app_page.dart';
import 'package:tupa_mobile/application_start_config.dart';

Future<void> main() async {
  await _environmentsConfig();

  ApplicationStartConfig()
      .configureApp(const AppPage(), EnvironmentEnum.production);
}

Future<void> _environmentsConfig() async {
  await EnvironmentsVariables.loadEnvs(
    kReleaseMode ? "release.env" : "release.env",
  );
}
