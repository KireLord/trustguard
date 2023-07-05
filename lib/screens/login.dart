import 'package:flutter/material.dart';
import 'package:trustguard/utils/utils.dart';

class Login extends StatelessWidget {
  Login({Key? key}) : super(key: key);

  final userController = TextEditingController();
  final passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TrustGuard'),
      ),
      body: Stack(
        children: [        
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: double.infinity,
              height: 75,
              color: Colors.blue[300],
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 20),
                  child: Image.asset(
                    //poner el logo de la empresa
                    'assets/image/login_bottom.png',
                    width: 150,
                    height: 150,
                  ),
                ),
                //Ingreso de datos (Usuario y contraseña)
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  controller: userController,
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    labelText: Utils.user,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  controller: passController,
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    labelText: Utils.pass,
                  ),
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    // Acción del botón de Inicio de sesion
                  },
                  child: const Text('Inicio Sesion'),
                ),
            ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.infinity,
              height: 75,
              color: Colors.blue[300],
            ),
          ),
        ],
      ),
    );

  }
}