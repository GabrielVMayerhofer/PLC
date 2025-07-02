public class TestaConta {
  public static void main(String[] args) {
    Conta c = new Conta("123-X", 8.0);
    Conta d = new Conta("ABC");
    System.out.println("Conta "+d.getNumero());
    System.out.println("Saldo "+d.getSaldo());
    System.out.println();
    System.out.println("Conta "+c.getNumero());
    System.out.println("Saldo "+c.getSaldo());
    System.out.println();
    c.creditar(10.0);
    c.debitar(5.0);
    System.out.println("Conta "+c.getNumero());
    System.out.println("Saldo "+c.getSaldo());
  } 
}