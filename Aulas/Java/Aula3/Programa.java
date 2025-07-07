public class Programa{
  public static void main(String[] args){
    Banco b = new Banco();
    Conta c1 = new Conta("C1-a");
    Conta c2 = new Conta("C2-b");
    Conta c3 = new Conta("C3-c");
    b.cadastrarConta(c1);
    b.cadastrarConta(c2);
    b.cadastrarConta(c3);
    System.out.println(b.acharConta("C2-b").getSaldo());
    b.creditar("C2-b", 23);
    System.out.println(b.acharConta("C2-b").getSaldo());
    b.debitar("C2-b", 3);
    System.out.println(b.acharConta("C2-b").getSaldo());
    b.creditar("C1-a", 54);
    System.out.println(b.acharConta("C1-a").getSaldo());
    System.out.println(b.acharConta("C1-a").getNumero());
    b.acharConta("Cww"); //erro -> nao achou
  }
}