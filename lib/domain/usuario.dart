class Usuario {
  late String usuario;

  Usuario({
    required this.usuario,
  });

  Usuario.fromJson(Map<String, dynamic> json) {
    usuario = json['usuario'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['usuario'] = usuario;

    return data;
  }
}
