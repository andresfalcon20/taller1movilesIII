import 'package:flutter/material.dart';
import '../main.dart';

class PantallaRegistro extends StatelessWidget {
  final TextEditingController userCtrl = TextEditingController();
  final TextEditingController emailCtrl = TextEditingController();
  final TextEditingController passCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent, title: const Text("Registro")),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            const Icon(Icons.person_add_alt_1_rounded, size: 80, color: Colors.redAccent),
            const SizedBox(height: 20),
            const Text("Crea tu nueva cuenta", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            const SizedBox(height: 30),
            TextField(
              controller: userCtrl,
              decoration: const InputDecoration(labelText: "Nombre Completo", filled: true, fillColor: Color(0xFF1E1E1E)),
            ),
            const SizedBox(height: 15),
            TextField(
              controller: emailCtrl,
              decoration: const InputDecoration(labelText: "Correo Electrónico", filled: true, fillColor: Color(0xFF1E1E1E)),
            ),
            const SizedBox(height: 15),
            TextField(
              controller: passCtrl,
              obscureText: true,
              decoration: const InputDecoration(labelText: "Contraseña", filled: true, fillColor: Color(0xFF1E1E1E)),
            ),
            const SizedBox(height: 40),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // LÓGICA DE GUARDADO QUE YA CONOCES
                  usuariosRegistrados.add({
                    "nombre": userCtrl.text,
                    "email": emailCtrl.text,
                    "pass": passCtrl.text
                  });
                  Navigator.pop(context); // Regresa al login
                },
                child: const Text("GUARDAR REGISTRO"),
              ),
            )
          ],
        ),
      ),
    );
  }
}