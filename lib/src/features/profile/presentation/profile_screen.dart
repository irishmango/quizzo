import 'dart:math';
import 'package:flutter/material.dart';
import 'package:quizzo/src/features/profile/widgets/settings_card.dart';
import 'package:quizzo/src/features/profile/widgets/profile_card.dart';
import 'package:quizzo/src/features/shared/widgets/card_title_bar.dart';
import 'package:quizzo/theme/styled_text/styled_text.dart';
import 'package:quizzo/theme/theme.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool _showSettings = false;

  void _toggleCard() {
    setState(() => _showSettings = !_showSettings);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25),
      child: Align(
        alignment: Alignment.topCenter,
        child: AnimatedSwitcher(
          duration: const Duration(milliseconds: 500),
          transitionBuilder: (child, animation) {
            final rotate = Tween(begin: pi, end: 0.0).animate(animation);
            return AnimatedBuilder(
              animation: rotate,
              child: child,
              builder: (context, child) {
                final tilt = rotate.value;
                return Transform(
                  transform: Matrix4.identity()
                    ..setEntry(3, 2, 0.001) 
                    ..rotateY(tilt),
                  alignment: Alignment.center,
                  child: child,
                );
              },
            );
          },
          child: _showSettings
              ? SettingsCard(key: const ValueKey(true), onBack: _toggleCard)
              : ProfileCard(key: const ValueKey(false), onSettings: _toggleCard),
        ),
      ),
    );
  }
}
