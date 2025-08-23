### Referências de livros: 
Tucker Nooran, "Linguagens de Programação" 2010. <br>
Flávio Varejão, "Linguagens de Programação". 

### Baseado em [Tucker Nooran 2010, Capítulos 1.1 - 1.3] 

# Princípios de projeto de linguagens 

## Sintaxe
Descreve o que constitui um programa "concreto". 

## Nomes e Tipos
Regras para nomear entidades e os valores que programas podem manupular. 

## Semântica
Efeito de cada comando sobre os valores das variáveis. 

## Paradigma (de Programação)
Padrão de resolução de problemas que se relaciona a um determinado gênero de programas e linguagens. 

## Imperativo  
Entrada -> Programa <br>
Controle -> Programa <br> 
ALU -> Programa <br>
Programa -> Saída <br> 

### FORTRAN:
```fortran
program circle 
real R , area 
C   Area do círculo    
read (* , *) R 
area = 3.14159 * R * R 
write (* , *)  'Area =' , area 
stop 
end 
```

## Orientado a Objetos: 
### JAVA: 
```java
public class Main { 
    public static void main(String[] args) { 
              System.out.println("Olá"); 
    } 
} 
```  
    
## Funcional: 
### QUICKSORT EM HASKELL: 
```haskell
qsort :: Ord a => [a] -> [a] 
qsort [ ] = [ ] 
qsort (p : xs) = qsort [x | x <- xs, x < p] ++ p ++ qsort [x] x <- xs. x >= p] 
```  

## Lógico:
### PROLOG:
```prolog
woman (mia). 
woman (jodie). 
woman (paty). 
playsAirGuitar (jodie). 
party. 
? - playsAirGuitar (mia). 
? - playsAirGuitar (jodie). 
% no yes 
```
