1. 
a) (b) -- Variáveis de instância: y -- Variáveis de classe: x  
b) (b) -- Métodos de instância: methodTwo -- Métodos de classe: methodOne  

---

2.
(a) -- Variável de classe é a mesma para todas as instâncias

---

3. (d)
```
- students -> array [ | | | | | | | | | ]  
- studentName -> "Peter Parker"  
- students[0] -> "Peter Parker" -- [->"PP"| | | | | | | | | ]  
- studentName -> null (perde a referência)  
    
Resultado final: 2 referências  
  - students -> array  
  - students[0] -> "Peter Parker"  
```

---

4. (b)

---

5. 
```java
public abstract class Forma {
    public double PosicaoX, PosicaoY;
    public abstract double area();

    public void move(double deltaX, double deltaY) {
        PosicaoX += deltaX;
        PosicaoY += deltaY;
    }
}

public class Circulo extends Forma {
    public double raio;

    public Circulo(double raio) {
        this.raio = raio;
    }

    public double area() {
        return Math.PI * raio * raio;
    }
}

public class Retangulo extends Forma {
    public double lado1, lado2;

    public Retangulo(double lado1, double lado2) {
        this.lado1 = lado1;
        this.lado2 = lado2;
    }
    
    public double area() {
        return lado1 * lado2;
    }
}
```
