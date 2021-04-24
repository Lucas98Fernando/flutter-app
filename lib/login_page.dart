import 'package:flutter/material.dart';
import 'package:project/home_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Habilitando o scroll quando o teclado abre nos TextFields
      body: SingleChildScrollView(
        child: SizedBox(
          // Configurando a largura máxima com o context do Material
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 150,
                  // Importando imagems do assets, declarados no arquivo .yaml
                  child: Image.asset('assets/images/logo.png'),
                ),
                Container(
                  height: 20,
                ),
                // Input
                TextField(
                  // Recebendo os dados do inpute exibindo no console
                  onChanged: (text) {
                    email = text;
                  },
                  // Formatando o teclado para e-mails
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: 'E-mail'),
                ),
                SizedBox(height: 20),
                TextField(
                  onChanged: (text) {
                    password = text;
                  },
                  // Oculta os caracteres do input, coloca no formato de senha
                  obscureText: true,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: 'Senha'),
                ),
                SizedBox(height: 20),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      if (email == 'lucas98fernando@gmail.com' &&
                          password == '12345') {
                        /** 
                        // Navegação manual entre telas
                        // O pushReplacement remove a tela atual quando realiza a transição entre as telas, remove o botão de voltar no AppBar
                        
                        Navigator.of(context).pushReplacement(
                            MaterialPageRoute(builder: (context) => HomePage())); 
                        */
                        // Navegação com rotas nomeadas
                        Navigator.of(context).pushReplacementNamed('/home');
                      } else {
                        print('Login inválido !');
                      }
                    },
                    child: Text(
                      'Entrar',
                      textScaleFactor: 1.2,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
