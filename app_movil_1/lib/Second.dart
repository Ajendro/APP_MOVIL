import 'package:flutter/material.dart';
class Second extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalles'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              color: Colors.lightBlue,
              height: 200,
              width: 300,
              child: Text("Universidad Internacional del Ecuador REINVENTEMOS EL FUTURO Descubre cuál es el programa académico de tu interés y desafía tus ideales con los programas más innovadores y a la vanguardia de las necesidades del mercado actual.",style: TextStyle(fontSize: 16),),              
            ),
            SizedBox(height: 20),
             Image.network(
              'https://pbs.twimg.com/media/FZXoPMuXkAIejus.jpg', 
              height: 150,
              width: 150,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Volver a inicio'),
            ),
          ],
        ),
      ),
    );
  }
}