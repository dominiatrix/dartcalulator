class classe {
  var number1;
  var number2;
  var answer;

  var op;

  classe(var a, var b, var c, String opa) {
    number1 = a;
    number2 = b;
    answer = c;
    op = opa;
  }

  get getNum1 => number1;

  set setNum1(number1) => this.number1 = number1;

  get getNum2 => number2;

  set setNum2(number2) => this.number2 = number2;

  get getanswer => answer;

  set setanswer(answer) => this.answer = answer;

  get getop => op;

  set setop(op) => this.op = op;
}
