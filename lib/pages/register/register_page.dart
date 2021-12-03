import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:jogo_do_bicho/shared/themes/app_colors.dart';
import 'package:jogo_do_bicho/shared/themes/app_images.dart';
import 'package:jogo_do_bicho/shared/utils/get_screen_percentage.dart';
import 'package:jogo_do_bicho/shared/widgets/ConfirmButton/confirm_button.dart';
import 'package:jogo_do_bicho/shared/widgets/InputText/input_text_widget.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final hSixty = getScreenPercentage(size, 60, false);
    final hFiftySix = getScreenPercentage(size, 56, false);
    // print({'---------------------\nhSixty': hSixty, '\nhFiftySix': hFiftySix});
    // print("banana:" + getScreenPercentage(size, 26, true).toString());
    // print(size.width);
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
        ),
      ),
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
          child: ListView(
            children: <Widget>[
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: getScreenPercentage(size, 20, true)),
                    child: Column(
                      children: [
                        SizedBox(height: hSixty),
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
                        SizedBox(height: hSixty),
                        const InputTextWidget(label: 'Username'),
                        SizedBox(height: hFiftySix),
                        const InputTextWidget(
                          label: 'Password',
                          password: true,
                        ),
                        SizedBox(height: hFiftySix),
                        const InputTextWidget(
                          label: 'Confirm password',
                          password: true,
                        ),
                        SizedBox(height: hFiftySix),
                        const InputTextWidget(label: "Email"),
                        SizedBox(height: hFiftySix),
                        const InputTextWidget(label: "Confirm email"),
                        SizedBox(height: hSixty),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextButton(
                              onPressed: () => Navigator.pop(context),
                              child: Text(
                                "Already have an account?",
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
            ],
          ),
        ),
      ),
    );
  }
}
