import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart'
    as custom_clipper;
import 'package:provider/provider.dart';
import 'package:task_sss/modules/home/view/home.dart';
import 'package:task_sss/modules/stats/view/statics.dart';
import 'package:task_sss/modules/wallet/view/wallet.dart';
import 'package:task_sss/providers/app_provider.dart';
import 'package:task_sss/utils/app_colors.dart';
import 'package:task_sss/utils/extentions/screen_utils.dart';

import '../../../utils/clippers/nav_clipper.dart';

class BottomNAvigationView extends StatefulWidget {
  const BottomNAvigationView({super.key});

  @override
  State<BottomNAvigationView> createState() => _BottomNAvigationViewState();
}

class _BottomNAvigationViewState extends State<BottomNAvigationView> {
  final screens = const [HomeView(), WalletView(), StaticsView()];
  @override
  Widget build(BuildContext context) {
    return Consumer<AppProvider>(
      builder: (context, provider, _) => Stack(
        alignment: Alignment.bottomCenter,
        children: [
          //screens
          screens[provider.selectedTab],
          //bottom nav
          ClipPath(
            clipper: provider.selectedTab == 2
                ? NavClipper3()
                : provider.selectedTab == 1
                    ? NavClipper2()
                    : NavClipper1(),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 9.5, sigmaY: 9.5),
              child: ClipPath(
                clipper: provider.selectedTab == 2
                    ? NavClipper3()
                    : provider.selectedTab == 1
                        ? NavClipper2()
                        : NavClipper1(),
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColors.primary.withOpacity(0.5),
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.white.withOpacity(0.1),
                      )
                    ],
                  ),
                  width: context.width,
                  height: 90,
                  child: Row(children: [
                    NavItem(
                      selectedValue: provider.selectedTab,
                      value: 0,
                      iconData: Icons.home,
                    ),
                    NavItem(
                      iconData: Icons.wallet,
                      selectedValue: provider.selectedTab,
                      value: 1,
                    ),
                    NavItem(
                      iconData: Icons.auto_graph,
                      selectedValue: provider.selectedTab,
                      value: 2,
                    ),
                  ]),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class NavItem extends StatelessWidget {
  const NavItem({
    super.key,
    required this.iconData,
    required this.selectedValue,
    required this.value,
  });
  final int selectedValue;
  final int value;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    final selected = selectedValue == value;
    final color =
        selected ? AppColors.navIConColor : AppColors.navIConUnSelectedColor;
    return Expanded(
      child: GestureDetector(
        onTap: () =>
            Provider.of<AppProvider>(context, listen: false).changeTab(value),
        child: ClipPath(
          child: Container(
            child: Stack(
              alignment: Alignment.center,
              children: [
                if (selected)
                  Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Spacer(),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(500.0),
                              child: Container(
                                width: context.width * 0.2,
                                decoration: BoxDecoration(
                                  gradient: RadialGradient(
                                    colors: [
                                      color.withOpacity(0.4),
                                      color.withOpacity(0.25),
                                      color.withOpacity(0.05),
                                    ],
                                  ),
                                ),
                                child: BackdropFilter(
                                  filter: ImageFilter.blur(
                                      sigmaX: 3.0, sigmaY: 3.0),
                                  child: SizedBox(
                                    height: 80,
                                    width: context.width * 0.2,
                                  ),
                                ),
                              ),
                            ),
                            const Spacer(),
                          ],
                        ),
                      ),
                    ],
                  ),
                Icon(
                  iconData,
                  color: color,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
