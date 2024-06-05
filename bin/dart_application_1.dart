void main(List<String> arguments) {
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
}
