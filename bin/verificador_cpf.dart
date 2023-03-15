// Construa uma classe que valide um CPF recebendo um valor String por construtor e  um método de validação retornando um booleano.

// O CPF tem dois dígitos verificadores que são os dois últimos números do CPF.

// - Cálculo do primeiro dígito verificar:

// 1. O primeiro passo é calcular o primeiro dígito verificador, e para isso, separamos os primeiros 9 dígitos do CPF (111.444.777) e multiplicamos cada um dos números, da direita para a esquerda por números crescentes a partir do número 2.

// 2. Multiplique cada digito do CPF pelo respectivo número e somamos cada um dos resultados.

// 3. Divida o valor obtido por 11. Trabalharemos com o RESTO e não com o VALOR da divisão.

// 4. Se o resto da divisão for menor que 2, então o dígito é igual a 0 (Zero).
//  Se o resto da divisão for maior ou igual a 2, então o dígito verificador é igual a 11 menos o resto da divisão (11 - resto).

// O Resultado deve ser igual ao primeiro dígito verificador.

// - Cálculo do segundo dígito verificar:

// 1. Pegaremos os primeiros 10 dígitos do CPF (111.444.777-1) e multiplicamos cada um dos números, da direita para a esquerda por números crescentes a partir do número 2.

// 2. Com o resultado em mãos, siga os passos 2, 3 e 4 do cálculo do primeiro dígito.

// O Resultado deve ser igual ao segundo dígito verificador.

void main(){
  String cpf = "03933503043";

  ValidadorCPF verificaCpf = ValidadorCPF();
  bool a = verificaCpf.verificadigito1(cpf);
  bool b = verificaCpf.verificadigito2(cpf);

  a && b ? print("SUCESS") : print("FAIL");
  
}

class ValidadorCPF{
  String? cpf;

  ValidadorCPF({this.cpf});

  bool verificadigito1(cpf){
    String cpfSemDigitoVerificador = cpf.substring(0, 10);
    List<int> cpfSemDigitoVerificadorIntList = cpfSemDigitoVerificador.split('').map((e) => int.parse(e)).toList();
    int somaCpfSemDigitoVerificador = (cpfSemDigitoVerificadorIntList[0] * 10) + (cpfSemDigitoVerificadorIntList[1] * 9) + (cpfSemDigitoVerificadorIntList[2] * 8) + (cpfSemDigitoVerificadorIntList[3] * 7) + (cpfSemDigitoVerificadorIntList[4] * 6) + (cpfSemDigitoVerificadorIntList[5] * 5) + (cpfSemDigitoVerificadorIntList[6] * 4) + (cpfSemDigitoVerificadorIntList[7] * 3) + (cpfSemDigitoVerificadorIntList[8] * 2);
    
    int resto1 = somaCpfSemDigitoVerificador % 11;
    int testaDigito1 = 0;

    if(resto1 < 2) testaDigito1 = 0;
    if(resto1 >= 2) testaDigito1 = 11 - resto1;

    if(testaDigito1 == cpfSemDigitoVerificadorIntList[9]) {
      return true;
    }else{
      return false;
    }
  }

  bool verificadigito2(cpf){
    String cpfSemUltimoDigitoVerificador = cpf.substring(0, 11);
    List<int> cpfSemUltimoDigitoVerificadorIntList = cpfSemUltimoDigitoVerificador.split('').map((e) => int.parse(e)).toList();

    int somaCpfSemUltimoDigitoVerificador = (cpfSemUltimoDigitoVerificadorIntList[0] * 11) + (cpfSemUltimoDigitoVerificadorIntList[1] * 10) + (cpfSemUltimoDigitoVerificadorIntList[2] * 9) + (cpfSemUltimoDigitoVerificadorIntList[3] * 8) + (cpfSemUltimoDigitoVerificadorIntList[4] * 7) + (cpfSemUltimoDigitoVerificadorIntList[5] * 6) + (cpfSemUltimoDigitoVerificadorIntList[6] * 5) + (cpfSemUltimoDigitoVerificadorIntList[7] * 4) + (cpfSemUltimoDigitoVerificadorIntList[8] * 3) + (cpfSemUltimoDigitoVerificadorIntList[9] * 2);
    
    int resto2 = somaCpfSemUltimoDigitoVerificador % 11;
    int testaDigito2 = 0;

    if(resto2 < 2) testaDigito2 = 0;
    if(resto2 >= 2) testaDigito2 = 11 - resto2;

    if(testaDigito2 == cpfSemUltimoDigitoVerificadorIntList[10]) {
      return true;
    }else{
      return false;
    }
  }
}