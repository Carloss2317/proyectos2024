import 'dart:io';

void main(List<String> arguments) {
  int categoriaA = 550;
  int categoriaB = 500;
  int categoriaC = 460;
  int categoriaD = 400;

  print("Ingrese su Categoría (A, B, C, D):");
  stdout.write('Introduce tu Categoría: ');
  String categoriaString = stdin.readLineSync() ?? '';

  stdout.write('Introduce tu Nota: ');
  String notaString = stdin.readLineSync() ?? '';
  double nota = double.parse(notaString);

  double resultado = evaluar(categoriaString, nota, categoriaA, categoriaB, categoriaC, categoriaD);
  print('El monto a pagar es: \$${resultado}');
}

double evaluar(String categoria, double nota, int categoriaA, int categoriaB, int categoriaC, int categoriaD) {
  switch (categoria.toUpperCase()) {
    case 'A':
      if (nota < 14) {
        return categoriaA.toDouble();
      } else if (nota < 16) {
        return categoriaA * 0.9;
      } else if (nota < 18) {
        return categoriaA * 0.88; 
      } else {
        return categoriaA * 0.85;
      }
    case 'B':
      if (nota < 14) {
        return categoriaB.toDouble();
      } else if (nota < 16) {
        return categoriaB * 0.9;
      } else if (nota < 18) {
        return categoriaB * 0.88;
      } else {
        return categoriaB * 0.85;
      }
    case 'C':
      if (nota < 14) {
        return categoriaC.toDouble();
      } else if (nota < 16) {
        return categoriaC * 0.9;
      } else if (nota < 18) {
        return categoriaC * 0.88;
      } else {
        return categoriaC * 0.85;
      }
    case 'D':
      if (nota < 14) {
        return categoriaD.toDouble();
      } else if (nota < 16) {
        return categoriaD * 0.9;
      } else if (nota < 18) {
        return categoriaD * 0.88;
      } else {
        return categoriaD * 0.85;
      }
    default:
      return -1; // Categoría no reconocida
  }
}
