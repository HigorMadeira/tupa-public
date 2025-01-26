import 'package:tupa_dependencies_core/tupa_dependencies_core.dart';

part 'web_navigation_cubit.freezed.dart';
part 'web_navigation_state.dart';

class WebNavigationCubit extends Cubit<WebNavigationState> {
  WebNavigationCubit() : super(const WebNavigationState.projects());

  void goToProjects() => emit(const WebNavigationState.projects());
}
