import 'package:flutter/material.dart';
import 'app_controller.dart';
import 'home_page.dart';

// Estado local com o Stateless, não realizada mudanças, é uma constante
class AppWidget extends StatelessWidget {
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: AppController.instance,
        builder: (context, child) {
          return MaterialApp(
            theme: ThemeData(
                primarySwatch: Colors.red,
                brightness: AppController.instance.isDarkTheme
                    ? Brightness.dark
                    : Brightness.light),
            home: HomePage(),
          );
        });
  }
}
