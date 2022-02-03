import 'classe.dart';
import 'dart:io';

void main(List<String> arguments) {
  dynamic r;

  String rep = '0';
  classe cal = classe(0, 0, 0, "");
  print('Bienvenue dans la calculatrice Dart !');
  do {
    print(" Veuillez entrer le premier nombre : ");
    cal.number1 = stdin.readLineSync();

    print("Veuillez entrer le second nombre  : ");
    cal.number2 = stdin.readLineSync();

    do {
      print("Entrez le signe de l'opération a effectuer  (+ | / | - | x ) ");
      cal.op = stdin.readLineSync()!;
    } while (cal.op != '+' && cal.op != '/' && cal.op != 'x' && cal.op != '-');

    switch (cal.op) {
      case "+":
        r = int.parse(cal.number1) + int.parse(cal.number2);
        cal.answer = r;
        print('Le résultat de votre operation est $r');

        break;
      case "-":
        r = int.parse(cal.number1) - int.parse(cal.number2);
        cal.answer = r;
        print('Le résultat de votre operation est $r');
        break;
      case "x":
        r = int.parse(cal.number1) * int.parse(cal.number2);
        cal.answer = r;
        print('Le résultat de votre opération est $r');
        break;
      case "/":
        r = int.parse(cal.number1) / int.parse(cal.number2);
        cal.answer = r;
        print('Le résultat de votre opération est $r');
        break;

      default:
    }
    print('Voulez-vous continuer ? Tapez 1 pour oui et 0 pour non ');
    rep = stdin.readLineSync()!;
  } while (rep == '1');
}
