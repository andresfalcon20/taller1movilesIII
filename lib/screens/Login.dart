import 'package:flutter/material.dart';

class PantallaLogin extends StatelessWidget {
  const PantallaLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Ingresar a tu cuenta")),
      body: formularioLogin(), // Llamada a la función widget
    );
  }
}

Widget formularioLogin() {
  return Container(
    padding: EdgeInsets.all(30),
    decoration: BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [Colors.white, Colors.indigo.shade50]
      )
    ),
    child: Column(
      children: [
        Text("¡Hola de nuevo!", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
        SizedBox(height: 30),

        // Campo Correo
        TextField(
          decoration: InputDecoration(
            labelText: "Correo Electrónico",
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
            prefixIcon: Icon(Icons.email_outlined),
            filled: true,
            fillColor: Colors.white
          ),
        ),
        SizedBox(height: 20),

        TextField(
          obscureText: true, // Propiedad para ocultar texto
          decoration: InputDecoration(
            labelText: "Contraseña",
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
            prefixIcon: Icon(Icons.lock_outline),
            filled: true,
            fillColor: Colors.white
          ),
        ),
        SizedBox(height: 30),

        FilledButton(
          onPressed: () {}, 
          style: FilledButton.styleFrom(backgroundColor: Colors.indigo),
          child: Text("ENTRAR")
        )
      ],
    ),
  );
}