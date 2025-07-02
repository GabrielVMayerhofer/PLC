public class Produto {
  private String descricao;
  private double valor;
  private int estoque;

  public Produto(String newDescricao, double newValor){
    descricao = newDescricao;
    valor = newValor;
    estoque = 0;
  }

  public String lerDescricao(){
    return descricao;
  }

  public double checarValor(){
    return valor;
  }

  public int checarEstoque(){
    return estoque;
  }

  public void updateDescricao(String newDescricao){
    descricao = newDescricao;
  }

  public void updateValor(double newValor){
    valor = newValor;
  }

  public void vendeu(int qntVendeu){
    estoque = estoque - qntVendeu;
  }

  public void reestocou(int qntEstocou){
    estoque = estoque + qntEstocou;
  }

  public static void main(String[] args){
    Produto c = new Produto("Sabonete", 24.54);
    System.out.println("Produto: "+c.lerDescricao());
    System.out.println("Preço: "+c.checarValor());
    System.out.println("Estoque: "+c.checarEstoque());
    c.updateDescricao("Sabonete - O Melhor");
    c.updateValor(15.65);
    c.reestocou(8);
    System.out.println();
    System.out.println("Produto: "+c.lerDescricao());
    System.out.println("Preço: "+c.checarValor());
    System.out.println("Estoque: "+c.checarEstoque());
  }
}
