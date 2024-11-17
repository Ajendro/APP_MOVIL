import 'package:flutter/material.dart';

// Pantalla principal (HomePage)
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF910049),
        title: Center(
          child: Text(
            'Pantalla 1',
            textAlign: TextAlign.center,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Información estática
            StatelessInfo(),

            // Separador visual
            SizedBox(height: 20),

            // Widget interactivo (contador)
            StatefulCounter(),

            // Separador visual
            SizedBox(height: 40),

            // Botón para navegar a la segunda pantalla
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF910049),
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/second'); // Usa la ruta para navegar
              },
              child: Text(
                'Ir a la Pantalla 2',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Stateless Widget: Información estática
class StatelessInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      color: Color(0xFFE0E0E0),
      child: Column(
        children: [
          Text(
            'Este es un Widget Stateless.',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            'Este widget muestra información estática que no cambia.',
            style: TextStyle(fontSize: 18),
          ),
        ],
      ),
    );
  }
}

// Stateful Widget: Contador interactivo
class StatefulCounter extends StatefulWidget {
  @override
  _StatefulCounterState createState() => _StatefulCounterState();
}

class _StatefulCounterState extends State<StatefulCounter> {
  int _counter = 0; // Estado mutable

  // Incrementa el contador
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      color: Color(0xFF910049),
      child: Column(
        children: <Widget>[
          Text(
            'Contador (Stateful Widget)',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          SizedBox(height: 10),
          Text(
            'Contador: $_counter',
            style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: _incrementCounter, // Llama a la función para incrementar
            child: Text('Incrementar Contador'),
          ),
        ],
      ),
    );
  }
}
