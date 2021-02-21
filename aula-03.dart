void main() {

  // Comparadores
  // ----------------
  // >  maior
  // >= maior igual
  // <  menor 
  // <= menor igual
  // == igual
  // != diferente

  double num1 = 15.0;
  bool testComp = ( 10 > num1 );
  print("Compação: $testComp");


  // Operador OR
  // --------------
  // true or true = true
  // true or false = true
  // false or true = true
  // false or false = false


  bool testeOr = (true || false);
  print("OR:  $testeOr");

  // Operador AND
  // --------------------
  // true and true = true
  // true and false = false
  // false and true = false
  // false and false = false

  bool testeAnd = (false && true);
  print("AND: $testeAnd");

  bool complexa = (10 > 20) && ((30 < 20) || testeAnd);
  print(complexa);

  print(!true);
}