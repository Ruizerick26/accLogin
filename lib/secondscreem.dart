import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text('Segunda Pantalla'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Bienvenido"),
            SizedBox(height: 20),
            ElevatedButton(onPressed:(){
              Navigator.pop(context);
            }, 
            child: Text('volver a la primera pantalla'))
          ],
        ),
      ),
    );
  }
}