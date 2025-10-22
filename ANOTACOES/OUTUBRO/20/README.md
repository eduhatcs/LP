Capítulos 7, 9 e 11

# LISTA DE EXERCÍCIOS

## CAPÍTULO 7

1. **Semântica operacional vs axiomática vs denotacional.** <br>

&emsp; Operacional: **Vantagem:** Representar o significado de um programa diretamente pelo código de máquina real (ou simulada). Exemplo, Fortran (IBM709). **Desvantagem:** limita a utilidade para compiladores e programadores que trabalham com arquiteturas diferentes. <br>
<br>
&emsp; Axiomática: É extremamente objetiva. **Vantagem:** Ir direto ao ponto do problema. **Desvantagem:** Díficil especificar efeitos colaterais em expressões. <br>
<br>
&emsp; Denotacional: Funciona como uma "função" que vai para outros estados. **Vantagem:** Fundamento matemático rigoroso e independência de implementação. **Desvantagem:** Complexidade matemática e dificuldade com recursão. <br>

<br>

2. **Benefícios da notação posfixa/prefixa/de Cambridge.** <br>

&emsp; Posfixa: As operações de subtrair, multiplicar, somar ou dividir estão após as variáveis. Não necessita de uso de parênteses. Avaliação simples e eficiente através de uma Pilha. Exemplo: AB + C * 

<br>

&emsp; Prefixa: As operações estão antes das variáveis. Isso é bom, pois o sabe-se qual operação realizar com as variáveis seguintes, até achar um outro operador para mudar a operação. Elimina o uso de parênteses. Mapeamento direto para Àrvores de Sintaxe Abstrata (AST), onde o operador é sempre o nó raiz e os operandos são seus filhos. Exemplo: - AB * C

<br>

&emsp; Cambridge: Uma variação da notação prefixa, onde permite realizar operações mais complexas, fazendo cada operação por vez. Reduz a ambiguidade. Exemplo: (*(+ AB)C)

<br>

3. **Curto circuito. Benefícios e malefícios.** <br>

&emsp; Benefício: Permite fazer operações simples de forma rápida, ganhando em segurança e desempenho. 
&emsp; Malefício: Se uma subexpressão que não é avaliada, bugs podem ocorrer. E pode também não fazer todas as operações necessárias (como pular verificação). Por exemplo: 
```c
if (funcA() || funcB()) {...} // se funcA for verdadeiro, o funcB nunca será chamado, assim o seu efeito colaterai não ocorrerá.
```
<br>

4. **Estado de um programa.** <br>

Uma fotografia instantânea completa de tudo que é variável na execução do programa em um determinado momento.
<br>

5. **Efeito colateral.** <br>

Alterar em uma função uma variável global que não foi declada dentro dela. Exemplo:
```c
int contador;

int somarUm(int x) {
    contador++;
    return x+1;
}
```
<br>

6. **Semântica de Atribuição: Múltipla; Comando vs Expressão; Cópia vs Referência** <br>

&emsp; Múltipla; <br>
Permite fazer várias atribuições em sequência na mesma linha. Por exemplo:

```python
int x, y = 10, 20
```

<br>

&emsp; Comando vs Expressão; <br>
Comando: É uma ação. NÃO tem um valor. Exemplo:

```pascal
x := 5
```

Vantagem: É mais seguro, pois atribui diretamente.

<br>

Expressão: É um cálculo que VALE algo. Exemplo:

```c
y = (x = 5) +1;
```

Vantagem: É mais flexível.

<br>

&emsp; Cópia vs Referência; <br>
Cópia: A variável armazena a cópia do valor diretamente. Não tem efeito colateral ao mudar o valor y ou o valor de x. Exemplo:

```c
int y = 10;
int x = y; // cópia do valor de y para a variável x
```

Referência: Não é uma variável simples, mas sim um ponteiro para um objeto que já exista na heap. Há efeito colateral ao mudar o valor y ou o de x. Exemplo:

```c
x.quantidade = 10;
y.quantidade = 5;

x = y; // x agora tem o mesmo ponteiro de y. E o valor da quantidade de x agora é 5.
```

<br>

7. **Semântica de controle de fluxo: Sequência; Condicionais; Laços;** <br>

&emsp; Sequência; A sequência é o controle de fluxo representada por pelo ponto-e-vírgula ';'. 
<br>
&emsp; Condicionais; É o controle de fluxo com condicionais como if else, ou switch case. 
<br>
&emsp; Laços; É o controle de fluxo através de laços de repetições como for e while.

<br>

8. **Semântica E/S: Arquivos Padrão; Fluxos; Sequencial Formatada;** <br>

&emsp; Arquivos Padrão; <br>
&emsp; Fluxos; <br>
&emsp; Sequencial Formatada; 

<br>

9. **Acesso aleatório em Arquivos.** <br>

<br>

10. **Semântica Exceções: Retorno vs Parâmetro; Prosseguimento vs Finalização;** <br>

&emsp; Retorno vs Parâmetro;  <br>
Retorno: Retorna algum valor contido em uma função. 
<br>
Parâmetro: É o valor recebido em uma função.
Por exemplo:

```c
bool dividir(int x, int y, int *resp) {
    if (x == 0) {
        return false; //  ERRO: Avisa pelo retorno
    }
    ...
    return true; //SUCESSO: Avisa pelo retorno.
}

```

&emsp; Prosseguimento vs Finalização; <br>
Prosseguimento: Ao ocorrer alguma exceção, o manipulador de exceção é visto como um "conserto" e volta de onde parou. Ada faz isso.
<br>
Finalização: Ao ocorrer alguma exceção, finaliza o que estava fazendo de um try e pula para o catch. Por exemplo:

```c
try {
    ...
    ... // se ocorrer uma exceção aqui abandona e pula para o catch
    ...
    ...
} catch() {
    // continua daqui após a exceção ser lançada
}
```

<br>

11. **Exceção vs Asserção: Pré-condição; Pós-condição; Invariante ao laço;** <br>

&emsp; Pré-condição; <br>
&emsp; Pós-condição; <br>
&emsp; Invariante ao laço;

# CAPÍTULO 9

12. **Função vs Procedimento.** <br>

<br>

13. **Parâmetro: Real vs Formal; Opcional (em ordem e fora de ordem).** <br>

&emsp; Real vs Formal; <br>
&emsp; Opcional em ordem; <br>
&emsp; Opcional fora de ordem.

<br>

14. **Passagem: Valor; Referência; Resultado-valor; Resultado; Nome** <br>

&emsp; Valor; <br>
&emsp; Referência; <br>
&emsp; Resultado-valor; <br>
&emsp; Resultado; <br>
&emsp; Nome;

<br>

15. **Aliasing.** <br>
É quando dois ou mais identificadores diferentes se referem ao mesmo local de memória durante o mesmo ponto da execução do programa. Pode ser feito com dois ponteiros diferentes apontando para o mesmo local. Exemplo:

```c
int x = 10;
int *p = &x;
int *q = &x;
```

&emsp; Importância (O Problema): Tem implicações para a confiabilidade e otimização do programa. Como dificultar a verificação e leitura (efeito colateral). Ao fazer *p = 100, isso aparente modificar apenas o *p, mas na verdade também modifica *q implicitamente.

<br>

16. **Registros de ativação e Frame de Pilha. Funções recursivas.** <br>

&emsp; Frame de pilha é responsável pela chamada e retornos de funções, e também por armazenar as variáveis locais de cada chamada de função. É empilhado no topo da pilha de tempo de execução. Em funções recursivas com recursão infinita ocorre o estouro de Pilha.

<br>

17. **Pilha de tempo de execução.** <br>
Sua função é controlar o fluxo de chamadas e retornos funções, ao mesmo tempo em que armazena os dados locais associados a cada chamada.

<br>

18. **Memória estática vs Heap vs Pilha de tempo de execução.** <br>

emsp; Pilha de tempo de execução: Tem a função de controlar o fluxo de chamadas e retornos de funções, ao mesmo tempo em que armazena os dados locais associados a cada função.
<br>
&emsp; Heap: É a área da memória dinâmica que não depende de funções ou de variável global para continuar existindo. Em C é usado com o malloc.
<br>
&emsp; Memória estática: É a área de memória mais simples alocada uma única vez, antes da execução do programa. Armazena variáveis globais e variáveis estáticas.

<br>

19. **Palavra não usada vs não definida vs valor elementar.** <br>

&emsp; Valor elementar: Refere-se aos tipos de dados mais básicos (primitivos). Como um inteiro, um booleano ou um float. Exemplo:

```c
int x = 10;
bool encontrou = false;
float pi = 3.14;
```
<br>

&emsp; Não definida: É um erro de semântica em tempo de execução. Exemplo:

```c
int x;
printf("%d", x); // Está sendo lida mas seu valor é "não definido"
```
<br>

&emsp; Não usada: É o aviso (warning) de análise estática (compilação). Não é um erro, apenas avisa que uma variável não está sendo utilizada. Exemplo:

```c
int x = 10;
int y = 5;
printf("%d", y);
```
<br>
 
20. **Overflow de Heap e de Pilha.** <br>

&emsp; Pilha: O overflow da Pilha ocorre pela falta de memória, que pode ser causada por loops de chamadas de funções excessivas ou infinitas. Também pode ser por alocação de variáveis locais muito grandes. 
<br>
&emsp; Heap: Uma causa de overflow de Heap ocorre pelo vazamento de memória, onde aloca memória dinamicamente, mas perde as referencias a ela sem a liberar. 

<br>

21.  **Lixo e coleta de lixo (Por que)?** <br>

&emsp; Lixo: É um bloco de memória alocado no heap que não está mais acessível ao programa.
<br>
&emsp; Coleta de lixo: É a remoção dos blocos de memória que não estão mais acessíveis ao programa (lixo). É essencial para liberar espaço na memória heap, sendo assim resolvendo o problema de vazamento de memória.

<br>

22. **Estratégias: Contagem; Marcar e Varrer; Cópia;** <br>

&emsp; Contagem; Conta cada vez que é referenciada por alguém. O que não tiver um número de contagem maior do que 0, é apagado. 
<br>
&emsp; **Vantagem:** Remoção imediata. 
<br>
&emsp; **Desvantagem:** Sobrecarga de atribuições e falha com referências cíclicas. 
<br>
<br>

&emsp; Marcar e Varrer; Faz a passagem e marca as variáveis que são referenciadas por alguém. As que não forem marcadas, serão apagadas. <br>
&emsp; **Vantagem:** É capaz de reconhecer referências cíclicas. Sem sobrecarga de atribuições. <br>
&emsp; **Desvantagem:** Pausas significativas e fragmentação de memória. <br>

<br>

&emsp; Cópia; Com uma passagem, o heap é dividido em dois espaços de mesmo tamanho com a cópia de todos os valores que são referenciados, ou "vivos". O outro espaço antigo, antes da cópia, são todos marcados como lixo e abandonados. Sendo assim, apenas sobrando os objetos "vivos" no espaço copiado. <br>
&emsp; **Vantagem:** Não tem fragmentação de memória. É capaz de reconhecer referências cíclicas. <br>
&emsp; **Desvantagem:** Alocação extra de memória. <br>

