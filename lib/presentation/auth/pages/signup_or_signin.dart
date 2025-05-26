import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spotify_practice/commom/helpers/is_dark_mode.dart';
import 'package:spotify_practice/commom/widgets/appbar/app_bar.dart';
import 'package:spotify_practice/commom/widgets/button/basic_app_button.dart';
import 'package:spotify_practice/core/configs/assets/app_images.dart';
import 'package:spotify_practice/core/configs/assets/app_vectors.dart';
import 'package:spotify_practice/core/configs/theme/app_colors.dart';
import 'package:spotify_practice/presentation/auth/pages/signin.dart';
import 'package:spotify_practice/presentation/auth/pages/signup.dart';

class SignupOrSigninPage extends StatelessWidget {
  const SignupOrSigninPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          BasicAppbar(),
          Align(
            alignment: Alignment.topRight,
            child: SvgPicture.asset(AppVectors.topPattern),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: SvgPicture.asset(AppVectors.bottomPattern),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Image.asset(AppImages.authBg),
          ),
          Align(
            alignment: Alignment.center,
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(40.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(AppVectors.logo),
                    SizedBox(height: 55),
                    Text(
                      'Enjoy Listening To Music',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 26,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Discover millions of songs, curated playlists, and exclusive podcasts — all in one place. Whether you're working out, chilling, or on a road trip, Spotify has the perfect sound for every moment.",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 17,
                        color: AppColors.grey,
                      ),
                      textAlign: TextAlign.center,
                      maxLines: 3,
                    ),
                    SizedBox(height: 30),
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: BasicAppButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return SignupPage();
                                  },
                                ),
                              );
                            },
                            title: "Register",
                          ),
                        ),
                        SizedBox(width: 20),
                        Expanded(
                          flex: 1,
                          child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return SigninPage();
                                  },
                                ),
                              );
                            },
                            child: Text(
                              'Sign in',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: context.isDarkMode
                                    ? Colors.white
                                    : Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
