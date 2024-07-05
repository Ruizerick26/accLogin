import 'package:flutter/material.dart';
import 'secondscreem.dart';


class FirstScreem extends StatelessWidget{

  @override
  Widget build(BuildContext context){

    return Scaffold(
      appBar: AppBar(
        title: Text('primera pantalla')),
      body: Center(
        child: const Formulario(),
      ),
    );
  }
}

class Formulario extends StatefulWidget{
  const Formulario({super.key});

  @override
  State<Formulario> createState() => _Formulario();
}


class _Formulario extends State<Formulario>{
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    super.dispose();
  }

   @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            width: 250,
            child: TextFormField(
              controller: _email,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Correo Electronico',
            ),
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return 'Ingresa tu correo';
              }
              return null;
            },
          ),
          ),
          
          SizedBox(
            width: 250,
            child: TextFormField(
              controller: _password,
            obscureText: true,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Password',

            ),
            validator: (String? value){
              if(value == null || value.isEmpty){
                return 'Ingresa una contraseña';
              }
              return null;
            },
          ),),
          
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: ElevatedButton(
              onPressed: () {
                // Validate will return true if the form is valid, or false if
                // the form is invalid.
                if (_formKey.currentState!.validate()) {

                  String email = _email.text.trim();
                  String password = _password.text.trim();

                  // Process data.
                  if (email == "erick@gmail.com" && password == "hola123") {
                   Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SecondScreen()),
                    );
                }
                }
              },
              child: const Text('Iniciar Sesión'),
            ),
          ),
        ],
      ),
    );
  }
}


