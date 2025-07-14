public class Conta extends ContaAbstrata{
  public Conta(String numConta){
    super(numConta);
  }

  public void debitar(double valor) {
    super.setSaldo(this.getSaldo() - valor);
  }
}
