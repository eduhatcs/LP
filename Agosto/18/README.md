# Nomes, variáveis e escopo
- Baseado em [TN10, caps 4.1 a 4.3]

## Nome/Identificador:
Nomeação de entidades seguindo <strong>regras léxicas</strong>    
    - Exemplo: C/C++ e Java ( ' _ ' e Case Sensitive).
    - Cobol (' - ' mas só no início ou fim).
    - Fortran (Tudo maiúsculo).
    - Pascal e Ada (Case Insensitive).

## Palavras reservadas/chave:
Conjunto de nomes que possuem significado especial.
	- Exemplo: for, if, else, final, elif.
	- Existem identificadores predefinidos que possuem um significado especial, MAS podem ser redefinidos.

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
Ponto positivo do pascal: Minimiza palavras chave.
Ponto negativo do pascal: Confuso.

## Amarração/Ligação/Binding
Associação entre uma entidade e uma propriedade (entre variável e valor)
    - Ocorre antes da execução, é estática;
      ocorre em tempo de execução, é dinâmica.
    - Tempo de definição da linguagem.
    - Tempo de implementação da linguagem.
    - Tempo de escrita do programa.
    - Tempo de compilação.
    - Tempo de carga do programa. (associar variável ao endereço de memória)
    - Tempo de execução do programa
    - Precoce (C/C++, Java) Tardia (Python, Haskell).

## Variável:
Ligação de um nome a um endereço de memória
    - Endereço de memória.
    - Tipo.
    - Valor.
    - Tempo de vida.
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
&emsp;&emsp; { &emsp;  |  &emsp; } <br>
&emsp;&emsp; } &emsp;  |  &emsp;  { <br>
&emsp; } &emsp;&emsp;  |  &emsp; }


