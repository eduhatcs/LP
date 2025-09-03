Capítulos 5.4 e 5.5

# LISTAS E FATIAS
### PYTHON
```python
>>> b = [33, 55, 'hello', 'abc']
```

- Heterogênea
### PYTHON
```python
>>> B = I[x1:x2, y1:y2]
```

## FATIA
Série contígua de entradas especificadas pelo seu índice inicial e final. 

## STRING
```c
char* msg = "hello";
```
### PROBLEMAS: 
1. Lembrar do \0 no final da string.
2. _S1 = S2;_ Em C pode ser que o valor não seja copiado para a nova variável, mas sim o endereço.
3. _C++_: Problema de sobrecarga.
<br>
- Java, Python, Perl: Nativo.

<br>

## ESTRUTURA / REGISTRO
- Lista = Estrutura? **Falso**
### Estrutura: 
Conjunto de elementos de tipos potencialmente distintos chamados **campos**.

### Lista -> Índice; Estrutura -> Campo
### C
```c
struct employeeType {
    int id;
    char name[26];
    int age;
    float salary;
    char dept;
};

struct employeeType e;
```
- Cada campo -> nome único;
- Cada campo está armazenado de maneira contígua na memória. **Portabilidade**
### C
```c
e->age = 31;
```

## REGISTRO VARIANTE
Dois ou mais campos compartilham a mesma memória
### C:
```c
union myUnion {
    int i;
    float r;
};

union myUnion u;
u.i = 42;
printf("%f\n", u.r);
```

### ADA:
```ada
type union(b : boolean) is
    record
        case b is
            when true =>
                i : integer;
            when false =>
                r : float;
        end case;
    end record;
togged : union;
    begin
        togged := (b => false, r => 3.37);
        put(togged.i); // Erro de compilação
```
