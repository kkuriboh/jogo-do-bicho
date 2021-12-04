import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jogo_do_bicho/shared/themes/app_colors.dart';
import 'package:jogo_do_bicho/shared/themes/app_images.dart';

class ConfirmButtonWidget extends StatelessWidget {
  final Size size;
  const ConfirmButtonWidget({Key? key, required this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).pushNamed("/home"),
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: 8,
          horizontal: size.width * 0.2,
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
    );
  }
}
