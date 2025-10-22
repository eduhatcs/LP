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

1. **Curto circuito. Benefícios e malefícios.** <br>
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
&emsp; Comando vs Expressão; <br>
&emsp; Cópia vs Referência;

<br>

7. **Semântica de controle de fluxo: Sequência; Condicionais; Laços;** <br>
&emsp; Sequência; <br>
&emsp; Condicionais; <br>
&emsp; Laços;

<br>

8. **Semântica E/S: Arquivos Padrão; Fluxos; Sequencial Formatada;** <br>
&emsp; Arquivos Padrão; <br>
&emsp; Fluxos; <br>
&emsp; Sequencial Formatada; 

<br>

9. **Acesso aleatório em Arquivos.** <br>

<br>

10. **Semântica Exceções: Retorno vs Parâmetro; Prosseguimento vs Finalização;** <br>
&emsp; Retorno vs Parâmetro; <br>
&emsp; Prosseguimento vs Finalização;

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

<br>

16. **Registros de ativação e Frame de Pilha. Funções recursivas.** <br>

<br>

17. **Pilha de tempo de execução.** <br>

<br>

18. **Memória estática vs Heap vs Pilha de tempo de execução.** <br>

<br>

19. **Palavra não usada vs não definida vs valor elementar.** <br>

<br>
 
20. **Overflow de Heap e de Pilha.** <br>
&emsp; Pilha: O overflow da Pilha ocorre pela falta de memória, que pode ser causada por loops de chamadas de funções excessivas ou infinitas. Também pode ser por alocação de variáveis locais muito grandes. <br>
<br>
&emsp; Heap: Uma causa de overflow de Heap ocorre pelo vazamento de memória, onde aloca memória dinamicamente, mas perde as referencias a ela sem a liberar. 

<br>

1.  **Lixo e coleta de lixo (Por que)?** <br>

<br>

22. **Estratégias: Contagem; Marcar e Varrer; Cópia;** <br>
&emsp; Contagem; Conta cada vez que é referenciada por alguém. O que não tiver um número de contagem maior do que 0, é apagado. <br>
&emsp; **Vantagem:** Remoção imediata. <br>
&emsp; **Desvantagem:** Sobrecarga de atribuições e falha com referências cíclicas. <br>
<br>

&emsp; Marcar e Varrer; Faz a passagem e marca as variáveis que são referenciadas por alguém. As que não forem marcadas, serão apagadas. <br>
&emsp; **Vantagem:** É capaz de reconhecer referências cíclicas. Sem sobrecarga de atribuições. <br>
&emsp; **Desvantagem:** Pausas significativas e fragmentação de memória. <br>

<br>

&emsp; Cópia; Com uma passagem, o heap é dividido em dois espaços de mesmo tamanho com a cópia de todos os valores que são referenciados, ou "vivos". O outro espaço antigo, antes da cópia, são todos marcados como lixo e abandonados. Sendo assim, apenas sobrando os objetos "vivos" no espaço copiado. <br>
&emsp; **Vantagem:** Não tem fragmentação de memória. É capaz de reconhecer referências cíclicas. <br>
&emsp; **Desvantagem:** Alocação extra de memória. <br>

