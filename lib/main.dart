
import 'package:flutter/material.dart';

void main() => runApp(AppBarberia());

class AppBarberia extends StatelessWidget {
  const AppBarberia({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Ingresos(),
    );
  }
} //Fin aplicacion finazas

class Ingresos extends StatelessWidget {
  const Ingresos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // --- TU APPBAR ORIGINAL (NO MODIFICADO) ---
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 14, 177, 136), // Fondo negro
        centerTitle: true,
        title: const Text(
          'Barbas locas peluca Boeta Garcia Moises 6J',
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        ),
        leading: IconButton(
          icon: const Icon(Icons.camera_alt,
              color: Color.fromARGB(255, 36, 18, 202)),
          onPressed: () {
            // Acción de la cámara
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.favorite,
                color: Color.fromARGB(255, 37, 13, 173)),
            onPressed: () {
              // Acción de like
            },
          ),
          IconButton(
            icon: const Icon(Icons.edit,
                color: Color.fromARGB(255, 206, 15, 15)),
            onPressed: () {
              // Acción de editar
            },
          ),
        ],
      ),
     
      // --- AQUI INSERTE EL BODY QUE PEDISTE ---
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            // Tarjeta 1
            _crearTarjeta(
              titulo: "LOLA PELUSA",
              subtitulo: "MOHAK",
              urlImagen: "https://raw.githubusercontent.com/MOSESBOETAGARCIA/act7_boetagarcia/main/vintage-barbershop-logo-design-template-free-vector.jpg",
            ),
            const SizedBox(height: 16), // Espacio entre tarjetas

            // Tarjeta 2
            _crearTarjeta(
              titulo: "SANTAPA",
              subtitulo: "LOWFADES SUPER EXCELENTES",
              urlImagen: "https://raw.githubusercontent.com/MOSESBOETAGARCIA/act7_boetagarcia/main/vintage-barbershop-logo-design-template-free-vector.jpg",
            ),
            const SizedBox(height: 16),

            // Tarjeta 3
            _crearTarjeta(
              titulo: "FLORECETA",
              subtitulo: "TAPERS BUENOS",
              urlImagen: "https://raw.githubusercontent.com/MOSESBOETAGARCIA/act7_boetagarcia/main/barbershop-logo-barber-pole-razor-600nw-2535695609.webp",
            ),
          ],
        ),
      ),
    );
  }

  // --- FUNCION AUXILIAR NECESARIA PARA CREAR LAS TARJETAS ---
  Widget _crearTarjeta({
    required String titulo,
    required String subtitulo,
    required String urlImagen,
  }) {
    return Card(
      elevation: 5,
      color: const Color(0xFF6A1B9A), // Fondo morado
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: ListTile(
          leading: CircleAvatar(
            radius: 25,
            backgroundImage: NetworkImage(urlImagen),
            backgroundColor: Colors.white24,
          ),
          title: Text(
            titulo,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          subtitle: Text(
            subtitulo,
            style: const TextStyle(
              color: Colors.white70,
            ),
          ),
          trailing: IconButton(
            icon: const Icon(Icons.favorite_border, color: Colors.white),
            onPressed: () {},
          ),
        ),
      ),
    );
  }
} //Fin clase ingresos
