- Baseado em [TN10, 5.4 - 5.5]
## Tipos compostos: 
Enumerações, ponteiros, strings, matrizes, registros e uniões.

## Enumeração:
Pode ser feito em C, C++, C#, Java, TypeScript e Python.

### C:
```c
enum dia {seg, ter, qua, qui, sext, sab, dom};
enum dia x = quar;
```

### Java:
```java
import java.io.*;
enum Dia {Seg, Ter, Qua, Qui, Sext, Sab, Dom};
// ...
for (Dia d : Dia.values()) {
    System.out.println(d);
}
```

## Ponteiro:
Referência ou endereço de memória. <br>
- &: Endereço; <br>
- *: Desreferênciação. <br>

### C:
```c
struct No {
    int val;
    struct No *prox;
};

float f(float *a, int n) {
    float s = 0.0;
    for (i = 0; i < n; i++) {
    s += *a++;
    }
} // A dúvida desta função é ao ver *a você não sabe se é um vetor ou um endereço de memória.

float f(float a[], int n) {
    float s = 0.0;
    for (int i = 0; i < n; i++) {
        s += a[i];
    }
} // Esta função fica mais claro que estamos mexendo com vetor.

// A questão de diferenciação entre as duas funções é a Legibilidade.
```

## Matriz e Lista:
### C:
```c
int A[10];
char S[40];
float C[4][3];
```

### Pascal:
```pascal
a: array(-4..5) of INTEGER;
b: array(1..4, 0..2) of FLOAT;
s: array (1..40) of CHARACTER;
```

```pascal
a: array (INTEGER range <>) of INTEGER := (1 | 10 => 12, 2, .. , 8 => 0,9 => 33);
// Vetor em Pascal.
// No índice 1 e 10 salva o número 12. No índice 2 até 8 salva o número 0. No índice 9 salva o número 33
// Vetor: 12 0 0 0 0 0 0 0 33 12
```
