public abstract class ContaAbstrata {
  private String numero;
  private double saldo;

  public ContaAbstrata (String numero) {
    this.numero = numero;
    this.saldo = 0.0;
  }

  public void creditar(double valor) {
    this.saldo = this.saldo + valor;
  }

  public double getSaldo() {
    return this.saldo;
  }
  
  public String getNumero() {
    return this.numero;
  }

  protected void setSaldo(double saldo) {
    this.saldo = saldo;
  }
  
  public abstract void debitar(double valor);

  public static void main(String[] args){
    ContaAbstrata ca1, ca2;
    ca1 = new Conta("21.342-7");
    ca2 = new ContaImposto("21.987-8");
    ca1.debitar(500);
    ca2.debitar(500);
    System.out.println(ca1.getSaldo());
    System.out.println(ca2.getSaldo());
  }
}