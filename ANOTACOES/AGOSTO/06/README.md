### Robert Sebeste, "Concepts of programming languages", 12ª edição, 2019. 
Capítulo 11 e 12 

### Por que? 
- Expressividade 
### JAVA:
```java
class Bola { 
    private int raio; 
}
```

### C
```c
typedef struct Pessoa { 
    int idade;
} Pessoa; 

void aniversario (Pessoa **p) { 
    (*p) -> idade++; 
} 
``` 
# Palavras chaves 
<strong>L:</strong> &emsp; Ledigibilidade. <br>
<strong>R:</strong> &emsp; Redigibilidade. <br>
<strong>CF:</strong> &emsp; Confiabilidade. <br>
<strong>CT:</strong> &emsp; Custo.

## L.1: Simplicidade:  
Maneiras de chegar ao mesmo lugar de formas diferentes. <br>

### Exemplos:
### C:
```c
count += 1 
count++ 
++count 
count = count + 1 
```
Isso acima é um Feature Multiplicity (Maneiras múltiplas para o mesmo resultado) 

## 

### JAVA:
```java
"Olá" + "Mundo" 
a + b 
```
Isso acima é Overloading (Sobrecarga) 

## L.2: Ortogonalidade: 
Maneiras simples de fazer coisas complexas. 

### Exemplos:
```c
int     //inteiro 

*int    //ponteiro para inteiro 

**int   //matriz de inteiro 

int[][]     //matriz de inteiro 
```
 
## L.3: Tipos de Dados 

## L.4: Sintaxe: 

grep -> g / regex / p 

## R.1 & 2 - Simplicidade & Ortogonalidade: 
### C:
```c
void* v = malloc(8) 
```

Isto reserva 8 bytes na memória. Ele não sabe o que é e pode armazenar qualquer coisa em forma de bits. E ele retorna um ponteiro de void. O programador é obrigado a saber com que está mexendo antes de solicitar um ponteiro de void. 

## R.3: Expressividade: 
O que é um for? É um while simplificado. 

Por que dessa afirmação?  

- Porque o while apenas faz enquanto tal coisa for verdadeira e o programador tem de especificar os demais detalhes em outras linhas, como por exemplo, o fim da repetição.  

Já o for, exige o início, meio e fim do laço em uma única linha e faz o laço de repetição enquanto for verdadeiro. 

## CF.1: Verificação de tipo

## CF.2: Tratamento de Exceção

## CF.3: Aliasing:  

### C:
```c
int *x,
    p,
    *y;

x = &p; 
y = x; 
```
X e Y apontando para o endereço de P. 
