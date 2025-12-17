
import 'package:flutter/material.dart';

class PantallaReproductor extends StatelessWidget {
  final String titulo;
  const PantallaReproductor({required this.titulo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(titulo),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          // SIMULACIÓN DE VIDEO
          Container(
            height: 250,
            width: double.infinity,
            color: Colors.grey.shade900,
            child: Icon(Icons.play_arrow, size: 80, color: Colors.white),
          ),
          Padding(
            padding: EdgeInsets.all(30),
            child: Column(
              children: [
                Text(
                  titulo,
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                SizedBox(height: 30),
                // CONTROLES PEDIDOS
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.replay_10, color: Colors.white, size: 40),
                    Icon(Icons.pause, color: Colors.white, size: 60),
                    Icon(Icons.forward_10, color: Colors.white, size: 40),
                  ],
                ),
                Slider(value: 0.5, onChanged: (v) {}, activeColor: Colors.red),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.volume_up, color: Colors.white),
                    Icon(Icons.fullscreen, color: Colors.white),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
