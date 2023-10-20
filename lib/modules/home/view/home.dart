import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:task_sss/modules/home/widgets/dials_graph.dart';
import 'package:task_sss/utils/app_colors.dart';
import 'package:task_sss/utils/app_text_style.dart';
import 'package:task_sss/utils/extentions/screen_utils.dart';
import 'package:task_sss/utils/extentions/widget_utils.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(context.height * 0.08),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Row(
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: LinearGradient(
                            colors: [Color(0xFF0DA6C2), Color(0xFF320DAF)],
                          ),
                        ),
                      ),
                      Container(
                        height: 44,
                        width: 44,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/images/amazon.png'),
                          ),
                        ),
                      ),
                    ],
                  ),
                  12.horizontal,
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Welcome back!',
                        style: AppTextStyle.boldBlack14.copyWith(
                          color: AppColors.white,
                        ),
                      ),
                      const Text(
                        'Sand Candy',
                        style: AppTextStyle.regularGrey12,
                      ),
                    ],
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.notifications,
                          color: AppColors.white,
                        ),
                      ),
                      PopupMenuButton(itemBuilder: (context) => []),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Column(children: [
              (context.width * 0.3).vertical,
              ClipPath(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 2.5, sigmaY: 2.5),
                  child: Container(
                    color: AppColors.primary.withOpacity(0.9),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          (context.width * 0.4).vertical,
                          const Text(
                            'My Transections',
                            style: AppTextStyle.boldWhite18,
                          ),
                          20.vertical,
                          ...List.generate(
                              10,
                              (index) => Container(
                                    margin: const EdgeInsets.only(bottom: 20.0),
                                    decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.white.withOpacity(0.2),
                                          spreadRadius: 0.5,
                                          blurRadius: 1,
                                          offset: Offset(-1,
                                              -1), // changes position of shadow
                                        ),
                                      ],
                                      borderRadius: BorderRadius.circular(200),
                                      color: AppColors.primary,
                                    ),
                                    child: ListTile(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(200),
                                      ),
                                      tileColor: AppColors.bgColor,
                                      contentPadding:
                                          const EdgeInsets.symmetric(
                                        vertical: 10.0,
                                        horizontal: 20.0,
                                      ),
                                      leading: Container(
                                        height: 48,
                                        width: 48,
                                        decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    'assets/images/amazon.png'),
                                                fit: BoxFit.cover)),
                                      ),
                                      trailing: Container(
                                        height: 44,
                                        width: 90,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                          border: Border.all(
                                            color: AppColors.white
                                                .withOpacity(0.3),
                                          ),
                                        ),
                                        padding: const EdgeInsets.all(10.0),
                                        child:
                                            FittedBox(child: Text('\$1000.33')),
                                      ),
                                      title: const Text('Amazon'),
                                      subtitle: const Text('May 24, 2020'),
                                    ),
                                  )),
                          90.vertical,
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ]),
            const Positioned(
              top: 0,
              child: DialsGraph(),
            ),
          ],
        ),
      ),
    );
  }
}
