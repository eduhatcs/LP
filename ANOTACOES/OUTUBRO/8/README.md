Capítulos 9.5 - 9.7
# 9.5 REGISTROS DE ATIVAÇÃO
Um registro de ativação é o bloco de informação associado a uma ativação de função, incluindo os parâmetros e as variáveis locais da função.

- Se a linguagem não suportar recursividade
&emsp; +: Otimização <br>
&emsp; -: Memória

- Gerenciamento por meio de pilha.

### FRAME DE PILHA
Registro de ativação quando este último é alocado e desalocado dinâmicamente na pilha.

# 9.6 FUNÇÕES RECURSIVAS
```c
int fatorial(int n) {
    if (n < 2) return 1;
    else return n*fatorial(n-1);
}
```

Dinâmico = Main em C
Estático = Função dentro de Classe, ou, Classe dentro de classe. E para quem tem acesso

# 9.7 PILHA DE TEMPO DE EXECUÇÃO
Uma pilha de tempo de execução é uma pilha de registros de ativação usada para modelar a semântica de chamadas e retornos de funções.

```c
int h, i;
void B (int *w) {
    int j, k;
    i = 2*(*w);
    ...
}

void A (int *x, int *y) {
    bool i, j;
    B(&h);
}

int main() {
    int a, b;
    h = 5,
    a = 3,
    b = 2;
    A(&a, &b);
    ...
}
```
