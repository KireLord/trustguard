import 'package:flutter/material.dart';
import 'package:trustguard/screens/login.dart';
import 'package:trustguard/screens/register.dart';

void main() {
  runApp(MainScreen());
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Oculta la etiqueta de depuración
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      routes: {
        '/login': (context) => Login(),
        '/register': (context) =>  Register(),
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
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
            height: 200,
            color: const Color.fromRGBO(57, 65, 64, 1),
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
                  'assets/image/TrustGuardMain.png',
                  width: 480,
                  height: 400,
                ),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 0,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 200,
            color: const Color.fromRGBO(57, 65, 64, 1),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Acción del botón de inicio de sesión
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black, // Cambiar el color de fondo del botón
                  ),
                  child: const Text(
                    'Iniciar sesión',
                    style: TextStyle(
                      color: Colors.white, // Cambiar el color de la letra del botón
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () {
                    // Acción del botón de registro
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Register()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black, // Cambiar el color de fondo del botón
                  ),
                  child: const Text(
                    'Registrarse',
                    style: TextStyle(
                      color: Colors.white, // Cambiar el color de la letra del botón
                    ),
                  ),
                ),  
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
}
