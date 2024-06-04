import 'package:flutter/material.dart';
import 'cadastro.dart';
import 'main.dart';

class login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Login'),
          backgroundColor: Colors.purpleAccent,
        ),
        body: loginBody(),
      ),
    );
  }
}

class loginBody extends StatelessWidget {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        //crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextField(
            controller: _usernameController,
            decoration: InputDecoration(
              labelText: 'Login',
              prefixIcon: Icon(Icons.person),
              filled: true,
              fillColor: Colors.black12,
            ),
          ),
          SizedBox(height: 20.0),
          TextField(
            controller: _passwordController,
            decoration: InputDecoration(
              labelText: 'Senha',
              prefixIcon: Icon(Icons.lock),
              filled: true,
              fillColor: Colors.black12,
            ),
            obscureText: true,
          ),
          TextButton(
            onPressed: () {},
            child: const Text('Cadastro'),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black12, // Cor de fundo do botão
              textStyle: TextStyle(fontSize: 18), // Estilo do texto
              padding: EdgeInsets.symmetric(horizontal:20, vertical: 20), // Espaçamento interno
              minimumSize: Size(100, 0), // Largura mínima do botão
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),

          TextButton(
            onPressed: () {},
            child: const Text('Recuperar senha'),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black12, // Cor de fundo do botão
              textStyle: TextStyle(fontSize: 18), // Estilo do texto
              padding: EdgeInsets.symmetric(horizontal:20, vertical: 20), // Espaçamento interno
              minimumSize: Size(100, 0), // Largura mínima do botão
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
          ),
          ),

        SizedBox(height: 20.0),
        ElevatedButton(
        onPressed:(){
      Navigator.pushNamed(context, '/cadastro');
        },
          child: const Text('Novo aqui!'),
        ),


          SizedBox(height: 20.0),
          ElevatedButton(
            onPressed: () {
              if (_usernameController.text == 'rebecaalonso@gmail.com' &&
                  _passwordController.text == '020506') {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Acesso liberado')),
                );
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Acesso invalido Tente novamente')),
                );
              }
            },
            child: const Text('Entrar'),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black12, // Cor de fundo do botão
              textStyle: TextStyle(fontSize: 18), // Estilo do texto
              padding: EdgeInsets.symmetric(horizontal:20, vertical: 20), // Espaçamento interno
              minimumSize: Size(100, 0), // Largura mínima do botão
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15), // Borda arredondada
              ),
            ),
          ),
        ],
      ),

    );
  }
}