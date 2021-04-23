import 'package:flutter/material.dart';
import 'app_controller.dart';

// Estado global com o Statefull, pode realizar mudanças, é dinâmico
class HomePage extends StatefulWidget {
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int counter = 0;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        // actions são as opções no lado direito da barra do app
        actions: [CustomSwitch()],
      ),
      body: Center(
        child: CustomSwitch(),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            setState(() {
              counter++;
            });
          }),
    );
  }
}

// Componentizando o Switch para reutilização
class CustomSwitch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Switch(
        value: AppController.instance.isDarkTheme,
        onChanged: (value) {
          AppController.instance.changeTheme();
        });
  }
}
