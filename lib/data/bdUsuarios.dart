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
  ];

  static Future<List<Usuario>> getUsuario() async {
    await Future.delayed(const Duration(seconds: 1));
    return lista;
  }
}
