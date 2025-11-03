Capítulo 14

# PROGRAMAÇÃO FUNCIONAL

## FUNÇÕES E O CÁLCULO DE LAMBDA
Uma função matemática típica, como o quadrado de um número, frequentemente é definida por:
### python
```python
Square(n) = n * n
```

Square: R -> R <br>
**Definição:** Dizemos que uma função é total se ela é definida para todos os elementos em seu domínio, e parcial em caso contrário. <br>

<br>

## Total vs Parcial:
### c
```c
x = x + 1; // Não faz sentido matematicamente
```

<br>

## Puras vs Impuras:
- **Pura:** Eliminam a noção de célula de memória em favor da noção matemática (Por exemplo: Atribuição). 
<br>
- **Impura:** !(Pura).
<br>
- Consequência: Não há a noção de estado; o valor de uma função depende somente dos valores de seus argumentos (Isto é: Transparência Funcional).
<br>

<br>

-  (sigma x º x * x) => ((sigma x º x * x)2) = 4
<br>

<br>

- **Church** => Cálculo Lambda _Puro/Não interpretado_
<br>
1. Todo e qualquer identificador é uma empressão lambda.
<br>
2. Se M e N são lambda, a aplicação (M N) é lambda.
<br>
3. Uma abstração (sigma x º M), onde X é _Identificador_ e M é _Expressão_, é lambda. 
<br>


```
1. x
2. ((sigma x º x) (sigma y º y))
3. (sigma x º x)
```

<br>

## VARIÁVEL LAMBDA
Variável cujo nome é igual ao nome do parâmetro. Caso contrário, ela é **livre**. <br>
```c
free(x);
free(MN) = free(M) u free(N);
free(sigma x º M) = free(M) - {x}
```

## SUBSTITUIÇÃO M[x <- N]
1. Se as variáveis livres N não possuem ocorrências ligadas em M, então o termo M[x <- N] é formado pela substituição de todas as ocorrências livres de x em M por N.
<br>
2. Caso contrário, assuma que a variável x é livre em N e ligada em M. Substitua as ocorrências de ligações de x em M por uma nova variável. Repita até que (1) possa ser utilizado.
