import 'dart:math';

void main() {
  // Definimos el número para verificar si es un número de Armstrong
  int numero = 153; // Cambia este valor según lo desees
  int suma = 0;
  int temp = numero;
  int n = numero.toString().length;

  while (temp > 0) {
    int digito = temp % 10;
    suma += pow(digito, n).toInt();
    temp ~/= 10;
  }

  if (suma == numero) {
    print('$numero es un número de Armstrong.');
  } else {
    print('$numero no es un número de Armstrong.');
  }
}
