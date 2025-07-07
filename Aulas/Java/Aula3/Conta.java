// nome do arquivo = nome da classe

public class Conta {
  private String numero;
  private double saldo;

  public Conta(String numConta, double numSaldo){
    numero = numConta;
    saldo = numSaldo;
  }

  public Conta(String numConta){
    numero = numConta;
  }

  public void creditar(double valor) {
    saldo = saldo + valor;
  }

  public void debitar(double valor) {
    saldo = saldo - valor;
  }

  public double getSaldo() {
    return saldo;
  }
  
  public String getNumero() {
    return numero;
  }

}
