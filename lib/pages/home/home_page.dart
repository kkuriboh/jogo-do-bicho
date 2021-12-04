import 'package:flutter/material.dart';
import 'package:jogo_do_bicho/shared/themes/app_colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      appBar: AppBar(
        toolbarHeight: 110,
        automaticallyImplyLeading: false,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(4),
            bottomRight: Radius.circular(4),
          ),
        ),
        backgroundColor: AppColors.brGreen,
        flexibleSpace: Padding(
          padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
          child: Container(
            padding: const EdgeInsets.all(12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Augusto",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w300,
                        color: AppColors.black,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: const [
                        Text(
                          "R\$ 1000,00",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: AppColors.brBlack,
                          ),
                        ),
                        Text(
                          "possibly R\$ 1578,90",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w200,
                            color: AppColors.blue,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "65/100",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w200,
                        color: AppColors.magenta,
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      child: LinearProgressIndicator(
                        value: 0.65,
                        backgroundColor: AppColors.brCyan,
                        valueColor: AlwaysStoppedAnimation<Color>(
                          AppColors.magenta,
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
      body: const Center(
        child: Text(
          'Jogo do Bicho',
          style: TextStyle(
            color: Colors.white,
            fontSize: 40,
          ),
        ),
      ),
    );
  }
}
