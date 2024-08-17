import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spotify/common/widgets/main_button.dart';
import 'package:spotify/core/configs/assets/app_images.dart';
import 'package:spotify/core/configs/assets/app_vectors.dart';
import 'package:spotify/presentation/mode_selection/widgets/mode_button.dart';

class ModeSelectionPage extends StatelessWidget {
  const ModeSelectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(AppImages.modePageBackground),
              ),
            ),
          ),
          Container(
            color: Colors.black.withOpacity(0.15),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 28.0),
            child: SafeArea(
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: SvgPicture.asset(AppVectors.logo),
                  ),
                  const Spacer(),
                  const Text(
                    "Choose Mode",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 18.0),
                  ),
                  const SizedBox(
                    height: 17.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ModeButton(assetName: "Light Mode", icon: AppVectors.sun, onTap: () {}),
                      ModeButton(assetName: "Dark Mode", icon: AppVectors.moon, onTap: () {}),
                    ],
                  ),
                  const SizedBox(
                    height: 50.0,
                  ),
                  MainButton(
                    onPressed: () {
                      // Navigator.of(context).push(
                      //   MaterialPageRoute(
                      //     builder: (ctx) => const ModeSelectionPage(),
                      //   ),
                      // );
                    },
                    title: "Continue",
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
