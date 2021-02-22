class InfosPessoa {
  int idade;
  InfosPessoa(this.idade);
}

void main() {

  Map<int, String> ddds = Map();
  ddds[81] = "Recife";
  ddds[11] = "São Paulo";
  ddds[19] = "Campinas";

  print(ddds);
  print(ddds.keys);
  print(ddds.values); 

  ddds.remove(11);

  Map<String, dynamic> pessoa = Map();
  pessoa["nome"] = "Eraldo";
  pessoa["idade"] = 10;
  pessoa["altura"] = 1.50;

  Map<String, InfosPessoa> pessoas = Map();
  pessoas["joão"] = InfosPessoa(30);
  pessoas["Marcelo"] = InfosPessoa(20);
}