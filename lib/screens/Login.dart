import 'package:app_taller/main.dart';
import 'package:app_taller/screens/Catalogo.dart';
import 'package:flutter/material.dart';

class PantallaLogin extends StatelessWidget {
  // Controladores para leer lo que escribes
  final TextEditingController correoCtrl = TextEditingController();
  final TextEditingController passCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("INGRESA A TU CUENTA")),
      body: formularioLogin(context, correoCtrl, passCtrl), 
    );
  }
}

Widget formularioLogin(context, correoCtrl, passCtrl) {
  return Container(
    padding: EdgeInsets.all(30),
    decoration: BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [Colors.white, Colors.indigo.shade50],
      ),
    ),
    child: Column(
      children: [
        Text("INICIA SESIÓN", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
        SizedBox(height: 30),
        TextField(
          controller: correoCtrl,
          decoration: InputDecoration(labelText: "Correo Electrónico", prefixIcon: Icon(Icons.email_outlined), fillColor: Colors.white, filled: true),
        ),
        SizedBox(height: 20),
        TextField(
          controller: passCtrl,
          obscureText: true,
          decoration: InputDecoration(labelText: "Contraseña", prefixIcon: Icon(Icons.lock_outline), fillColor: Colors.white, filled: true),
        ),
        SizedBox(height: 30),
        FilledButton(
          onPressed: () {
            // LÓGICA DE LOGIN
            bool encontrado = false;
            for (var u in usuariosRegistrados) {
              if (u['email'] == correoCtrl.text && u['pass'] == passCtrl.text) {
                encontrado = true;
              }
            }

            if (encontrado) {
              Navigator.push(context, MaterialPageRoute(builder: (context) => PantallaCatalogo()));
            } else {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Usuario no encontrado")));
            }
          },
          style: FilledButton.styleFrom(backgroundColor: Colors.indigo),
          child: Text("ENTRAR"),
        ),
      ],
    ),
  );
}