import 'package:meu_app/meu_app.dart' as meu_app;

void main(List<String> arguments) {
  // print('Hello world - ${meu_app.calculate()}!');

  var varTrue = true;
  bool varFalse = false;

  print(varFalse);
  print(varTrue);

  var string = "StringQualquer";
  String string2 = 'b';

  print(string);
  print(string2);

  List<String> nomes = ["Joao", "Maria"];
  print(nomes);

  nomes.add("Robertinho");
  print(nomes);

  List listaDinamica = [];
  listaDinamica.add("Valor");
  listaDinamica.add(2);
  listaDinamica.add(2.5);
  print(listaDinamica);
  print(listaDinamica.isEmpty);

  Map<String, dynamic> map1 = {'nome': 'João', 'idade': 23};
  print(map1);
}
