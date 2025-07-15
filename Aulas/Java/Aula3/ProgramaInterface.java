public class ProgramaInterface {
  public static void main(String[] args) {
    RepoContas repositorio = new RepoContasArray();

    BancoNovo banco = new BancoNovo(repositorio);

    ContaAbstrata c1 = new Conta("001");
    ContaAbstrata c2 = new ContaEspecial("002");
    ContaAbstrata c3 = new Poupanca("003");

    banco.cadastrar(c1);
    banco.cadastrar(c2);
    banco.cadastrar(c3);

    banco.creditar("001", 100.0);
    banco.creditar("002", 200.0);
    banco.creditar("003", 300.0);

    banco.debitar("001", 50.0);
    banco.debitar("002", 20.0);

    banco.renderJuros("003", 0.1);

    banco.renderBonus("002");

    System.out.println("Saldo da conta 001: " + banco.getSaldo("001"));
    System.out.println("Saldo da conta 002: " + banco.getSaldo("002"));
    System.out.println("Saldo da conta 003: " + banco.getSaldo("003"));

    banco.transferir("003", "001", 100.0);

    System.out.println("Saldo da conta 001 após transferência: " + banco.getSaldo("001"));
    System.out.println("Saldo da conta 003 após transferência: " + banco.getSaldo("003"));

    System.out.println("Bônus da conta 002: " + banco.getBonus("002"));
  }
}