import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WebPageRouterBuilder extends PageRouteBuilder {
  final Widget widget;
  WebPageRouterBuilder(this.widget)
      : super(
          transitionDuration: const Duration(milliseconds: 10),
          pageBuilder: (BuildContext context, Animation<double> animation1,
              Animation<double> animation2) {
            return widget;
          },
          transitionsBuilder: (BuildContext context,
              Animation<double> animation1,
              Animation<double> animation2,
              Widget child) {
            return child;
          },
        );
}
