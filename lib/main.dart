import 'package:flutter/material.dart';
import 'screens/Login.dart';
import 'screens/Registro.dart';

// --- LÓGICA GLOBAL (Base de datos local) ---
List<Map<String, String>> usuariosRegistrados = [
  {"email": "admin@gmail.com", "pass": "123", "nombre": "Admin"},
];

List<Map<String, String>> basePeliculasAccion = [
  {
    "titulo": "John Wick 4",
    "desc": "El legendario asesino busca su libertad.",
    "img":
        "https://m.media-amazon.com/images/I/81FK6-fM63L._AC_UF894,1000_QL80_.jpg",
  },
  {
    "titulo": "Misión Imposible",
    "desc": "Ethan Hunt en una carrera contra el tiempo.",
    "img":
        "https://m.media-amazon.com/images/I/71YI-DkOqCL._AC_UF894,1000_QL80_.jpg",
  },
  {
    "titulo": "Top Gun: Maverick",
    "desc": "Acción extrema en aviones de combate.",
    "img":
        "https://m.media-amazon.com/images/I/719f6Xv69XL._AC_UF894,1000_QL80_.jpg",
  },
];

void main() {
  runApp(const AplicacionTaller1());
}

class AplicacionTaller1 extends StatelessWidget {
  const AplicacionTaller1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AJC MOVIES',
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xFF0F0F0F),
        primaryColor: Colors.redAccent,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.redAccent,
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            padding: const EdgeInsets.symmetric(vertical: 15),
          ),
        ),
      ),
      home: const PantallaBienvenida(),
    );
  }
}

class PantallaBienvenida extends StatelessWidget {
  const PantallaBienvenida({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.redAccent.withOpacity(0.2),
                    blurRadius: 20,
                    spreadRadius: 5,
                  ),
                ],
              ),
              child: ClipOval(
                child: Image.asset(
                  "assets/img/image.png",
                  width: 180,
                  height: 180,
                  fit: BoxFit.cover,
                  errorBuilder: (c, e, s) => const Icon(
                    Icons.movie_filter,
                    size: 100,
                    color: Colors.redAccent,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 40),
            const Text(
              "ActionFlix",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.redAccent,
              ),
            ),
            const SizedBox(height: 15),
            const Text(
              "Tu destino para el mejor cine de acción y estrenos exclusivos.",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: Colors.white70),
            ),
            const SizedBox(height: 60),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PantallaLogin()),
                ),
                child: const Text(
                  "INICIAR SESIÓN",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(height: 15),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PantallaRegistro()),
                ),
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(color: Colors.white54),
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text(
                  "REGISTRARSE",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
