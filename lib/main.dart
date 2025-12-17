import 'package:app_taller/screens/Login.dart';
import 'package:app_taller/screens/Registro.dart';
import 'package:flutter/material.dart';

// --- BASE DE DATOS LOCAL (Global) ---
List<Map<String, String>> usuariosRegistrados = [
  {"email": "admin@gmail.com", "pass": "123", "nombre": "Admin"}
];

List<Map<String, String>> basePeliculasAccion = [
  {
    "titulo": "John Wick 4",
    "desc": "El legendario asesino busca su libertad.",
    "img": "https://m.media-amazon.com/images/I/81FK6-fM63L._AC_UF894,1000_QL80_.jpg"
  },
  {
    "titulo": "Misión Imposible",
    "desc": "Ethan Hunt en una carrera contra el tiempo.",
    "img": "https://m.media-amazon.com/images/I/71YI-DkOqCL._AC_UF894,1000_QL80_.jpg"
  },
  {
    "titulo": "Top Gun: Maverick",
    "desc": "Acción extrema en aviones de combate.",
    "img": "https://m.media-amazon.com/images/I/719f6Xv69XL._AC_UF894,1000_QL80_.jpg"
  },
];

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
            // Tu imagen original
            Image.asset("assets/img/imagen.png", width: 500),

            Text(
              "Bienvenid@ a la mejor aplicacion de peliculas populares, en tendencia y nuevas por llegar",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),

            SizedBox(height: 30),

            FilledButton(
              onPressed: () => irAlLogin(context),
              style: FilledButton.styleFrom(backgroundColor: Colors.indigo),
              child: Text("INICIAR SESIÓN", style: TextStyle(fontSize: 16)),
            ),

            SizedBox(height: 15),
            OutlinedButton(
              onPressed: () => irAlRegistro(context),
              style: OutlinedButton.styleFrom(foregroundColor: Colors.indigo),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 12),
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
  Navigator.push(context, MaterialPageRoute(builder: (context) => PantallaLogin()));
}

void irAlRegistro(context) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => PantallaRegistro()));
}