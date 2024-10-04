void main() {
  // Definimos el tamaño de la matriz (n)
  int n = 4; // Cambia este valor según lo desees
  
  List<List<int>> matriz = List.generate(n, (_) => List.filled(n, 0));
  
  int valor = 1;
  int inicioFila = 0, finFila = n - 1;
  int inicioCol = 0, finCol = n - 1;

  while (inicioFila <= finFila && inicioCol <= finCol) {
    // Llenar la fila superior
    for (int i = inicioCol; i <= finCol; i++) {
      matriz[inicioFila][i] = valor++;
    }
    inicioFila++;
    
    // Llenar la columna derecha
    for (int i = inicioFila; i <= finFila; i++) {
      matriz[i][finCol] = valor++;
    }
    finCol--;
    
    // Llenar la fila inferior si aún hay filas
    if (inicioFila <= finFila) {
      for (int i = finCol; i >= inicioCol; i--) {
        matriz[finFila][i] = valor++;
      }
      finFila--;
    }
    
    // Llenar la columna izquierda si aún hay columnas
    if (inicioCol <= finCol) {
      for (int i = finFila; i >= inicioFila; i--) {
        matriz[i][inicioCol] = valor++;
      }
      inicioCol++;
    }
  }

  // Imprimir la matriz en espiral
  print('Matriz en espiral:');
  for (var fila in matriz) {
    print(fila);
  }
}
