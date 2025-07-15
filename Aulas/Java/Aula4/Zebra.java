public class Zebra implements Animal {
  int listas;
  double peso;

  public Zebra(int l, double p){
    listas = l;
    peso = p;
  }

  public void nasca(){
    System.out.println("zebra nasceu");
  }

  public void passeie(){
    System.out.println("cavalo listrado andando");
  }

  public void durma(){
    System.out.println("Dorme em pe");
  }

  public double peso(){
    return peso;
  }

  public void contaListras(){ //metodo adicional
    System.out.println("Esta zebra tem " + listas + " listas");
  }
}