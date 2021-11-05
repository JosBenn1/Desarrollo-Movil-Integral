import 'package:flutter/material.dart';
import 'package:segunda_oportunidad/widgets/widgets.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AuthBackground(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 250,),
              CardContainer(
                child: Column(
                  children: [
                    SizedBox(height: 10,),
                    Text('Iniciar sesion', style: Theme.of(context).textTheme.headline4,),
                    SizedBox(height: 30,),
                    _LoginForm(),
                  ],
                ),
              ),
              SizedBox(height: 50,),
              Text('Crear una nueva cuenta', style: TextStyle(fontSize: 30),)
            ],
          ),
        )
      ),
    );
  }
}

class _LoginForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Form(
        child: Column(
          children: [
            TextFormField(
              autocorrect: false,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.purple,
                  ),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.deepPurple,
                    width: 2
                  ),
                ),
                hintText: 'ejemplo@ejemplo.com',
                labelText: 'Correo elecronico',
                labelStyle: TextStyle(
                  color: Colors.green,
                ),
                prefixIcon: Icon(Icons.alternate_email_sharp, color: Colors.deepPurple)
              ),
            )
          ],
        ),
      ),
    );
  }
}

