import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:jogo_do_bicho/shared/themes/app_colors.dart';
import 'package:jogo_do_bicho/shared/themes/app_images.dart';
import 'package:jogo_do_bicho/shared/utils/get_screen_percentage.dart';
import 'package:jogo_do_bicho/shared/widgets/ConfirmButton/confirm_button.dart';
import 'package:jogo_do_bicho/shared/widgets/InputText/input_text_widget.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final hSixty = getScreenPercentage(size, 60, false);
    // final hFiftySix = getScreenPercentage(size, 56, false);
    return Scaffold(
      body: Container(
        color: AppColors.background,
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [AppColors.background, Color(0x33A9B1D6)],
            ),
          ),
          child: ListView(children: <Widget>[
            Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: (0), vertical: (size.height * 0.1)),
                  child: SvgPicture.asset(
                    AppImages.logo,
                    width: size.width * 0.6,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: getScreenPercentage(size, 26, true)),
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          'Login',
                          style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.w500,
                            color: AppColors.foreground,
                          ),
                        ),
                      ),
                      SizedBox(height: hSixty),
                      const InputTextWidget(label: 'Username'),
                      SizedBox(height: getScreenPercentage(size, 56, false)),
                      const InputTextWidget(
                        label: 'Password',
                        password: true,
                      ),
                      SizedBox(height: hSixty),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pushNamed('/register');
                            },
                            child: Text(
                              "Don't have an account?",
                              style: TextStyle(
                                color: AppColors.foreground,
                                fontWeight: FontWeight.w300,
                                fontSize: size.width <= 360 ? 10 : 12,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                          ConfirmButtonWidget(size: size)
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
