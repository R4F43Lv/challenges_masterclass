// Uma das coisas mais úteis que aprendemos no ensino médio é a "Regra de 3".
// Consiste quando temos 3 valores e precisamos saber o quarto.
// Geralmente temos dois grupos, e o calculo é feito multiplicando paralelamente os
// valores entre os dois grupos. Ex:
// --
// Grupo1.1             Grupo1.2
//               X
// Grupo2.1             Grupo2.2
// --
// Grupo1.1 x Grupo2.2 = Grupo2.1 x Grupo1.2

// Sabendo disso, crie uma função que receba 4 argumentos opcionais e que retorne a 
// resolução da regra de 3, levando em consideração que será considerado o argumento 
// vário como valor a ser encontrado, logo, poderá ter apenas um valor necessáriamente 
// "vazio".

void main() {
  double value1 = 10;
  double value2 = 0;
  double value3 = 0;
  double value4 = 30;

  int imptVaz = 0;
  double result = 0;
  String? idtValueVaz;
  
  if (value1 == 0) {
    imptVaz++;
    idtValueVaz = "O valor 1 é: ";
  }
  if (value2 == 0) {
    imptVaz++;
    idtValueVaz = "O valor 2 é: ";
  }
  if (value3 == 0) {
    imptVaz++;
    idtValueVaz = "O valor 3 é: ";
  }
  if (value4 == 0) {
    imptVaz++;
    idtValueVaz = "O valor 4 é: ";
  }

  if (imptVaz == 1) {
    if (value1 == 0) {
      result = (value4 * value2) / value3;
    } else if (value2 == 0) {
      result = (value3 * value4) / value1;
    } else if (value3 == 0) {
      result = (value2 * value4) / value1;
    } else if (value4 == 0) {
      result = (value3 * value1) / value2;
    }
  } else {
    return print("ERRO! Apenas um valor deve ser ZERO");
  }
  
  print("$idtValueVaz $result");
}
