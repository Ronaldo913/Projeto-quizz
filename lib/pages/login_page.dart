import '../pages/screens/second_splash.dart';
import 'package:flutter/material.dart';
import '../data/bdUsuarios.dart';
import '../../domain/usuario.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  final _userController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: const Color(0xFF033E8C),
          body: Padding(
            padding: const EdgeInsets.all(16),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Image.asset(
                    "images/login.png",
                    width: 200,
                    height: 200,
                    fit: BoxFit.fitHeight,
                  ),
                  const SizedBox(height: 32),
                  Container(
                    padding: EdgeInsets.all(16),
                    color: const Color(0xff99c6ff),
                    // decoration: BoxDecoration(
                    //   borderRadius: BorderRadius.all(12.0),
                    // ),
                    child: Form(
                      key: _formKey,
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Text(
                              'Por favor, insira seu nome no campo abaixo.',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 35,
                                fontWeight: FontWeight.bold,
                                color: const Color(0xFF033E8C),
                              ),
                            ),
                            const SizedBox(height: 32),
                            TextFormField(
                              keyboardType: TextInputType.text,
                              controller: _userController,
                              autovalidateMode: AutovalidateMode.onUserInteraction,
                              validator: (String? value) {
                                if (value == null || value.isEmpty) {
                                  return 'Campo nome obrigatório';
                                }
                                return null;
                              },
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Insira seu nome aqui...',
                              ),
                              cursorColor: const Color(0xff99c6ff),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 32),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                    ),
                    onPressed: onPressedLogin,
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 130.0),
                      child: Text(
                        'ENTRAR',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF033E8C),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }

  onPressedLogin() {
    if (_formKey.currentState!.validate()) {
      List<Usuario> listaUsuario = BD.lista;
      String user = _userController.text;

      bool auth = false;

      for (Usuario usuario in listaUsuario) {
        if (usuario.usuario == user) {
          auth = true;
        }
      }

      if (auth) {
        // Push para pag de login
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) {
              return const SecondSplash();
            },
          ),
        );
      } else {
        // Mostrar a mensagem de erro
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text("Usuario incorreto!"),
          ),
        );
      }
    }
  }
}
