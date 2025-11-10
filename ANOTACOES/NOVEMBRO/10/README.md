Capítulo 17 

# 17 PROGRAMAÇÃO CONCORRENTE
- Comunicação? Compartilhamento? 

- Dois cenários

1. Programa roda em um único processador, mas de tempos em tempos ele pode dinamicamente se dividir em threads concorrentes de controle.

```c
#pragma omp for

for (int i = 0; i < 10; i++) {
printf("%d\n", i);
}
```

2. O programa é visto como uma coleção de processos em cooperação que rodam em uma rede e compartilham dados. <br>
_Cliente servidor ou IPC_ <br>
_RPC e Socket_

## PROGRAMAÇÃO MÚLTIPLA
Vários programas são executaos, e carregados na memória, de maneira intercalada, usando um escalonador.

## MULTITHREAD
Aplicações com dois ou mais processadores onde cada thread pode ser executada por um deles.

## PROGRAMA != PROCESSO
**Programa:** Execução de um sequência de instruções.

**Processo:** Única sequência de instruções em execução e possui seu próprio estado, recursos anexados, sua memória e localização da instrução.

## PARALELO != DISTRIBUÍDO
**Paralelo:** Programa concorrente no qual vários contetos de execução (threads) estão ativos simultâneamente.

**Distribuído:** Programa concorrente projeto para ser executado simultaneamente em uma rede de processadores autônomos que NÃO compartilham a memória principal, com cada thread rodando separadamente.

## 17.1.2 THREAD
1. Criada: a thread foi criada, mas ainda não está pronta para rodar.
2. Executável: a thread está pronta para rodar (às vezes, esse estado é chamado de pronto). A thread aguarda por um processador no qual possa ser executada.
3. Executando: a thread está sendo executada em um processador. 
4. Bloqueada: a thread está esperando para entrar em uma seção de seu código que requer acesso exclusivo a um recurso compartilhado (variável), ou então voluntariamente ele cedeu o uso do seu processador.
5. Terminada: a thread já parou e não pode ser reiniciada.

## SEÇÃO CRÍTICA
Seção de código que requer acesso exclusivo a uma variável compartilhada.

## COMUNICAÇÃO INTERTHREADS
Acesso exclusivo a um dado compartilhado;

Troca de dados.

## 17.1.3 CORRIDAS E DEADLOCKS
- **PROBLEMAS:**

1. **Condição de corrida:** (às vezes chamada corrida crítica) ocorre quando o valor resultante de uma variável pode ser diferente, quando duas diferentes threas de um programa estão modificando essa mesma variável e dependendo de qual thread altera primeiro essa variável.

2. **Starvation:** Uma thread tem seu acesso a um recurso de maneira indefinida.

3. **Deadlock:** Uma thread espera um evento que nunca acontecerá

- As threads necessitam acesso exclusivo.

- As threads devem reter recursos enquanto esperam

- Os recursos não podem ser removidos das threads

- Cadeia circula de dependência (Ciclo direcionado a grafos)

# 17.2 ESTRATÉGIAS DE SINCRONIZAÇÃO

## 17.2.1 SEMÁFOROS
Os semáforos originalmente foram deﬁnidos por Dijkstra (1968a). Basicamente, um
semáforo é uma variável inteira e um mecanismo associado de enﬁleiramento de threads.
Duas operações atômicas, tradicionalmente chamadas de P e V, são deﬁnidas para um
semáforo s:

- P(s) – se s > 0 então atribui s = s – 1; caso contrário, bloqueia (enﬁleira) a
thread que chamou P.

- V (s) – se uma thread T é bloqueada no semáforo s, então acorda T; caso contrário,
atribui s = s + 1.

As operações P e V são atômicas no sentido de que elas não podem ser interrompidas,
uma vez que tenham sido iniciadas. Se o semáforo somente assume os valores 0 e 1, ele é
chamado de semáforo binário. Caso contrário, ele é chamado de semáforo de contagem.

### fortran
```fortran
program SimpleProducerConsumer;
var buffer : string;
    full : semaphore = 0;
    empty : semaphore = 1;
    
procedure Producer;
var tmp : string
begin
    while (true) do begin
        produce(tmp);
        P(empty); { begin critical section }
        buffer := tmp;
        V(full); { end critical section }
    end;
end;

procedure Consumer;
var tmp : string
begin
    while (true) do begin
        P(full); { begin critical section }
        tmp := buffer;
        V(empty); { end critical section }
        consume(tmp);
    end;
end;

begin
    cobegin
        Producer; Consumer;
    coend;
end.
```

## 17.2.2 MONITORES
Os monitores (Hoare, 1974) proporcionam um dispositivo alternativo para gerenciar
a concorrência e evitar o deadlock. Os monitores proporcionam a base para a sincroni-
zação em Java. O conceito de um monitor é baseado no monitor ou kernel dos primeiros
sistemas operacionais; lá ele era usado como um método de comunicação entre threads do
sistema operacional. Esses primeiros monitores rodavam em modo privilegiado e eram
não-interrompíveis.

O bloqueio da seção crítica na versão semáforo é proporcionado automaticamente
pelo monitor em cada função ou procedimento. Isso signiﬁca que um produtor tem que
tentar uma operação put para poder determinar se há ou não espaço no buffer. Nesse caso,
após a operação put, um produtor deve veriﬁcar o valor da variável count que controla o
número de entradas de buffer que estão em uso. Se o buffer estiver cheio, então o produtor
espera que ocorra a condição nonfull. Assim, o semáforo de contagem geral anterior foi
transformado em uma variável inteira e uma condição. As mudanças na função get são
similares. Repare que quando uma thread é forçada a esperar por uma condição, é libera-
do o bloqueio sobre o monitor.
