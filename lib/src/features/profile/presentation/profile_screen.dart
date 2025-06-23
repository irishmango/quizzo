import 'dart:math';
import 'package:flutter/material.dart';
import 'package:quizzo/src/features/profile/presentation/settings_screen.dart';
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
      padding: const EdgeInsets.only(top: 30),
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
              ? SettingsScreen(key: const ValueKey(true), onBack: _toggleCard)
              : ProfileCard(key: const ValueKey(false), onSettings: _toggleCard),
        ),
      ),
    );
  }
}

class ProfileCard extends StatelessWidget {
  final VoidCallback onSettings;

  const ProfileCard({super.key, required this.onSettings});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 740,
      decoration: BoxDecoration(
        color: AppColors.darkBeige,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: const Color(0xFF202020), width: 2),
      ),
      child: Column(
        children: [
          CardTitleBar(
            title: "Profile",
            backgroundColor: AppColors.appBlue,
            iconVisible: true,
            onSettingsPressed: onSettings,
          ),
          const SizedBox(height: 16),
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: AppColors.appBlack, width: 2),
            ),
            child: const CircleAvatar(
              radius: 80,
              backgroundColor: Colors.grey,
            ),
          ),
          const Expanded(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      StyledBodyMediumText("Name:"),
                      StyledBodyMediumText("Shokri"),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      StyledBodyMediumText("Joined:"),
                      StyledBodyMediumText("06.06.2025"),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      StyledBodyMediumText("XP Points:"),
                      StyledBodyMediumText("1850"),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      StyledBodyMediumText("Achievements Unlocked:"),
                      StyledBodyMediumText("8"),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}