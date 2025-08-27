import 'package:flutter/material.dart';
import 'package:quizzo/src/features/shared/widgets/card_title_bar.dart';
import 'package:quizzo/theme/styled_text/styled_text.dart';
import 'package:quizzo/theme/theme.dart';

class SettingsCard extends StatelessWidget {
  final VoidCallback onBack;

  const SettingsCard({super.key, required this.onBack});

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
          border: Border.all(color: AppColors.appBlack, width: 2),
        ),
        child: Column(
          children: [
            CardTitleBar(
              title: "Settings",
              backgroundColor: Colors.black,
              iconVisible: true,
              onSettingsPressed: onBack,
            ),
            const SizedBox(height: 54),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        StyledBodyMediumText("Email:"),
                        StyledBodyMediumText("guest@quizzo.com"),
                      ],
                    ),
                    const Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        StyledBodyMediumText("Password:"),
                        StyledBodyMediumText("xxxxxx"),
                      ],
                    ),
                    const Divider(),
                    StyledBodyMediumText("Report a Problem"),
                    const Divider(),
                    StyledBodyMediumText("Terms of Service"),
                    const Divider(),
                    const Spacer(), 
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            height: 57,
                            decoration: BoxDecoration(
                              border: Border.all(width: 2),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: const Center(
                              child: StyledBodyMediumText("Log Out"),
                            ),
                          ),
                        ),
                        const SizedBox(height: 12),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            height: 57,
                            decoration: BoxDecoration(
                              color: AppColors.appRed,
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(width: 2),
                            ),
                            child: const Center(
                              child: Text(
                                "Delete Profile",
                                style: TextStyle(
                                  fontFamily: 'Anaheim',
                                  fontSize: 24,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 24),
                        const Center(
                          child: Text(
                            "Version 1.0.0",
                            style: TextStyle(
                              fontFamily: 'Anaheim',
                              fontSize: 24,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        SizedBox(height: 16,)
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