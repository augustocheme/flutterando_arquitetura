import 'package:flutter/material.dart';
import 'package:flutterando_arquitetura/app/app_controller.dart';
import 'package:flutterando_arquitetura/app/pages/home/home_page.dart';

class AppWdiget extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: AppController.instance.themeSwitch,
      builder: (context, isDark, child) {
        return MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
            brightness: isDark ? Brightness.dark : Brightness.light,
          ),
          debugShowCheckedModeBanner: false,
          home: HomePage(),
        );
      },
    );
  }
}
