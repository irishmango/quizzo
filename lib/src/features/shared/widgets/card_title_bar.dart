import 'package:flutter/material.dart';

class CardTitleBar extends StatelessWidget {
  final String title;
  final Color backgroundColor;
  final Color textColor;
  final bool iconVisible;
  final VoidCallback? onSettingsPressed;

  const CardTitleBar({
    super.key,
    required this.backgroundColor,
    required this.title,
    this.iconVisible = false,
    this.textColor = Colors.white,
    this.onSettingsPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(8)),
        border: const Border(bottom: BorderSide(color: Colors.black, width: 2)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(width: 32),
          Text(
            title,
            style: TextStyle(
              fontFamily: 'Anaheim',
              fontSize: 36,
              fontWeight: FontWeight.w600,
              color: textColor,
            ),
          ),
          iconVisible
              ? IconButton(
                  icon: const Icon(Icons.settings, color: Colors.white, size: 42),
                  onPressed: () {
                    if (onSettingsPressed != null) {
                      onSettingsPressed!();
                    }
                  },
                )
              : const SizedBox(width: 42),
        ],
      ),
    );
  }
}