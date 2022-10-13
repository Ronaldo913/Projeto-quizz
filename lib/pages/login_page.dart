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
          backgroundColor: const Color(0xFF023059),
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
                    color: const Color(0xFF023059),
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
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(height: 32),

                            TextFormField(
                              style: TextStyle(
                                color: Colors.white,
                              ),
                              keyboardType: TextInputType.text,
                              decoration: const InputDecoration(
                                hintStyle: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "WorkSansLight",
                                  fontSize: 16,
                                ),
                                hintText: "Username",
                                prefixIcon: const Icon(
                                  Icons.person,
                                  color: Colors.white,
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(90.0)),
                                  borderSide: BorderSide(
                                    color: Colors.white,
                                    width: 1.5,
                                  ),
                                ),
                                border: OutlineInputBorder(
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(90.0)),
                                    borderSide: BorderSide(
                                        color: Colors.white, width: 0.5)),
                              ),
                              controller: _userController,
                              validator: (String? value) {
                                if (value == null || value.isEmpty) {
                                  return 'Campo nome obrigatório';
                                }
                                return null;
                              },
                            ),
                            SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 25),
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: ElevatedButton(
                      onPressed: onPressedLogin,
                      child: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 110.0, vertical: 20.0),
                        child: const Text(
                          'ENTRAR',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF023059),
                          ),
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                            BorderRadius.circular(18.0),
                            side:
                            BorderSide(color: Color(0xFF023059))),
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
