public class Programa{
  public static void main(String[] args){
    Banco b = new Banco();
    Conta c1 = new Conta("C1-a");
    Poupanca c2 = new Poupanca("C2-b");
    Conta c3 = new Conta("C3-c");
    ContaEspecial c4 = new ContaEspecial("C4-d");
    b.cadastrarConta(c1);
    b.cadastrarConta(c2);
    b.cadastrarConta(c3);
    b.cadastrarConta(c4);
    // System.out.println(b.acharConta("C2-b").getSaldo());
    b.creditar("C2-b", 23);
    // System.out.println(b.acharConta("C2-b").getSaldo());
    // b.debitar("C2-b", 3);
    // System.out.println(b.acharConta("C2-b").getSaldo());
    b.creditar("C1-a", 54);
    b.creditar("C4-d", 54);
    // System.out.println(b.acharConta("C1-a").getSaldo());
    // System.out.println(b.acharConta("C1-a").getNumero());
    // b.acharConta("Cww"); //* erro -> nao achou
    b.transferir("C1-a","C2-b", 14);
    // System.out.println(c1.getNumero()+" "+c1.getSaldo());
    // System.out.println(c2.getNumero()+" "+c2.getSaldo());
    // System.out.println(b.checkConta(c1.getNumero()));
    // System.out.println(b.checkConta(c2.getNumero()));
    b.renderJuros("C2-b", 0.1);
    // b.renderJuros("C1-a", 10); //* Erro, operacao invalida (render juros em conta)
    // System.out.println(c2.getSaldo());
    // System.out.println(b.getSaldo("C4-d"));
    // System.out.println(b.getBonus("C4-d"));
    b.renderBonus("C4-d");
    // System.out.println(b.getSaldo("C4-d"));
    // System.out.println(b.getBonus("C4-d"));
  }
}