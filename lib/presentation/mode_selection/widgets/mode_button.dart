import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spotify/core/configs/theme/app_colors.dart';

class ModeButton extends StatelessWidget {
  final String assetName;
  final String icon;
  final VoidCallback onTap;
  const ModeButton({super.key, required this.assetName, required this.icon, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: ClipOval(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
              child: Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  color: const Color(0xff30393C).withOpacity(0.5),
                  shape: BoxShape.circle,
                ),
                child: SvgPicture.asset(
                  icon,
                  fit: BoxFit.none,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 14,
        ),
        Text(
          assetName,
          style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 17,
              color: AppColors.lightGrey),
        ),
      ],
    );
  }
}
