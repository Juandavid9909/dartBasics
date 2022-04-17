main() {
  var a = 10;
  final double b = 10;
  const double c = 10;

  late final double z;

  // Late te permitirá iniciarla después
  z = 20;

  print(z);

  // a = 20;
  // No se pueden cambiar
  // b = 20;
  // c = 20;

  // final personasFinal = ["Juan", "Pedro", "Fernando"];
  // const personasConst = ["Juan", "Pedro", "Fernando"];

  final List<String> personasFinal = ["Juan", "Pedro", "Fernando"];
  // const List<String> personasConst = ["Juan", "Pedro", "Fernando"];
  List<String> personasConst = const ["Juan", "Pedro", "Fernando"];

  personasFinal.add("Maria");
  // personasConst.add("Maria");

  print(personasConst);
}
