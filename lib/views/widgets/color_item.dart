import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({
    super.key,
    required this.isSelected,
    required this.color,
  });
  final bool isSelected;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 5,
      ),
      child: Stack(
        children: [
          CircleAvatar(
            radius: 24,
            backgroundColor: isSelected ? color.withAlpha(400) : color,
          ),
          if (isSelected)
            const Positioned(
              top: 9,
              right: 9,
              child: Icon(
                Icons.check,
                color: Colors.black,
                size: 32,
              ),
            ),
        ],
      ),
    );
  }
}
