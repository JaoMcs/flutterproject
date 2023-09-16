import 'package:meu_app/meu_app.dart' as meu_app;
import 'dart:io';

void main(List<String> arguments) {
  String nome;
  double peso;
  double altura;

  print("Informe os dados de pessoa:");

  print("Qual a seu nome?");
  String? nomeInput = stdin.readLineSync();
  nome = ifLetDados(nomeInput).toString();

  print("Qual a sua peso?");
  String? pesoImput = stdin.readLineSync();
  peso = double.parse(ifLetDados(pesoImput));

  print("Qual a sua altura?");
  String? alturaInput = stdin.readLineSync();
  altura = double.parse(ifLetDados(alturaInput));

  var pessoa = Pessoa(nome, peso, altura);
  calculaIMC(pessoa);
}

void calculaIMC(Pessoa pessoa) {
  print("Calculando o IMC da pessoa: ");
  print(pessoa.nome);
  var altura = pessoa.altura * pessoa.altura;
  var valor = pessoa.peso / altura;

  var IMC = valorToIMC(valor);
  print(valor);
  print(IMC);
}

dynamic ifLetDados(dynamic isData) {
  if (isData != null) {
    return isData;
  } else {
    print("Dado invalido");
  }
}

class Pessoa {
  String nome;
  double peso;
  double altura;

  Pessoa(this.nome, this.peso, this.altura);
}

enum IMC {
  magrezaGrave,
  magrezaModerada,
  magrezaLeve,
  saudavel,
  sobrepeso,
  obesidade1,
  obesidade2,
  obesidade3
}

IMC valorToIMC(double valor) {
  if (valor < 16) {
    return IMC.magrezaGrave;
  } else if ((valor >= 16) && (valor < 17)) {
    return IMC.magrezaModerada;
  } else if ((valor >= 17) && (valor < 18.5)) {
    return IMC.magrezaLeve;
  } else if ((valor >= 18.5) && (valor < 25)) {
    return IMC.saudavel;
  } else if ((valor >= 25) && (valor < 30)) {
    return IMC.sobrepeso;
  } else if ((valor >= 30) && (valor < 35)) {
    return IMC.obesidade1;
  } else if ((valor >= 35) && (valor < 45)) {
    return IMC.obesidade2;
  } else {
    return IMC.obesidade3;
  }
}

void testFunc() {
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
