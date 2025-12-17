import 'package:app_taller/main.dart';
import 'package:app_taller/screens/Reproductor.dart';
import 'package:flutter/material.dart';

class PantallaCatalogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Catálogo de Acción"), backgroundColor: Colors.indigo, foregroundColor: Colors.white),
      body: ListView.builder(
        itemCount: basePeliculasAccion.length,
        itemBuilder: (context, index) {
          final peli = basePeliculasAccion[index];
          return Card(
            margin: EdgeInsets.all(10),
            child: ListTile(
              leading: Image.network(peli['img']!, width: 50),
              title: Text(peli['titulo']!),
              subtitle: Text(peli['desc']!),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => PantallaReproductor(titulo: peli['titulo']!)));
              },
            ),
          );
        },
      ),
    );
  }
}