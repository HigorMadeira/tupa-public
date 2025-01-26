import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class EscIntent extends Intent {
  const EscIntent();
}

class CustomShortcuts {
  static Map<ShortcutActivator, Intent> escShortcut = {
    LogicalKeySet(LogicalKeyboardKey.escape): const EscIntent()
  };

  static Map<Type, Action<Intent>> escAction(VoidCallback callback) => {
        EscIntent: CallbackAction<EscIntent>(
          onInvoke: (EscIntent intent) => callback(),
        ),
      };
}
