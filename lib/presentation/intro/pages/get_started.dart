import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spotify_practice/commom/widgets/button/basic_app_button.dart';
import 'package:spotify_practice/core/configs/assets/app_images.dart';
import 'package:spotify_practice/core/configs/assets/app_vectors.dart';
import 'package:spotify_practice/core/configs/theme/app_colors.dart';
import 'package:spotify_practice/presentation/choose_mode/pages/choose_mode_page.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(AppImages.introBg),
              ),
            ),
          ),
          Container(color: Colors.black.withAlpha(39)),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(40.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: SvgPicture.asset(AppVectors.logo),
                  ),
                  Spacer(),
                  Text(
                    'Enjoy Listening To Music',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Discover millions of songs, curated playlists, and exclusive podcasts — all in one place. Whether you're working out, chilling, or on a road trip, Spotify has the perfect sound for every moment.",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: AppColors.grey,
                      fontSize: 14,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20),
                  BasicAppButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return ChooseModePage();
                          },
                        ),
                      );
                    },
                    title: 'Get Started',
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
