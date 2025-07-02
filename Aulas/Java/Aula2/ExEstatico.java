public class ExEstatico{
  private int numero;
  private double saldo;
  private static int proximo; //* proximo eh compartilhado entre todas as instancias de ExEstatico 
  public ExEstatico() {
    this.numero = ExEstatico.getProximo();
    this.saldo = 0.0;
  }
  private static int getProximo() {
    proximo = proximo + 1;
    return proximo;
  }

  public int getNumero(){
    return this.numero;
  }

  public static void main(String[] args){
    ExEstatico a = new ExEstatico();
    ExEstatico b = new ExEstatico();
    ExEstatico c = new ExEstatico();
    System.out.println(a.getNumero());
    System.out.println(b.getNumero());
    System.out.println(c.getNumero());
    System.out.println(ExEstatico.getProximo());
  }
}