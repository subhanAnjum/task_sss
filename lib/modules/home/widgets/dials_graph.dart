import 'package:flutter/material.dart';
import 'package:task_sss/modules/home/widgets/dial_widget.dart';
import 'package:task_sss/utils/app_colors.dart';
import 'package:task_sss/utils/app_text_style.dart';
import 'package:task_sss/utils/extentions/screen_utils.dart';

class DialsGraph extends StatelessWidget {
  const DialsGraph({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: context.width * 0.6,
          height: context.width * 0.6,
          decoration:
              BoxDecoration(color: AppColors.bgColor, shape: BoxShape.circle),
        ),
        Container(
          alignment: Alignment.center,
          decoration:
              BoxDecoration(color: AppColors.bgColor, shape: BoxShape.circle),
          width: context.width * 0.5,
          height: context.width * 0.5,
          child: Stack(
            children: [
              const Dial(
                colors: [
                  Colors.orange,
                  Colors.purple,
                ],
                value: 60,
              ),
              Dial(
                colors: [
                  Colors.cyan,
                  Colors.blue.shade600,
                ],
                value: 40,
              ),
              Dial(
                colors: [
                  Colors.yellow,
                  Colors.green.shade600,
                ],
                value: 20,
              ),
            ],
          ),
        ),
        Column(
          children: [
            Text(
              '\$5,643.50',
              style: AppTextStyle.boldWhite16,
            ),
            Text(
              'Available balance',
              style: AppTextStyle.mediumGrey12,
            ),
          ],
        )
      ],
    );
  }
}
