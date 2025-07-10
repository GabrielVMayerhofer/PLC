public class ContaEspecial extends Conta {
  private double bonus;


  public ContaEspecial(String numero){
    super(numero);
    bonus = 0;
  }

  public void renderBonus(){
    super.creditar(this.bonus);
    bonus = 0;
  }

  public double getBonus(){
    return this.bonus;
  }

  public void creditar(double valor){
    super.creditar(valor);
    bonus = bonus + (valor * 0.01);
  }

  public static void main(String[] args){
    // ContaEspecial c = new ContaEspecial("we");
    // c.creditar(200);
    // System.out.println(c.getSaldo());
    // System.out.println(c.getBonus());
    // c.renderBonus();
    // c.debitar(100);
    // System.out.println(c.getSaldo());
    // System.out.println(c.getBonus());
  }
}