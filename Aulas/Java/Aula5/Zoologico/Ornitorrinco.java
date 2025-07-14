public class Ornitorrinco implements Animal{
  double peso;

  Ornitorrinco(double p){
    peso = p ;
  }

  public double peso(){
    return peso;
  }

  public void nasca(){
    System.out.println("pato feio");
  }

  public void passeie(){
    System.out.println("anda y nada");
  }

  public void durma(){
    System.out.println("dorme no buraco");
  }
}