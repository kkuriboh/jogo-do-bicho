import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:jogo_do_bicho/shared/themes/app_colors.dart';
import 'package:jogo_do_bicho/shared/themes/app_images.dart';
import 'package:jogo_do_bicho/shared/widgets/InputText/input_text_widget.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: CupertinoNavigationBar(
          backgroundColor: AppColors.background,
          middle: const Text(
            'Register',
            style: TextStyle(
              color: AppColors.foreground,
              fontSize: 20,
              fontWeight: FontWeight.w400,
            ),
          ),
          leading: IconButton(
            icon: const Icon(
              CupertinoIcons.back,
              color: AppColors.foreground,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          )),
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
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 26),
                  child: Column(
                    children: [
                      const SizedBox(height: 60),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          'Register',
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
                      const SizedBox(height: 56),
                      const InputTextWidget(
                        label: 'Confirm password',
                        password: true,
                      ),
                      const SizedBox(height: 56),
                      const InputTextWidget(label: "Email"),
                      const SizedBox(height: 56),
                      const InputTextWidget(label: "Confirm email"),
                      const SizedBox(height: 60),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                            onPressed: () => Navigator.pop(context),
                            child: const Text(
                              "Already have an account?",
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
