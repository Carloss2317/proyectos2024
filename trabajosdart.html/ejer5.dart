void main() {
  // Definimos el tamaño de las matrices (N)
  int n = 3; // Cambia este valor según lo desees

  // Creamos matrices A y B con valores predefinidos
  List<List<int>> matrizA = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9]
  ];

  List<List<int>> matrizB = [
    [9, 8, 7],
    [6, 5, 4],
    [3, 2, 1]
  ];

  // Matriz para almacenar la suma
  List<List<int>> suma = List.generate(n, (_) => List.filled(n, 0));

  // Sumar las matrices
  for (int i = 0; i < n; i++) {
    for (int j = 0; j < n; j++) {
      suma[i][j] = matrizA[i][j] + matrizB[i][j];
    }
  }

  // Imprimir la suma de las matrices
  print('La suma de las matrices es:');
  for (var fila in suma) {
    print(fila);
  }
}
