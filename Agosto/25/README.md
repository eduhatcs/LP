- Baseado em [TN10, caps 5.1 - 5.3]

## Tipo
Um <strong>tipo</strong> é um conjunto de valores e um conjunto de valores e um conjunto de operações sobre esses valores.

### Simples:
Inteiro, decimal, caracteres e booleanos.

### Composto:
Ponteiro, Matriz, Função <br><br>

##

- Geralmente possui um limite no número de valores devido à imposição de tamanho fixo.

## Pontos negativos (fixo):
<strong> 1º </strong> - Overflow / Underflow;
<strong> 2º </strong> - Representação de decimais. <br>
0.2 * 5 = 1 <br><br>
<strong>0.2</strong> Não é possível representar precisamente em binário
<strong>5</strong> é possível.
<strong>1</strong> é possível.

<br><br><br>

- 0100 0000 0101 1000 0000 0000 0000 0000
&emsp;- <strong>Decimal:</strong> 3,375 <br> 
&emsp;- <strong>Inteiro:</strong> 1.079.508.992 <br>
&emsp;- <strong>String:</strong> @ &emsp; X &emsp; NUL &emsp; NUL 

<br><br><br>

- A representação de máquina <strong>NÃO</strong> carrega a informação do tipo. <br><br>
- Um <strong>erro de tipo</strong> é qualquer erro que surja porque uma operação é <strong>TENTADA</strong> sobre um tipo de dado para o qual ele <strong>NÃO</strong> está definido. <br><br>
- Um <strong>sistema de tipo</strong> é uma definição precisa das associações entre o tipo de uma variável, seus valores e operações possíveis. <br><br>
- Uma linguagem é <strong>tipada estaticamente</strong> se os tipos são "fixos" quando declaradas em tempo de compilação. <br><br>
- Uma linguagem é <strong>tipada dinâmicamente</strong> se o tipo pode variar em tempo de execução. <br><br>
- Uma linguagem é <strong>fortemente tipada</strong> se o seu sistema de tipos permitir que todos os erros de tipo sejam detectados em tempo de compilação ou de execução. <br<br>

### C
```c 
union { int a; float p; } u;
u.a = 1;
// ...
x = x+u.p; // x é float
```

- Aritmética de "modo misturado"
2.5 + 1 = 3.5 <br>
      _ <br>
      float (1)<br>

## Conversão de tipo:
Cria um padrão de bits diferente para uma representação diferente. <br>
&emsp;- <strong>Limitante:</strong> float -> int <br>
&emsp;- <strong>Ampliadora:</strong> int -> float (2 e 2.0) <br>
                            int -> long <br>
        <strong>contra exemplo:</strong> int -> float (int grande) <br>

## Coersão de tipo:
Alteração implícita de um tipo, podendo haver conversão ou <strong>NÃO</strong> de tipo. <br>
### JAVA
```java
    String s = "abc";
    Object b = s;
```
