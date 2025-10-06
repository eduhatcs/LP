Capítulos 9.1 - 9.4

# 9.2 CHAMADA E RETORNO DE FUNÇÕES
**FUNÇÃO:** Funções que retornam valor <br>
**SUBROTINA/PROCEDIMENTO:** Funções que não retornam valor <br>

# 9.3 PARÂMETROS
É uma expressão que aparece em uma chamada de função ou em um procedimento é denominada argumento.

## Real vs Formal:
**Real:** Declaração na chamada <br>
**Formal:** Declaração de função <br>
- Exceto para funções sobrecarregadas, os parâmetros devem corresponder em número e tipo.
- A distinção normalmente é feita pelos tipos dos parâmetros. 
### Exemplo em C:

```c
int duplicar (int a) { //FORMAL
    return a*2;
}

int main () {
    int x = 5;
    int y = duplicar(x); // REAL
}
```

### EXEMPLO ADA
```ada
function sum (list : realist; length : integer := list'length())
    return real is ...
```

**BENEFÍCIO:** Simplificação
<br>
```ada
A(a,b); // REAIS
A(a, y => b);
A(x => a, y => b);
A(y => b, x => a); // FORMAIS
```

<br>

# 9.4 MECANISMOS DE PASSAGEM DE PARÂMETROS
1. Por valor
2. Por referência
3. Por resultado-valor
4. Por resultado
5. Por nome

## 9.4.1 PASSAGEM POR VALOR
Passar um argumento por valor significa que o valor do argumento é calculado no tempo da chamada e copiado para o parâmetro correspondente. 
```c
void swap (int a, int b) {
    int temp = a; a = b; b = temp;
}
```

## 9.4.2 PASSAGEM POR REFERÊNCIA
Passar um argumento por referência (ou por endereço) significa que o endereço de memória do argumento é copiado para o parâmetro correspondente, de modo que o parâmetro se torna uma referência (ponteiro) indireta ao argumento real.
```cpp
int B(int &k); // B(x)
int B(int *k); // B(&x)
```

**Quando usar?** Dados muito grandes

## 9.4.3 PASSAGEM POR RESULTADO-VALOR E RESULTADO
**RESULTADO-VALOR:** Um argumento passado por _resultado-valor_ é implementado por meio da cópia do valor do argumento para o parâmetro no início da chamada e depois por meio da cópia do valor do resultado calculado de volta para o argumento correspondente no final da chamada. <br>
**RESULTADO:** Um argumento passado por _resultado_ é implementado pala cópia do valor final, calculado para o parâmetro de saída, para o argumento no final da vida da chamada.

### I
**_C++_**
```cpp
void f (int &x, int &y) {
    x++; y++;
}
```

### II
**_ADA_**
```ada
procedure f (x, y : in out Integer) is
    begin
    x := x+1;
    y := y+1;
```

### ALIASING:
A mesma localização de memória pode ser acessada com o uso de diferentes nomes
&esmp; f(a, a) -> I &esmp; a = 2
&esmp; f(a, a) -> II &esmp; a = 1

## 9.4.4 PASSAGEM POR NOME
Um argumento passado por nome se comporta como se fosse substituído textualmente para cada ocorrência do parâmetro.
```ada
procedure swap (A, B);
    integer a, b;
begin integer t;
    t := a;
    a := b;
    b := t
end;
```
