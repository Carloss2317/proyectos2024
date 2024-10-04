void main() {
  // Definimos la base y el exponente
  int base = 2; // Cambia este valor según lo desees
  int exponente = 3; // Cambia este valor según lo desees

  int resultado = 1;

  for (int i = 0; i < exponente; i++) {
    resultado *= base;
  }

  print('$base elevado a la $exponente es: $resultado');
}
