package Aulas.Java.Aula1;

public class Produto {
  private String descricao;
  private double valor;
  private int estoque;

  public String lerDescricao(){
    return descricao;
  }

  public double checarValor(){
    return valor;
  }

  public int checarEstoque(){
    return estoque;
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
