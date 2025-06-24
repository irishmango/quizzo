import 'package:flutter/material.dart';
import 'package:quizzo/src/features/profile/widgets/profile_photo_widget.dart';
import 'package:quizzo/src/features/shared/widgets/card_title_bar.dart';
import 'package:quizzo/theme/styled_text/styled_text.dart';
import 'package:quizzo/theme/theme.dart';

class ProfileCard extends StatelessWidget {
  final VoidCallback onSettings;

  const ProfileCard({super.key, required this.onSettings});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        width: 350,
        height: 600,
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
            ProfilePhotoWidget(),
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
      ),
    );
  }
}
