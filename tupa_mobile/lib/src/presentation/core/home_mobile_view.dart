// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:tupa_mobile/src/presentation/project/main_project_page.dart';
import 'package:tupa_ui_core/tupa_ui_core.dart';

class HomeMobileView extends StatelessWidget {
  const HomeMobileView({
    super.key,
    required this.bottomBarItems,
    required this.selectedPage,
  });
  final List<AppBottomBarItemModel> bottomBarItems;
  final int selectedPage;

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return Scaffold(
        backgroundColor: AppColors.label,
        bottomNavigationBar: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            AppBottomBar(
              initialPage: selectedPage,
              items: bottomBarItems,
            ),
            Container(
              color: AppColors.background,
              height: MediaQuery.of(context).padding.bottom,
            ),
          ],
        ),
        body: SafeArea(
          child: Stack(
            children: [
              if (selectedPage == 0) const MainProjectPage(),
              if (selectedPage == 1) const Center(child: Text('2')),
              if (selectedPage == 2) const Center(child: Text('3')),
              if (selectedPage == 3) const Center(child: Text('4')),
              if (selectedPage == 4) const Center(child: Text('5')),
            ],
          ),
        ),
      );
    });
  }
}

class AppBottomBar extends StatefulWidget {
  const AppBottomBar({
    super.key,
    required this.initialPage,
    required this.items,
  });

  final int initialPage;
  final List<AppBottomBarItemModel> items;

  @override
  State<AppBottomBar> createState() => AppBottomBarState();
}

class AppBottomBarState extends State<AppBottomBar> {
  late int _currentIndex;

  @override
  void initState() {
    super.initState();
    _currentIndex = widget.initialPage;
  }

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
        decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Color(0x0A000000),
              blurRadius: 24,
              offset: Offset(0, -4),
            )
          ],
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
          child: Material(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: List<Widget>.generate(
                widget.items.length,
                (i) => Expanded(
                  child: AppBottomBarItem(
                    key: widget.items[i].key,
                    enabled: i == _currentIndex,
                    icon: widget.items[i].icon,
                    text: widget.items[i].text,
                    hasNotification: widget.items[i].hasNotification,
                    onTap: () => selectBottomBarItem(i),
                  ),
                ),
              ),
            ),
          ),
        ));
  }

  void selectBottomBarItem(int index) {
    setState(() {
      widget.items[index].onTap();
      _currentIndex = index;
    });
  }
}

class AppBottomBarItemModel {
  final String text;
  final IconData icon;
  final VoidCallback onTap;
  final bool hasNotification;

  final Key? key;

  AppBottomBarItemModel({
    required this.text,
    required this.icon,
    required this.onTap,
    this.key,
    this.hasNotification = false,
  });
}

class AppBottomBarItem extends StatelessWidget {
  const AppBottomBarItem({
    super.key,
    required this.enabled,
    required this.onTap,
    required this.icon,
    required this.text,
    required this.hasNotification,
  });

  final bool enabled;
  final VoidCallback onTap;
  final IconData icon;
  final String text;
  final bool hasNotification;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return InkWell(
      onTap: onTap,
      child: Container(
        height: kBottomNavigationBarHeight,
        color: Colors.transparent,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (!hasNotification)
              Icon(
                icon,
                size: 20,
                color: enabled
                    ? theme.colorScheme.onSurface
                    : AppColors.placeholder,
              ),
            if (hasNotification)
              Stack(
                children: [
                  Badge(
                    smallSize: 8,
                    largeSize: 8,
                    label: const Text(''),
                    alignment: Alignment.topRight,
                    backgroundColor: theme.colorScheme.primary,
                    child: Icon(
                      icon,
                      size: 20,
                      color: enabled
                          ? theme.colorScheme.onSurface
                          : AppColors.placeholder,
                    ),
                  ),
                ],
              ),
            const SizedBox(height: 4),
            Text(
              text,
              style: theme.textTheme.bodySmall!.copyWith(
                fontWeight: FontWeight.w500,
                color: enabled
                    ? theme.colorScheme.onSurface
                    : AppColors.placeholder,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
