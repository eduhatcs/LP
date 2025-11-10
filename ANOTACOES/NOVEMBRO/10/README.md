Capítulo 17 

# 17 PROGRAMAÇÃO CONCORRENTE
- Comunicação? Compartilhamento? 
<br>zzzzzzzzzzzzz
- Dois cenários
<br>
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
<br>

<br>

## PROGRAMAÇÃO MÚLTIPLA
Vários programas são executaos, e carregados na memória, de maneira intercalada, usando um escalonador.

## MULTITHREAD
Aplicações com dois ou mais processadores onde cada thread pode ser executada por um deles.

## PROGRAMA != PROCESSO
**Programa:** Execução de um sequência de instruções.
<br>
**Processo:** Única sequência de instruções em execução e possui seu próprio estado, recursos anexados, sua memória e localização da instrução.

## PARALELO != DISTRIBUÍDO
**Paralelo:** Programa concorrente no qual vários contetos de execução (threads) estão ativos simultâneamente.
<br>
**Distribuído:** Programa concorrente projeto para ser executado simultaneamente em uma rede de processadores autônomos que NÃO compartilham a memória principal, com cada thread rodando separadamente.

## 17.1.2 THREAD
1. Criada: a thread foi criada, mas ainda não está pronta para rodar.
2. Executável: a thread está pronta para rodar (às vezes, esse estado é chamado de pronto). A thread aguarda por um processador no qual possa ser executada.
3. Executando: a thread está sendo executada em um processador. 
4. Bloqueada: a thread está esperando para entrar em uma seção de seu código que requer acesso exclusivo a um recurso compartilhado (variável), ou então voluntariamente ele cedeu o uso do seu processador.
5. Terminada: a thread já parou e não pode ser reiniciada.
