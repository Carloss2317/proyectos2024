void main() {
  // Definimos un número fijo en lugar de usar stdin
  int numero = 12345; // Cambia este valor según lo desees
  int invertido = 0;

  while (numero > 0) {
    int digito = numero % 10;
    invertido = invertido * 10 + digito;
    numero ~/= 10;
  }
  print('El número invertido es: $invertido');
}
