# Nomes, variáveis e escopo
- Baseado em [TN10, caps 4.1 a 4.3]

## Nome/Identificador:
Nomeação de entidades seguindo <strong>regras léxicas</strong>    <br>
### Exemplo: 
- C/C++ e Java ( ' _ ' e Case Sensitive). <br>
- Cobol (' - ' mas só no início ou fim). <br>
- Fortran (Tudo maiúsculo). <br>
- Pascal e Ada (Case Insensitive). <br>

## Palavras reservadas/chave:
Conjunto de nomes que possuem significado especial. <br>
- Exemplo: for, if, else, final, elif. <br>
- Existem identificadores predefinidos que possuem um significado especial, MAS podem ser redefinidos. <br>

### PASCAL:
```pascal
program confuso; 
const true = false;
begin
    ...
    if (a < b) = true then
        f(a);
    else
        g(b);
    ...
end
```
### Ponto positivo do pascal
Minimiza palavras chave.
### Ponto negativo do pascal
Confuso.

## Amarração/Ligação/Binding
Associação entre uma entidade e uma propriedade (entre variável e valor) <br>
- Ocorre antes da execução, é estática;<br>
  ocorre em tempo de execução, é dinâmica.
- Tempo de definição da linguagem. <br>
- Tempo de implementação da linguagem. <br>
- Tempo de escrita do programa. <br>
- Tempo de compilação. <br>
- Tempo de carga do programa. <em>(associar variável ao endereço de memória)</em> <br>
- Tempo de execução do programa <br>
- Precoce (C/C++, Java) Tardia (Python, Haskell).

## Variável:
Ligação de um nome a um endereço de memória <br>
- Endereço de memória. <br>
- Tipo. <br>
- Valor. <br>
- Tempo de vida. <br>
```c
x = y + 1;
x = *y + 1;
```
```sml
x = !y + 1;
```

## Escopo:
Coleção de comandos que podem acessar essa ligação de nome, permitindo reutilização de nomes;

## Estático:
Alinhado &emsp;  Disjunto. <br>
&emsp; { &emsp;&emsp;  |  &emsp;  { <br>
&emsp;&emsp; { &emsp;  |  &emsp; { <br>
&emsp;&emsp; } &emsp;  |  &emsp;  } <br>
&emsp; } &emsp;&emsp;  |  &emsp; }


