public class ExceptionEx extends Exception{
  private double saldo;
  private String numero;

  public ExceptionEx(String numero, double saldo) {
    super("Saldo Insuficiente");
    this.numero = numero;
    this.saldo = saldo;
  }

  public double getSaldo() {
    return saldo;
  }
}