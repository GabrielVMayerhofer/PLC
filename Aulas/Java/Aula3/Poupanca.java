public class Poupanca extends Conta {
  public Poupanca (String numero) {
    super(numero);
  }
  public void renderJuros(double taxa) {
    double juros = this.getSaldo() * taxa;
    this.creditar(juros);
  }

  public static void main(String[] args){
    Poupanca poupanca;
    poupanca = new Poupanca("21.342-7");
    poupanca.creditar(500.87);
    poupanca.debitar(45.00);
    System.out.println(poupanca.getSaldo());
    poupanca.renderJuros(.10);
    System.out.println(poupanca.getSaldo());
  }
}