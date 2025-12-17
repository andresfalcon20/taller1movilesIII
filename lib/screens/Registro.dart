import 'package:app_taller/main.dart';
import 'package:flutter/material.dart';

class PantallaRegistro extends StatelessWidget {
  final TextEditingController userCtrl = TextEditingController();
  final TextEditingController emailCtrl = TextEditingController();
  final TextEditingController passCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Crear Nueva Cuenta")),
      body: formularioRegistro(context, userCtrl, emailCtrl, passCtrl),
    );
  }
}

Widget formularioRegistro(context, userCtrl, emailCtrl, passCtrl) {
  return Container(
    padding: EdgeInsets.all(30),
    decoration: BoxDecoration(color: Colors.indigo.shade50),
    child: SingleChildScrollView(
      child: Column(
        children: [
          Icon(Icons.app_registration, size: 80, color: Colors.indigo),
          SizedBox(height: 20),
          Text("Completa tus datos", style: TextStyle(fontSize: 20, color: Colors.indigo)),
          SizedBox(height: 30),
          TextField(
            controller: userCtrl,
            decoration: InputDecoration(labelText: "Nombre de Usuario", border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)), filled: true, fillColor: Colors.white),
          ),
          SizedBox(height: 15),
          TextField(
            controller: emailCtrl,
            decoration: InputDecoration(labelText: "Correo Electrónico", border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)), filled: true, fillColor: Colors.white),
          ),
          SizedBox(height: 15),
          TextField(
            controller: passCtrl,
            obscureText: true,
            decoration: InputDecoration(labelText: "Contraseña", border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)), filled: true, fillColor: Colors.white),
          ),
          SizedBox(height: 30),
          ElevatedButton(
            onPressed: () {
              // GUARDAR EN BASE LOCAL
              usuariosRegistrados.add({
                "nombre": userCtrl.text,
                "email": emailCtrl.text,
                "pass": passCtrl.text
              });
              Navigator.pop(context); // Regresa al login
            },
            style: ElevatedButton.styleFrom(backgroundColor: Colors.white, foregroundColor: Colors.indigo),
            child: Text("GUARDAR REGISTRO"),
          )
        ],
      ),
    ),
  );
}