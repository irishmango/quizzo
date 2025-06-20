import 'package:flutter/material.dart';
import 'package:quizzo/src/features/shared/widgets/card_title_bar.dart';

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
          color: const Color.fromRGBO(224, 214, 197, 1),
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: const Color(0xFF202020), width: 2),
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
                      Text("Email:", style: TextStyle(fontFamily: 'Anaheim', fontSize: 24, fontWeight: FontWeight.w600)),
                      Text("shokri@quizzo.com", style: TextStyle(fontFamily: 'Anaheim', fontSize: 24, fontWeight: FontWeight.w600)),
                    ],
                  ),
                  Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Password:", style: TextStyle(fontFamily: 'Anaheim', fontSize: 24, fontWeight: FontWeight.w600)),
                      Text("xxxxxxxx", style: TextStyle(fontFamily: 'Anaheim', fontSize: 24, fontWeight: FontWeight.w600)),
                    ],
                  ),                 
                  Divider(),
                  Text("Report a Problem", style: TextStyle(fontFamily: 'Anaheim', fontSize: 24, fontWeight: FontWeight.w600)),
                  Divider(),
                  Text("Terms of Service", style: TextStyle(fontFamily: 'Anaheim', fontSize: 24, fontWeight: FontWeight.w600)),
                  Divider(),
                  SizedBox(height: 200),
                  // Custom 'Log Out' button
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          height: 57,
                          width: 277,
                          decoration: BoxDecoration(
                            border: Border.all(width: 2),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Center(
                            child: Text(
                              "Log Out",
                              style: TextStyle(
                                fontFamily: 'Anaheim',
                                fontSize: 24,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 12),
                        // Custom 'Delete Profile' button
                        Container(
                          height: 57,
                          width: 277,
                          decoration: BoxDecoration(
                            color: Colors.red,
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