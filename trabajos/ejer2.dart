void main() {
  // Definimos un número fijo de términos en lugar de usar stdin
  int n = 10; // Puedes cambiar este valor a la cantidad de términos que quieras

  int a = 0, b = 1;
  print('Secuencia de Fibonacci:');

  for (int i = 0; i < n; i++) {
    print(a);
    int temp = a;
    a = b;
    b = temp + b;
  }
}
