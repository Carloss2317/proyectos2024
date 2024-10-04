import 'dart:io';

BigInt factorial(int n) {
  BigInt resultado = BigInt.one;
  for (int i = 2; i <= n; i++) {
    resultado *= BigInt.from(i);
  }
  return resultado;
}

void main() {
  print('Ingresa un número para calcular su factorial:');
  int n = int.parse(stdin.readLineSync()!);
  
  print('El factorial de $n es: ${factorial(n)}');
}
