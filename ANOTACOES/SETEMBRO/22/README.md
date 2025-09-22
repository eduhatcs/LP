Capítulos 7.3 - 7.5

# 7.3 O ESTADO DO PROGRAMA
Associação de todos os objetos ativos com seus valores correntes

## Mapas
1. Objetos ativos com locais específicos na memória;
2. Locais Ativos na memória com seus valores correntes.
&emsp; - ambiente = {**<i, 154\>, <j, 155>**}  
memória = {<0, undef>,...,<154,13>,<155, -1>,...}
```c
int i;
printf("%d\n", i++);
```

# 7.4 SEMÂNTICA DE ATRIBUIÇÃO
## Atribuição
A expressão de origem é avaliada no seu estado corrente, que resulta em um valor, o qual substitui o valor da variável alvo, que resulta em um novo estado.
<br>
## 7.4.1 Atribuição Múltipla
```c
a = b = c = d = 0;
```

### 7.4.2 Comando de Atribuição vs Expressões de Atribuição
```c
if (a = 0) {
    ...
} else {
    ...
}

while (*p++ = *q++)

while (ch = getc(arquivo))

while (p = p->prox)
```

## 7.4.3 Semântica de Cópia versus Semântica de Referência
Cópia vs Referência
```c
a = b;
```

# 7.5 SEMÂNTICA DE CONTROLE DE FLUXO
### Turing Completa
Linguagens cujos programas são capazes de computador qualquer função calculável por meio de operações aritméticas, comandos condicionais e laços.

## 7.5.1 Sequência 
C¹ C²

## 7.5.2 Condicionais
if else, switch
