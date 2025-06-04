import 'package:fitness_dashboard/config/app_color.dart';
import 'package:fitness_dashboard/screens/get_started.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'config/theme_notifier.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeNotifier(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeNotifier>(context);

    return MaterialApp(
      theme: AppColor.lightTheme,
      darkTheme: AppColor.darkTheme,
      themeMode: themeNotifier.themeMode,
      debugShowCheckedModeBanner: false,
      home: GetStartedPage(),
    );
  }
}
