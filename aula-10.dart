class Pessoa {

  String nome;
  int idade;
  double altura;

  void dormir() {
    print("$nome está dormindo!");
  }

  void aniver() {
    idade++;
  }
}

void main() {

  String algumaCoisa = "valor";

  Pessoa pessoa1 = new Pessoa();
  pessoa1.nome = "Eraldo";
  pessoa1.idade = 30;
  pessoa1.altura = 1.73;

  Pessoa pessoa2 = Pessoa();
  pessoa2.nome = "Gabriel";
  pessoa2.idade = 6;
  pessoa2.altura = 1.20;

  print(pessoa1.nome);
  print(pessoa2.nome);

  print(pessoa1.idade);
  pessoa1.aniver();
  print(pessoa1.idade);

  pessoa2.dormir();
}