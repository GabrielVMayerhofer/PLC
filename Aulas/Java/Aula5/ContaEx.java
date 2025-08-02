public class ContaEx {
  private String numero;
  private double saldo;

  public void debitar(double valor) throws ExceptionEx {
    if (valor <= saldo) {
      saldo -= valor;
    } else {
      //System.out.println("Saldo insuficiente para debitar " + valor);
      throw new ExceptionEx(numero, saldo);

    }
  }

  public static void main(String args[]){
    ContaEx conta = new ContaEx();
    conta.numero = "12345";
    conta.saldo = 100.0;

    try {
      conta.debitar(150.0);
    } catch (ExceptionEx e) {
      System.out.println(e.getMessage() + " - Saldo atual: " + e.getSaldo());
    }
  }
}