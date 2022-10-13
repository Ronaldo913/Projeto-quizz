import '../../domain/usuario.dart';

class BD {
  static final List<Usuario> lista = [
    Usuario(
      usuario: 'Tarsis',
    ),
    Usuario(
      usuario: 'tarsis',
    ),
    Usuario(
      usuario: 'TARSIS',
    ),
    Usuario(
      usuario: 'Tarsis Marinho',
    ),
    Usuario(
        usuario: 'TARSIS MARINHO',
    ),
    Usuario(
      usuario: 'Tarsis Marinho de Souza',
    ),
    Usuario(
        usuario: 'TARSIS MARINHO DE SOUZA',
    ),
  ];

  static Future<List<Usuario>> getUsuario() async {
    await Future.delayed(const Duration(seconds: 1));
    return lista;
  }
}
