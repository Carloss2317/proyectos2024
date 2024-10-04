bool esPrimo(int numero) {
  if (numero < 2) return false;
  for (int i = 2; i <= numero ~/ 2; i++) {
    if (numero % i == 0) return false;
  }
  return true;
}

void main() {
  // Definimos los números de inicio y fin en lugar de usar stdin
  int inicio = 10; // Cambia este valor según lo desees
  int fin = 50; // Cambia este valor según lo desees

  int suma = 0;
  for (int i = inicio; i <= fin; i++) {
    if (esPrimo(i)) {
      suma += i;
    }
  }
  print('La sumatoria de los números primos entre $inicio y $fin es: $suma');
}
