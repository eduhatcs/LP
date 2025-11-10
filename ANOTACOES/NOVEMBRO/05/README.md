- **Avaliação rápida vs lenta** <br>
((if (=x0)1(/1x))) <br>

<br>

- **Funções são 1ª classe** <br>
```c
g(f, a1, a2, a3)

void qsort (void *v, size_t n, size_t b, (void *, void *)(*cmp));
```

<br>

Capítulo 15 e Apêndice B.3 
<br>
- **Proposições => V ou F** <br>
<br>
- **Operadores => ^, v, ¬ ou ~, =>, <=>** <br>
<br>
- **Tabela verdade*** <br>
<br>
- **Quantificador:** <br>
**∀** = para todo; para qualquer um; para cada. <br>
**∃** = existe; há pelo menos um. <br>
**∃!** = existe exatamente um. <br>
**∄** = não existe. <br>
<br>
**Exemplos:**
```
∀x (x é primo => ∃y (y é primo ^ y>x))

∀x (x ∈ IN ^ primo(x) => ∃y (y ∈ IN ^ primo(y) ^ y>x))
```

<br>
<br>

## PROPRIEDADES
### COMUTATIVIDADE
```
p v q <=> q v p 
p ^ q <=> q ^ p
```

### ASSOCIATIVIDADE
```
(p v q) v r <=> p v (q v r) 
(p ^ (q v r) <=> (p ^ q) v (q ^ r))
```

### IDEMPOTENTE
```
p v p <=> p
p ^ p <=> p
```

### IDENTIDADE
```
p v ¬p <=> V
p ^ ¬p <=> F
```

### DE MORGAN
```
¬(p v q) <=> ¬p ^ ¬q
```

### IMPLICAÇÃO 
```
(p => q) <=> ¬p v q
```

### QUANTIFICAÇÃO
```
¬(∀x p(x)) <=> ∃x ¬p(x)
¬∃x p(x) <=> ∀x ¬p(x)
```

<br>
<br>

- **Objetivo:** Coleção de asserções, ou regras, sobre os resultados e as restrições de computação. 
<br>
- **Não determinismo e Backtraking** 
<br>
- **Cláusula de Horn:** h, que é um atributo, e um corpo p1, p2, p3, ... , pn <br>
h <- p1, ... , pn <br>
nevando(C) <- precipitação(C), congelando(C) 
<br>
- Toda cláusula de Horn pode ser escrita de forma de predicado Inverso nem sempre é verdadeiro. <br>

### prolog
```prolog
speaks (allen, russian).
speaks (bob, english).
speaks (mary, russian).
speaks (mary, english).

talswith (p1, p2) :- speaks (p1, 2), speaks(p2, 2), p1 \= p2.

?- speaks (who, russian).
% who = allen

?- talks (bob, allen).
% No

?- talkswith (who, allen).
% who = mary
```
