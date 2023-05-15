import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:aisyah/routes/app_pages.dart';
import 'package:aisyah/routes/app_routes.dart';
import 'package:aisyah/themes/app_themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "SIAKAD Aisyah",
      initialRoute: AppRoutes.dashboard,
      getPages: AppPages.list,
      debugShowCheckedModeBanner: false,
      darkTheme: AppThemes.dark,
      theme: AppThemes.light,
      themeMode: ThemeMode.system,
    );
  }
}
