import 'package:flutter/material.dart';

class HoneyTiramisuMoonlightCircle extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;
  final List<CustomNavItem> items;
  final Color backgroundColor;
  final Color selectedColor;
  final Color unselectedColor;
  final bool useBackgroundImage;
  final String backgroundImageAsset;

  const HoneyTiramisuMoonlightCircle({
    Key? key,
    required this.currentIndex,
    required this.onTap,
    required this.items,
    this.backgroundColor = Colors.white,
    this.selectedColor = const Color(0xFF8B5FBF),
    this.unselectedColor = const Color(0xFF6B4C93),
    this.useBackgroundImage = true,
    this.backgroundImageAsset =
        'assets/images/dfjghdfuhgoda_fdguihadufgoiaduFG.png',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: false,
      child: LayoutBuilder(builder: (context, constraints) {
        return SizedBox(
          height: 74,
          width: double.infinity,
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    width: double.infinity,
                    height: 74,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      image: useBackgroundImage
                          ? DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage(backgroundImageAsset),
                            )
                          : null,
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: items.asMap().entries.map((entry) {
                        int index = entry.key;
                        CustomNavItem item = entry.value;
                        bool isSelected = index == currentIndex;

                        return GestureDetector(
                          onTap: () => onTap(index),
                          child: Container(
                            width: 60,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                AnimatedContainer(
                                  duration: const Duration(milliseconds: 350),
                                  curve: Curves.easeInOut,
                                  width: 28,
                                  height: 28,
                                  child: isSelected
                                      ? AnimatedScale(
                                          scale: 1.1,
                                          duration:
                                              const Duration(milliseconds: 300),
                                          child: item.icon,
                                        )
                                      : AnimatedScale(
                                          scale: 1.0,
                                          duration:
                                              const Duration(milliseconds: 300),
                                          child: item.icon,
                                        ),
                                ),
                              ],
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}

class CustomNavItem {
  final Widget icon;
  final String label;

  CustomNavItem({
    required this.icon,
    required this.label,
  });
}
