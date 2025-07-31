1. 

Classe1 a = new Classe1 -- y = 8 | x = 5 = 7 = 3  
Classe1 b = new Classe2 -- y = 4 | x = 7 = 3  
Classe2 c = new Classe2 -- y = 6 | x = 3  
  
a.function = 24  
b.function = 7 -- function de Classe2  
c.function = 9  
  
a -- y = 4 | x = 3  
b -- y = 6 | x = 3  
  
a.function = 7 -- function de Classe2  
b.function = 9  

---
  
2.
```
|-------------------------------------------------|    I = Interface   
|-------------------------------------| I | C | A |    C = Classe  
|-------------------------------------------------|    A = Classe Abstrata  
| não podem decl. atr.                | S | N | N |  
| não podem decl. métodos c/ imp.     | S | N | N |  
| não podem decl. métodos s/ imp.     | N | S | N |  
| não permitem criação de obj. c/ new | S | N | S |  
|-------------------------------------------------|  
```

---

3.
a)
```java
public class TestaFila{
  public static void main(String args[]){
    Fila <String> fs = new Fila<>();
    fs.insere("abc");
    fs.insere("def");

    Fila <Double> fdouble = new Fila<>();
    fdouble.insere(3.0);
    fdouble.insere(2.5);
  }
}
```

b)
```java
public class ExceptionFV extends Exception{
  public ExceptionFV(){
    super("Fila vazia");
  }
}

public class Fila<T> {
  private T[] dados;
  private int primeiro, ultimo;

  public Fila() {
    dados = (T[]) new Object[100];
    primeiro = 0;
    ultimo = 0;
  }

  public void insere(T valor) {
    dados[ultimo++] = valor;
  }

  public T remove() throws ExceptionFV {
    if (primeiro == ultimo){
      throw new ExeptionFV
    }
    return dados[primeiro++];
  }
}
```

---

4. Igual o da prova de 2022-1
