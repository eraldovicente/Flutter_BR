void main() {
  
  double nota = 10.0;

  if (nota < 5.0) {
    print("Exame! ;(");
  } else if (nota == 10.0) {
    print("Sucesso total!");
  } else {
    print("Sucesso! :O");
  }

  bool aprovado = true;
  String info;

  // if (aprovado) {
  //   info = "Aprovado!!!";
  // } else {
  //   info = "Reprovado..."; 
  // }

  info = aprovado ? "Aprovado!!!" : "Reprovado...";
  print(info);

  String nome;
  String info2 = nome ?? "Não informado";

  print(info2);

  print("Fim!");
}