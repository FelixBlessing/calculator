class Logic{

  String calculate(number1, number2, operator){
    double ergebnis = 0;
    double a = double.parse(number1);
    double b = double.parse(number2);

    switch(operator){
      case "+":
        ergebnis = a+b;
        return ergebnis.toString();
      
      case "-":
        ergebnis = a-b;
        return ergebnis.toString();
      
      case "x":
        ergebnis = a*b;
        return ergebnis.toString();
      
      case "/":
        ergebnis = a/b;
        return ergebnis.toString();
      
      default:
        return ergebnis.toString();
    }
  }


}