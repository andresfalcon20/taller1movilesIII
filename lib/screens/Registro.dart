
import 'package:flutter/material.dart';

class PantallaRegistro extends StatelessWidget {
  const PantallaRegistro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Crear Nueva Cuenta")),
      body: formularioRegistro(),
    );
  }
}

Widget formularioRegistro() {
  return Container(
    padding: EdgeInsets.all(30),
    decoration: BoxDecoration(
       color: Colors.indigo.shade50 // Fondo plano suave
    ),
    child: SingleChildScrollView( // Permite scroll si la pantalla es chica
      child: Column(
        children: [
          Icon(Icons.app_registration, size: 80, color: Colors.indigo),
          SizedBox(height: 20),
          Text("Completa tus datos", style: TextStyle(fontSize: 20, color: Colors.indigo)),
          SizedBox(height: 30),
      
          TextField(
            decoration: InputDecoration(
              labelText: "Nombre de Usuario",
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
              prefixIcon: Icon(Icons.person),
              filled: true,
              fillColor: Colors.white
            ),
          ),
          SizedBox(height: 15),
      
          TextField(
            decoration: InputDecoration(
              labelText: "Correo Electrónico",
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
              prefixIcon: Icon(Icons.email),
              filled: true,
              fillColor: Colors.white
            ),
          ),
          SizedBox(height: 15),
      
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              labelText: "Contraseña",
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
              prefixIcon: Icon(Icons.vpn_key),
              filled: true,
              fillColor: Colors.white
            ),
          ),
          SizedBox(height: 30),
      
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              foregroundColor: Colors.indigo
            ),
            child: Text("GUARDAR REGISTRO")
          )
        ],
      ),
    ),
  );
}