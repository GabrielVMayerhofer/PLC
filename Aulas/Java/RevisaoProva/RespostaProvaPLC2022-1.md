1.
a. (b) - Variáveis de instância: y -- Variáveis de classe: x

b. (b) - Métodos de instância: methodTwo -- Métodos de classe: methodOne

2. (a) -- Variáveis de classe é a mesma para todas as instâncias 

3. (a)

4. (d) 

  -- students -> [ | | | | | | | | | ] Array

  -- studentName -> "Peter Parker"

  -- student[0] -> "Peter Parker" -- [-> "PP"| | | | | | | | | ] (aponta para "PP")

  -- studentName -/> "Peter Parker"


  -- students --> Array && students[0] --> "Peter Parker" -- 2 referências

5.

*public abstract* class Forma{

  public double PosicaoX, PosicaoY;

  *public abstract* double area();

  *public* void move(double deltaX, double deltaY){

    *PosicaoX += deltaX;*

    *PosicaoY += deltaY;*

  }

}


*public* class Circulo *extends Forma*{

  public double raio;

  public Circulo(double raio){

    *this.raio = raio;*

  }

  *public* double area(){

    *return raio * raio * pi;* 

  }

}


*public* class Retangulo *extends Forma*{

  public double lado1, lado2;

  public Retangulo(double lado1, double lado2){

    *this.lado1 = lado1;*

    *this.lado2 = lado2;*

  }

  *public* double area(){

    *return lado1 * lado2;*

  }

}
