package Aulas.Java.Aula1;

// nome do arquivo = nome da classe

public class Conta {
  private String numero;
  private double saldo;

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
