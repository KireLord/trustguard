import 'package:flutter/material.dart';
import 'package:trustguard/utils/utils.dart';

class Register extends StatelessWidget {
  Register({Key? key}) : super(key: key);

  final cedulaController = TextEditingController();
  final nombreController = TextEditingController();
  final apellidoController = TextEditingController();
  final telefonoController = TextEditingController();
  final correoController = TextEditingController();

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
              /*Container(
                margin: const EdgeInsets.only(bottom: 20),
                child: Image.asset(
                  //poner el logo de la empresa
                  'assets/image/login_bottom.png',
                  width: 150,
                  height: 150,
                ),
              ),*/
              //poner continuacion del codigo
              Padding(
                padding: const EdgeInsets.all(10.0),
                  child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                     Text(
                        'Registro',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue[900],
                        ),
                      ),
                      const SizedBox(height: 10),
                      TextField(
                        controller: cedulaController,
                        decoration: InputDecoration(
                          border: const OutlineInputBorder(),
                          labelText: Utils.cedula,
                        ),
                      ),
                    ],
                  ),
                ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  controller: nombreController,
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    labelText: Utils.nombre,
                  ),
                ),
              ),
              
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  controller: apellidoController,
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    labelText: Utils.apellido,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  controller: telefonoController,
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    labelText: Utils.telefono,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  controller: correoController,
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    labelText: Utils.correo,
                  ),
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    // Acción del botón de Inicio de sesion
                  },
                  child: const Text('Registro Usuario'),
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