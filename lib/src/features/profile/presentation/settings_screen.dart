import 'package:flutter/material.dart';
import 'package:quizzo/src/features/shared/widgets/card_title_bar.dart';
import 'package:quizzo/theme/styled_text/styled_text.dart';
import 'package:quizzo/theme/theme.dart';

class SettingsScreen extends StatelessWidget {
  final VoidCallback onBack;

  const SettingsScreen({super.key, required this.onBack});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        width: 400,
        height: 740,
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      StyledBodyMediumText("Email:"),
                      StyledBodyMediumText("shokri@quizzo.com"),
                    ],
                  ),
                  Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      StyledBodyMediumText("Password:"),
                      StyledBodyMediumText("xxxxxx"),
                    ],
                  ),                 
                  Divider(),
                  StyledBodyMediumText("Report a Problem"),
                  Divider(),
                  StyledBodyMediumText("Terms of Service"),
                  Divider(),
                  SizedBox(height: 200),
                  // Custom 'Log Out' button
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            height: 57,
                            width: 277,
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
                        // Custom 'Delete Profile' button
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            height: 57,
                            width: 277,
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
                      ],
                    ),
                  ),
                  

                  
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}