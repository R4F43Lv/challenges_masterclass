// Na matemática, a sucessão de Fibonacci (ou sequência de Fibonacci), é uma sequência de 
// números inteiros, começando normalmente por 0 e 1, na qual cada termo subsequente corresponde 
// à soma dos dois anteriores. A sequência recebeu o nome do matemático italiano Leonardo de Pisa, 
// mais conhecido por Fibonacci, que descreveu, no ano de 1202, o crescimento de uma população de 
// coelhos, a partir desta. Esta sequência já era, no entanto, conhecida na antiguidade.

// Implemente a sequencia fibonacci com funcões recursivamente usando o Dart.

void main() {
  for(int i = 0; i < 20; i++){
    print(fibonacci(i));
  }
}

fibonacci(int n){
  if(n == 0){
    return 0;
  }else if(n == 1){
    return 1;
  }else{
    return fibonacci(n - 2) + fibonacci(n - 1);
  }
}