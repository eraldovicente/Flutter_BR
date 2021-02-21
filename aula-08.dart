void main() {

  // criarBotao("BotaoSair", cor: "Preto", largura: 15.0);
  criarBotao("BotaoSair", botaoCriado, cor: "Cinza");

  criarBotao("BotaoCamera", () {
    print("Botao criado por func anonima");
  });
}

void botaoCriado() {
  print("Botão criado!!!");
}

void criarBotao(String texto, Function criadoFunc, {String cor, double largura}) {
  print(texto);
  print(cor ?? "Preta");
  print(largura ?? 10.0);
  criadoFunc();
}