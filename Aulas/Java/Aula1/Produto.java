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

  
}
