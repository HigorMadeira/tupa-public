import 'package:flutter/material.dart';
import 'package:tupa_web/src/presentation/core/dialog/custom_dialog_holder.dart';
import 'package:tupa_web/src/presentation/core/shortcuts/custom_shortcuts.dart';

class CustomDialog extends StatelessWidget {
  final DialogIcon? leading;
  final DialogIcon? trailing;
  final String title;
  final Widget body;
  final Widget? actions;
  final bool bodyScrollable;

  const CustomDialog({
    super.key,
    this.leading,
    this.trailing,
    required this.title,
    required this.body,
    this.actions,
    this.bodyScrollable = false,
  });

  @override
  Widget build(BuildContext context) {
    return Shortcuts(
      shortcuts: CustomShortcuts.escShortcut,
      child: Actions(
        actions: CustomShortcuts.escAction(() => Navigator.pop(context)),
        child: CustomDialogHolder(
          bodyScrollable: bodyScrollable,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: bodyScrollable
                    ? const EdgeInsets.symmetric(vertical: 40, horizontal: 64)
                    : const EdgeInsets.all(0),
                child: Row(
                  children: [
                    if (leading != null) leading!,
                    if (leading == null)
                      IconButton(
                          splashRadius: 24,
                          icon: const Icon(
                            Icons.close,
                          ),
                          onPressed: () => Navigator.pop(context)),
                    Expanded(
                      child: Center(
                        child: Text(
                          title,
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                      ),
                    ),
                    trailing ??
                        const SizedBox(
                          width: 40,
                        ),
                  ],
                ),
              ),
              SizedBox(
                height: bodyScrollable ? 24 : 40,
              ),
              body,
              SizedBox(
                height: bodyScrollable ? 24 : 40,
              ),
              if (actions != null)
                Padding(
                  padding: bodyScrollable
                      ? const EdgeInsets.symmetric(vertical: 40, horizontal: 80)
                      : const EdgeInsets.all(0),
                  child: actions,
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class DialogIcon extends StatelessWidget {
  final IconData icon;
  final VoidCallback onTap;

  const DialogIcon({Key? key, required this.icon, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      splashRadius: 24,
      icon: Icon(
        icon,
      ),
      onPressed: onTap,
    );
  }
}
