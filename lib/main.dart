import 'package:app_taller/screens/Login.dart';
import 'package:app_taller/screens/Registro.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(AplicacionTaller1());
}

class AplicacionTaller1 extends StatelessWidget {
  const AplicacionTaller1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PantallaBienvenida(),
    );
  }
}

class PantallaBienvenida extends StatelessWidget {
  const PantallaBienvenida({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bienvenido "),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/img/imagen.png", width: 500),

            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                "Bienvenid@ a la mejor aplicacion de peliculas populares, en tendencia y nuevas por llegar",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
            ),
            SizedBox(height: 30),

            FilledButton(
              onPressed: () => irAlLogin(context),
              style: FilledButton.styleFrom(backgroundColor: Colors.indigo),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 12,
                ),
                child: Text("INICIAR SESIÓN", style: TextStyle(fontSize: 16)),
              ),
            ),
            SizedBox(height: 15),
            OutlinedButton(
              onPressed: () => irAlRegistro(context),
              style: OutlinedButton.styleFrom(foregroundColor: Colors.indigo),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 40,
                  vertical: 12,
                ),
                child: Text("REGISTRARSE", style: TextStyle(fontSize: 16)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void irAlLogin(context) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => PantallaLogin()),
  );
}

void irAlRegistro(context) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => PantallaRegistro()),
  );
}
