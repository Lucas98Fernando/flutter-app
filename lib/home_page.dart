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
      body: Container(
          width: double.infinity,
          height: double.infinity,
          // Column e Row possui childrens, cada elemento children, herda as configurações do pai
          // O MainAxisAlignment refere-se ao alinhamento geral
          // O CrossAxisAlignment refere-se ao alinhamento de cada elemento individualmente

          // O ListView serve para permitir o scroll na tela
          //child: ListView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,

            // O scrollDirection muda a direção do scroll do ListView, por padrão é na vertical
            //scrollDirection: Axis.horizontal,
            children: [
              Text('Contador: $counter'),
              Container(
                height: 20,
              ),
              CustomSwitch(),
              Container(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.black,
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.black,
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.black,
                  )
                ],
              )
            ],
          )),
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
