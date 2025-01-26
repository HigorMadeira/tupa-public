import 'package:tupa_dependencies_core/tupa_dependencies_core.dart';

class DatabaseConfig {
  Future<SupabaseClient> initializeDatabase({
    required String serverUrl,
    required String clientKey,
  }) async {
    return SupabaseClient(serverUrl, clientKey);
  }
}
