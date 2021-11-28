import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:jogo_do_bicho/shared/themes/app_colors.dart';
import 'package:jogo_do_bicho/shared/themes/app_images.dart';
import 'package:jogo_do_bicho/shared/widgets/InputText/input_text_widget.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
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
                  padding: const EdgeInsets.symmetric(horizontal: 26),
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
                      const SizedBox(height: 60),
                      const InputTextWidget(label: 'Username'),
                      const SizedBox(height: 56),
                      const InputTextWidget(
                        label: 'Password',
                        password: true,
                      ),
                      const SizedBox(height: 60),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pushNamed('/register');
                            },
                            child: const Text(
                              "Don't have an account?",
                              style: TextStyle(
                                color: AppColors.foreground,
                                fontWeight: FontWeight.w300,
                                fontSize: 12,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                              vertical: 8,
                              horizontal: 52,
                            ),
                            decoration: const BoxDecoration(
                              color: AppColors.brWhite,
                              borderRadius: BorderRadius.all(
                                Radius.circular(4),
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x337AA2F7),
                                  blurRadius: 1,
                                  spreadRadius: 1,
                                  offset: Offset(1, 1),
                                ),
                              ],
                            ),
                            child: SvgPicture.asset(
                              AppImages.arrow,
                              width: 24,
                              height: 24,
                            ),
                          ),
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
