Capítulos 7.1 a 7.4<br>

# 7.2 SEMÂNTICA
Semântica é a definição precisa do significado de qualquer programa que esteja correto.

&emsp; - **Operacional:** Exemplo(Fortran IBM709).
&emsp; - **Axiomático:** Ser extremamente objetivo. (Axioma é um conceito matemático).
&emsp; - **Denotacional:** Funciona como uma "função" que vai para outros estados.

```c
(a + b) - (c * d) // Isso é uma expressão onde as variáveis guardam os valores
```

- **Efeito Colateral:** A ordem de avaliação **NÃO** é importante.

## 7.2.1 NOTAÇÃO
Pode se imaginar como uma àrvore

- **Notação interfixa** 
- **Notação polnesa prefixa:** *Não tem uma linguagem especificada*
```
- + ab * cd
```

- **Notação polonesa posfixa:** *Fortran* 
```fortran
ab + cd * - &emsp; 
```

- **Notação Cambridge:** *LISP e Scheme*
```scheme
(+, a) e (+abcd) //Scheme
```

## 7.2.2 ASSOCIATIVIDADE E PRECEDÊNCIA
### Associativa (em C):
```// + , - , * , / : esquerda 
// - : Direita
// == , != , etc : esquerda

    int a = 9,
        x = 7,
        b = 11;

    if (a < x < b) { // 9 < 7 = 0   ...   0 < 11 = 1
        printf("Deu 1\n");
    }
```

## 7.2.3 AVALIAÇÃO DE CURTO CIRCUITO 
Achou "a resposta" ele para
```c
    if (i < n && v[i] > 0) {...}
    if (v[i] > 0 &&& i < n) {....}
    
    // Os dois não são a mesma coisa.

    a + (b+c) = (a+b) + c
    /* Acima não é equivalente
        Caso que daria erro -> a = INT_MAX, b = 1, c = -5
    */ 

    //Qual o resultado a seguir: 
    int i = 2,
        b = 2,
        c = 5;

    int a = b * i++ + c * i;

    // 14? 19? 
    /* Os dois acima estão corretos. UB */

```


