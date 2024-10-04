BigInt factorial(int n) {
  BigInt resultado = BigInt.one;
  for (int i = 2; i <= n; i++) {
    resultado *= BigInt.from(i);
  }
  return resultado;
}

void main() {
  // Definimos un número fijo en lugar de usar stdin
  int n = 100; // Cambia este valor según lo desees
  
  print('El factorial de $n es: ${factorial(n)}');
}
