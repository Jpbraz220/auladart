void main(List<String> arguments) {
//Aula 1 -----------------------------------------------------------------------

  int idade = 31;
  double altura = 1.71;
  bool geek = true;
  String nome = "João Pedro Braz";
  String geekness = '';
  if (geek == false) {
    geekness = ' não';
  }

//  print('''
// O nome dele é: $nome \n A idade dele é: $idade anos \n A altura dele é: $altura metros \n Ele$geekness se considera geek''');

//  List<String> listaAleatoria = ['gato', 'vermelho', 'canela', 'cama'];
//  print(listaAleatoria);

  List<dynamic> frase = [nome, idade, altura, geekness];

  print('''
 O nome dele é: ${frase[0]} \n A idade dele é: ${frase[1]} anos \n A altura dele é: ${frase[2]} metros \n Ele${frase[3]} se considera geek''');
  if (geek == true) {
    print("Dar camisa geek");
  } else {
    if (geek == false) {
      print("Dar camisa branca");
    }
  }

  int energia = 50;
  int i = 0;
  while (energia > 3) {
    i++;
    print("Volta $i feita!");
    energia = (energia - 4);
    print(energia);
  }

  //for (i = 0; i <= 10; i++) {
  //  print('$i');}

  //Aula 2 ---------------------------------------------

  String fruta = "Laranja";
  double pesoDaFruta = 50.4;
  int tempoDeColhida = 31;
  int tempoParaAmadurecer = 20;
  String frase2 = criarFrase(
      fruta: fruta,
      pesoDaFruta: pesoDaFruta,
      tempoDeColhida: tempoDeColhida,
      tempoParaAmadurecer: tempoParaAmadurecer);
  print(frase2);
  Fruit fruta01 =
      Fruit(fruta, pesoDaFruta, tempoDeColhida, tempoParaAmadurecer);
  fruta01.estaMadura(tempoDeColhida, tempoParaAmadurecer);
  String nivelDeAzedo = "médio";
  Citrica laranja = Citrica(
      fruta, pesoDaFruta, tempoDeColhida, tempoParaAmadurecer, nivelDeAzedo);
  laranja.fazersuco(pesoDaFruta);
  laranja.verQuantoCabe();
  laranja.verQuantoCusta();
}

String criarFrase(
    {required String fruta,
    required double pesoDaFruta,
    required int tempoDeColhida,
    required int tempoParaAmadurecer}) {
  String result =
      'A $fruta pesa $pesoDaFruta gramas, foi colhida a $tempoDeColhida dias e precisa de $tempoParaAmadurecer, logo ela está madura!';
  return (result);
}

class Fruit implements Embalar {
  String nome;
  double peso;
  int tempoDeColhida;
  int tempoParaAmadurecer;
  bool? madura;
  Fruit(this.nome, this.peso, this.tempoDeColhida, this.tempoParaAmadurecer,
      {this.madura});
  estaMadura(int tempoDeColhida, int tempoParaAmadurecer) {
    madura = tempoDeColhida >= tempoParaAmadurecer;
    String texto = '';
    if (madura = false) {
      texto = ' não';
    }
    print("A $nome$texto está madura!");
  }

  @override
  String verQuantoCabe() {
    //é necessário 10kg para encher um saco pra vender (CABEÇA, Vozes da. 2024)
    String x = (10000 / peso).toStringAsFixed(2);
    print("É necessário $x dessa fruta para encher a saca");
    return x;
  }

  @override
  void verQuantoCusta() {
    //essa fruta custa 20 centavos por fruta
    double x = (10000 / peso);
    String y = (x * 0.2).toStringAsFixed(2);
    print('A saca dessa fruta custa $y');
  }
}

class Citrica extends Fruit {
  String nivelDeAzedo;
  Citrica(String nome, double peso, int tempoDeColhida, int tempoParaAmadurecer,
      this.nivelDeAzedo)
      : super(nome, peso, tempoDeColhida, tempoParaAmadurecer);

  void fazersuco(double peso) {
    //é necessário 500g para fazer um suco (CABEÇA, Vozes da. 2024)
    String x = (500 / peso).toStringAsFixed(2);
    print("É necessário $x dessa fruta para fazer suco");
  }
}

abstract class Embalar {
  void verQuantoCabe();

  void verQuantoCusta();
}
