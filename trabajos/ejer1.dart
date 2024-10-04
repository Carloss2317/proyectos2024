import 'dart:io';

bool esPrimo(int numero) {
  if (numero < 2) return false;
  for (int i = 2; i <= numero ~/ 2; i++) {
    if (numero % i == 0) return false;
  }
  return true;
}

void main() {
  print('Ingresa el primer número:');
  int inicio = int.parse(stdin.readLineSync()!);
  print('Ingresa el segundo número:');
  int fin = int.parse(stdin.readLineSync()!);

  int suma = 0;
  for (int i = inicio; i <= fin; i++) {
    if (esPrimo(i)) {
      suma += i;
    }
  }
  print('La sumatoria de los números primos entre $inicio y $fin es: $suma');
}
