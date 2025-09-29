Capítulo 7.7

# 7.7 SEMÂNTICA DE MANIPULAÇÃO DE EXCEÇÕES
### Robustas:
**Definição:** Aplicações que continuam a aperar sob todas as situações de erro presumíveis.

### Exceção:
**Definição:** É uma condição de erro que ocorre a partir de uma operação que não pode ser resolvida por si só.

### Exemplo de Manipulação de Erro de E/S em ADA:
```ada
with Ada.Text_IO, Ada.Integer_IO;
use Ada.Text_IO, Ada.Integer_IO;
procedure main is
begin
    error: Integer;
    inValue: Integer;
    myData: File_Type;
    Open (Unit7, In_File, “myData”);
    Get (Unit7, inValue);
    Put (“Opened file without errors”);
    New_Line;
    Put (“Value read is: ”); Put (inValue);
exception
    when Name_error =>
        Put (“Error on open: improper file name”);
    when Data_error =>
        Put (“Error on read: invalid integer”);
    end;
end main;
```

## 7.7.1 Estratégias e Questões de Projeto
Como os programadores lidam com situações excepcionais em linguagens como Pascal, C e Fortran, que não possuem um mecanismo de exceções?<br>
Geralmente eles inventam uma convenção para lidar com a exceção que permite ao programa continuar de forma elegante quando ela ocorre.

### Pascal
```pascal
sum := 0.0;
while not eof(file) do
begin
    read(file, number);
    sum := sum + number;
end;
```
Como tratar a exceção? ***Catch*** <br>
E depois? ***Prosseguimento ou finalização***
```c
try {
... //Gera a exceção
} catch(...) {
...
} catch(...) {
...
}
```
### Listagem de Técnicas para lidar com o erro:
I. convenção; <br>
II. retorno; <br>

```c
typedef enum Erro { 
    Erro DEU_BOM,
    Erro DEU_RUIM,
    Erro NAO_SEI
} Erro;

Erro function (int x);
...
if (fun(y) == DEU_RUIM) exit(1);
```
<br>

### ASSERÇÃO:
Predicado inserido em algum ponto de um programa que descreve um estadoque as variáveis ativas devem satisfazer sempre que for atingido durante a execução. assert(bool);

### Pré-condição:
Restrição sobre os valores dos argumentos que deve ser satisfeita para que a função execute sua tarefa.

### Pós-condição:
Análogo; "Promessa" de que o resultado satisfará a pós condição

### Invariante do laço:
Expressão sobre o que deve ser verdadeiro antes (e depois) de cada repetição do corpo de um laço.

```java
public static int fibonacci (int n) {
    int fib0,
        fib1,
        temp,
        k;

    assert n >= 0 : "Erro";
    fib0 = 0;
    fib1 = 1;
    k = n;

    while (k > 0) {
        temp = fib0;
        fib0 = fib1;
        fib1 = fib0 + temp;
        k = k - 1;
    }

    return fib0;    
}
```
