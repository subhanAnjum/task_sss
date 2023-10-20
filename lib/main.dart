import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_sss/modules/bottom_navigation/view/bottom_navigation.dart';
import 'package:task_sss/providers/app_provider.dart';
import 'package:task_sss/utils/app_colors.dart';

void main() {
  runApp(const TaskApp());
}

class TaskApp extends StatelessWidget {
  const TaskApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => AppProvider(),
          ),
        ],
        builder: (context, _) {
          return MaterialApp(
            title: 'Task SSS',
            theme: ThemeData(
                appBarTheme: const AppBarTheme(
                    backgroundColor: AppColors.bgColor,
                    elevation: 0,
                    iconTheme: IconThemeData(
                      color: Colors.white,
                    )),
                scaffoldBackgroundColor: AppColors.bgColor,
                colorScheme: ColorScheme.fromSeed(
                  seedColor: AppColors.primary,
                  brightness: Brightness.dark,
                ),
                useMaterial3: true,
                brightness: Brightness.dark),
            home: const BottomNAvigationView(),
          );
        });
  }
}
