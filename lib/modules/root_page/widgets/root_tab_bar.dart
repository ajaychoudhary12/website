import 'package:flutter/material.dart';
import 'package:portfolio/modules/common/spacing/spacing_constants.dart';

class RootTabBar extends StatefulWidget {
  const RootTabBar({super.key, required this.controller});

  final TabController controller;

  @override
  State<RootTabBar> createState() => _RootTabBarState();
}

class _RootTabBarState extends State<RootTabBar> {
  var selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 235,
      height: 28,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: TabBar(
        controller: widget.controller,
        overlayColor: MaterialStateProperty.all(Colors.transparent),
        indicatorSize: TabBarIndicatorSize.label,
        indicator: BoxDecoration(
          color: Color(0xFF016DFD),
          borderRadius: _getBorderRadiusGeometry(),
        ),
        padding: EdgeInsets.zero,
        indicatorPadding: EdgeInsets.zero,
        dividerColor: Colors.transparent,
        tabAlignment: TabAlignment.center,
        isScrollable: true,
        labelColor: Colors.white,
        labelPadding: EdgeInsets.zero,
        unselectedLabelColor: Colors.blue,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        tabs: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: SpacingConstants.spacing20,
            ),
            child: Tab(text: "Articles"),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: SpacingConstants.spacing20,
            ),
            child: Tab(text: "Work"),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: SpacingConstants.spacing20,
            ),
            child: Tab(text: "Projects"),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: SpacingConstants.spacing20,
            ),
            child: Tab(text: "About"),
          ),
        ],
      ),
    );
  }

  // MARK: Functions

  BorderRadiusGeometry _getBorderRadiusGeometry() {
    const firstIndex = 0;
    final lastIndex = widget.controller.length - 1;
    final selectedIndex = widget.controller.index;

    if (firstIndex == selectedIndex) {
      return _firstItemBorder;
    } else if (lastIndex == selectedIndex) {
      return _lastItemBorder;
    } else {
      return _zeroBorder;
    }
  }

  // MARK: Constants

  static const _firstItemBorder = BorderRadius.only(
    topLeft: Radius.circular(_borderRadius),
    bottomLeft: Radius.circular(_borderRadius),
  );

  static const _lastItemBorder = BorderRadius.only(
    topRight: Radius.circular(_borderRadius),
    bottomRight: Radius.circular(_borderRadius),
  );

  static const _zeroBorder = BorderRadius.zero;
  static const double _borderRadius = 8;
}
