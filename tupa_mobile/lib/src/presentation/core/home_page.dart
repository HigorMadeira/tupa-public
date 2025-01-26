import 'package:flutter/material.dart';
import 'package:tupa_application_core/tupa_application_core.dart';
import 'package:tupa_dependencies_core/tupa_dependencies_core.dart'
    hide AuthState;
import 'package:tupa_mobile/src/presentation/core/home_mobile_view.dart';
import 'package:tupa_ui_core/tupa_ui_core.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedPage = 0;

  @override
  void initState() {
    super.initState();

    // SystemChrome.setPreferredOrientations([
    //   DeviceOrientation.landscapeLeft,
    // ]);
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthCubit, AuthState>(
      listenWhen: (previous, current) => previous != current,
      listener: (context, state) {
        state.maybeWhen(
          unauthenticated: () => Navigator.pop(context),
          orElse: () => {},
        );
      },
      child: HomeMobileView(
        bottomBarItems: [
          AppBottomBarItemModel(
            text: 'início',
            icon: FeatherIcons.fileText,
            onTap: () => setState(() => selectedPage = 0),
          ),
          AppBottomBarItemModel(
            text: 'shield',
            icon: FeatherIcons.shield,
            onTap: () => setState(() => selectedPage = 1),
          ),
          AppBottomBarItemModel(
            text: 'calendar',
            icon: FeatherIcons.calendar,
            onTap: () => setState(() => selectedPage = 2),
          ),
          AppBottomBarItemModel(
            text: 'externalLink',
            icon: FeatherIcons.externalLink,
            onTap: () => setState(() => selectedPage = 3),
          ),
          AppBottomBarItemModel(
            text: 'user',
            icon: FeatherIcons.user,
            onTap: () => setState(() => selectedPage = 4),
          ),
        ],
        selectedPage: selectedPage,
      ),
    );
  }
}

class SharedAxisPageRoute extends PageRouteBuilder {
  SharedAxisPageRoute({
    SharedAxisTransitionType transitionType = SharedAxisTransitionType.scaled,
    required Widget child,
  }) : super(
          pageBuilder: (
            BuildContext context,
            Animation primaryAnimation,
            Animation secondaryAnimation,
          ) =>
              child,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> primaryAnimation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) {
            return SharedAxisTransition(
              animation: primaryAnimation,
              secondaryAnimation: secondaryAnimation,
              transitionType: transitionType,
              child: child,
            );
          },
        );
}
