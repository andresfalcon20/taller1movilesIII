import 'package:flutter/material.dart';
import '../main.dart';
import 'Catalogo.dart';

class PantallaLogin extends StatelessWidget {
  final TextEditingController correoCtrl = TextEditingController();
  final TextEditingController passCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent, elevation: 0),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Bienvenido", style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.redAccent)),
            const Text("Ingresa tus credenciales", style: TextStyle(color: Colors.white54)),
            const SizedBox(height: 40),
            TextField(
              controller: correoCtrl,
              decoration: const InputDecoration(
                labelText: "Correo Electrónico",
                filled: true,
                fillColor: Color(0xFF1E1E1E),
                prefixIcon: Icon(Icons.email_outlined, color: Colors.redAccent),
                border: OutlineInputBorder(borderSide: BorderSide.none),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: passCtrl,
              obscureText: true,
              decoration: const InputDecoration(
                labelText: "Contraseña",
                filled: true,
                fillColor: Color(0xFF1E1E1E),
                prefixIcon: Icon(Icons.lock_outline, color: Colors.redAccent),
                border: OutlineInputBorder(borderSide: BorderSide.none),
              ),
            ),
            const SizedBox(height: 30),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // LÓGICA QUE CONOCES
                  bool encontrado = false;
                  for (var u in usuariosRegistrados) {
                    if (u['email'] == correoCtrl.text && u['pass'] == passCtrl.text) {
                      encontrado = true;
                    }
                  }

                  if (encontrado) {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => PantallaCatalogo()));
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("Usuario o contraseña incorrectos"), backgroundColor: Colors.red),
                    );
                  }
                },
                child: const Text("ENTRAR"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}