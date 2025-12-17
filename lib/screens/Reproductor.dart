
import 'package:flutter/material.dart';

class PantallaReproductor extends StatelessWidget {
  final String titulo;
  const PantallaReproductor({required this.titulo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(title: Text(titulo), backgroundColor: Colors.transparent),
      body: Column(
        children: [
          // Área de Video
          Container(
            height: 250,
            width: double.infinity,
            color: Colors.black,
            child: const Center(child: Icon(Icons.play_circle_fill, size: 100, color: Colors.redAccent)),
          ),
          Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              children: [
                Text(titulo, style: const TextStyle(fontSize: 26, fontWeight: FontWeight.bold)),
                const SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Icon(Icons.replay_10, size: 40, color: Colors.white),
                    Icon(Icons.pause_circle_filled, size: 80, color: Colors.redAccent),
                    Icon(Icons.forward_10, size: 40, color: Colors.white),
                  ],
                ),
                const SizedBox(height: 20),
                Slider(value: 0.3, onChanged: (v) {}, activeColor: Colors.redAccent),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Icon(Icons.volume_up, color: Colors.white70),
                    Icon(Icons.fullscreen, color: Colors.white70),
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