Capítulos 5.5 a 5.9

### C:
```c
x = if();

int (int, int) *f = swap;
```

## Ordenação:
- Comparação e Atribuição.

- qsort (v, n, sizeof(int), f);

### JAVA:
```java
public interface RootSoluable {
    double valueAt(double x);
}

public double Newton(double a, double b, RootSoluable f);
```

### C:
```c
struct complex {
    float re,
          in;
};

struct polar {
    float re,
          im;
} a, b;

struct {
    float re,
          im;
};

struct complex c, d;

struct polar e;

int f[5],
    g[10];
```

### Equivalência de estrutura:
Tiverem a mesma estrutura, ou seja, para registros, inclui o número e a ordem dos campos, assim como o nome e tipo de cada campo.
- a, b, c, d.

### Equivalência de nome: 
- c, d; a, b; mas a, c não.

### Subtipo:
Tipo que possui determinadas restrições colocadas sobre seus valores ou suas operações. 
### ADA:
```ada
subtype um_a_dez is Integer
    range 1 .. 10;
type Dia is (seg, ter, qua, qui, sext, sab, dom);
subtype FimDeSemana is Dia range sab .. dom;
```

### JAVA:
```java
Integer i = new Integer(3);
Number n = i;
Integer x = (Integer)n;
```

## Polimorfismo:
Pode ser aplicada em diversos tipos e obter o mesmo resultado.
- Vantagem: Reutilização.

## Polimorfismo paramétrico:
Uma função ou procedimento genérico é um modelo que pode ser instanciado em tempo de compilação com operadores e tipos concretos.
- Ligação é feita e tempo de compilação.
- Vantagem: Flexibilidade.

### Herança

```c
int* mat; // matriz em um vetor onde você controla tudo. (ótimo para memória cache)
```

- Abstração de dados

```c
struct imagem;
.c
struct Imagem {...};
```
