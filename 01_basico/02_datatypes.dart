main() {
  // Para crear variables podemos usar var y dynamic, sin embargo lo recomendable es indicar el tipado específico
  // ===== Números
  int a = 10;
  double b = 5.5;
  int? c; // Significa que puede ser nulo
  int _a = 30;
  double $b = 40;
  double resultado = _a + $b;

  // ===== String
  String nombre = "Tony";
  String nombre2 = 'Tony';
  String nombre3 = 'O\'Connor';
  String nombre4 = "O'Connor";
  String apellido = "Stark";

  String nombreCompleto = "$nombre $apellido";

  String multilinea = """
  Hola Mundo
  ¿Cómo estás?
  $nombreCompleto
  O'Connor""";

  // ===== Booleans
  bool isActive = true;
  bool isNotActive = !isActive;

  // Con el ! al final le indicamos a Dart que nunca estará nulo el valor, por lo que null-safety no afectaría
  // print(isActive!);

  // ===== Lists
  // List<String> villanosDeprecated = new List();
  List<String> villanos = ["Lex", "Red Skull", "Doom"];

  villanos[0] = "Superman";

  // Al ser una lista sí se agrega varias veces el mismo elemento
  villanos.add("Duende Verde");
  villanos.add("Duende Verde");
  villanos.add("Duende Verde");
  villanos.add("Duende Verde");

  // Al pasar una lista a un set, y luego volverla a parsear como lista se eliminan los elementos repetidos
  Set<String> villanosSet = villanos.toSet();
  List<String> villanosList = villanosSet.toList();

  // ===== Sets
  Set<String> villanos2 = {"Lex", "Red Skull", "Doom"};

  // Al ser un Set no se agrega el mismo elemento múltiples veces
  villanos2.add("Duende Verde");
  villanos2.add("Duende Verde");
  villanos2.add("Duende Verde");
  villanos2.add("Duende Verde");

  // ===== Maps
  Map<String, dynamic> ironman = {
    "nombre": "Tony Stark",
    "poder": "Inteligencia y el dinero",
    "nivel": 9000
  };

  Map<String, dynamic> capitan = new Map();

  capitan.addAll(
      {"nombre": "Steve", "poder": "Soportar droga sin morir", "nivel": 5000});

  capitan.addAll(ironman);

  // Map<int, dynamic> ironman = {
  //   1: "Tony Stark",
  //   2: "Inteligencia y el dinero",
  //   3: 9000
  // };

  print(ironman["nivel"]);
}
