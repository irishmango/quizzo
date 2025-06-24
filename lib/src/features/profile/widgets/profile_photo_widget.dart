import 'package:flutter/material.dart';
import 'package:quizzo/theme/styled_text/styled_text.dart';
import 'package:quizzo/theme/theme.dart';
import 'package:quizzo/src/data/shared_preferences.dart';

class ProfilePhotoWidget extends StatefulWidget {
  final double radius;
  final bool showEditButton;

  const ProfilePhotoWidget({
    super.key,
    this.radius = 80,
    this.showEditButton = true,
  });

  @override
  State<ProfilePhotoWidget> createState() => _ProfilePhotoWidgetState();
}

class _ProfilePhotoWidgetState extends State<ProfilePhotoWidget> {
  String selectedImage = 'assets/img/avatars/avatar_1.png';
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _loadSavedImage();
  }

  Future<void> _loadSavedImage() async {
    final savedImage = await getProfileImagePath();
    setState(() {
      selectedImage = savedImage;
      _isLoading = false;
    });
  }

  void _showImagePicker(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (_) {
        final List<String> images = [
          'assets/img/avatars/avatar_1.png',
          'assets/img/avatars/avatar_2.png',
          'assets/img/avatars/avatar_3.png',
          'assets/img/avatars/avatar_4.png',
          'assets/img/avatars/avatar_5.png',
          'assets/img/avatars/avatar_6.png',
        ];

        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Center(
                child: StyledBodyMediumText("Choose your avatar"),
              ),
              const SizedBox(height: 12),
              Wrap(
                spacing: 12,
                runSpacing: 12,
                children: images.map((img) {
                  return GestureDetector(
                    onTap: () {
                      setState(() => selectedImage = img);
                      saveProfileImagePath(img);
                      Navigator.pop(context);
                    },
                    child: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage(img),
                    ),
                  );
                }).toList(),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    if (_isLoading) {
      return SizedBox(
        height: widget.radius,
        width: widget.radius,
        
      );
    }

    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: AppColors.appBlack, width: 2),
          ),
          child: CircleAvatar(
            radius: widget.radius,
            backgroundImage: AssetImage(selectedImage),
          ),
        ),
        if (widget.showEditButton)
          Positioned(
            bottom: 0,
            right: 20,
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                border: Border.all(color: AppColors.appBlack, width: 1),
              ),
              padding: const EdgeInsets.all(4),
              child: GestureDetector(
                onTap: () => _showImagePicker(context),
                child: const Icon(
                  Icons.edit,
                  size: 20,
                  color: Colors.black,
                ),
              ),
            ),
          ),
      ],
    );
  }
}