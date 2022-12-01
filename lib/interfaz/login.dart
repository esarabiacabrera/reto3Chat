import 'package:firebase/proceso/autenticacion.dart';
import 'package:flutter/material.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

final email = TextEditingController();
final password = TextEditingController();

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Image(
                image: NetworkImage(
                    "https://images.vexels.com/media/users/3/135148/isolated/preview/da10190af5af2fd3278b4e9f5e8e5935-mensaje-letrero-plano-con-fondo-redondo.png")),
            TextField(
              controller: email,
              decoration: InputDecoration(
                  hintText: "Email", suffixIcon: Icon(Icons.email)),
            ),
            TextField(
              obscureText: true,
              controller: password,
              decoration: InputDecoration(
                  hintText: "Password", suffixIcon: Icon(Icons.key)),
            ),
            Divider(),
            ElevatedButton.icon(
                onPressed: () {
                  Autenticacion().IniciarSesion(
                      email: email.text, password: password.text);
                },
                icon: Icon(Icons.start),
                label: Text("Iniciar sesion")),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton.icon(
                  onPressed: () {
                    Autenticacion().CrearUsuario(
                        email: email.text, password: password.text);
                  },
                  icon: Icon(Icons.app_registration_rounded),
                  label: Text("Regisrar usuario")),
            )
          ],
        ),
      ),
    );
  }
}
