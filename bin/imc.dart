// O (IMC) índice de massa corporal é baseado na altura e peso do individuo.
// O calculo é representado por Dividir o peso pela Altura ao quadradro²

// Cria uma função que realize o calculo de IMC.

void main() {
  double altura = 1.90;
  double peso = 82;
  double imc = peso / (altura * 2);
  String imcS = imc.toStringAsFixed(2);
  
  if(imc <= 16.9){
    print("IMC: $imcS! Muito abaixo do peso...");
  }else if(imc >= 17 && imc <= 18.4){
    print("IMC: $imcS! Abaixo do peso...");
  }else if(imc >= 18.5 && imc <= 24.9){
    print("IMC: $imcS! Peso normal...");
  }else if(imc >= 25 && imc <= 29.9){
    print("IMC: $imcS! Acima do peso...");
  }else if(imc >= 30 && imc <= 34.9){
    print("IMC: $imcS! Obesidade grau I...");
  }else if(imc >= 35 && imc <= 40){
    print("IMC: $imcS! Obesidade grau II...");
  }else{
    print("IMC: $imcS! Obesidade grau III...");
  }
}