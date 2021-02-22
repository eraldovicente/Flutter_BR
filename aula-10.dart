class Pessoa {

  String nome;
  int idade;
  double altura;

  // Pessoa(String nome, int idade, double altura) {
  //   this.nome = nome;
  //   this.idade = idade;
  //   this.altura = altura;
  // }

  Pessoa(this.nome, this.idade, this.altura);

  Pessoa.nascer(this.nome, this.altura) {
    idade = 0;
    print("$nome nasceu!");
    dormir();
  }

  void dormir() {
    print("$nome está dormindo!");
  }

  void aniver() {
    idade++;
  }
}

void main() {

  String algumaCoisa = "valor";

  // Pessoa pessoa1 = new Pessoa();
  // pessoa1.nome = "Eraldo";
  // pessoa1.idade = 30;
  // pessoa1.altura = 1.73;

  // Pessoa pessoa2 = Pessoa();
  // pessoa2.nome = "Gabriel";
  // pessoa2.idade = 6;
  // pessoa2.altura = 1.20;

  Pessoa pessoa1 = new Pessoa("Eraldo", 30, 1.73);

  Pessoa pessoa2 = Pessoa("Gabriel", 6, 1.20);

  print(pessoa1.nome);
  print(pessoa2.nome);

  print(pessoa1.idade);
  pessoa1.aniver();
  print(pessoa1.idade);

  pessoa2.dormir();

  Pessoa nene = Pessoa.nascer("Enzo", 0.30);
  print(nene.nome);
  print(nene.idade);
}