public class BancoNovo {
  private RepoContas contas;

  public BancoNovo(RepoContas rep) {
    this.contas = rep;
  }

  public void cadastrar(ContaAbstrata conta) {
    String numero = conta.getNumero();
    if (!contas.existe(numero))
      contas.inserir(conta);
    else
      throw new RuntimeException("Conta já cadastrada");
  }

  public void creditar(String numero, double valor) {
    ContaAbstrata conta = contas.procurar(numero);
    conta.creditar(valor);
  }

  public void debitar(String numero, double valor) {
    ContaAbstrata c = contas.procurar(numero);
    c.debitar(valor);
  }

  public void renderJuros(String numero, double taxa) {
    ContaAbstrata c = contas.procurar(numero);
    if (c instanceof Poupanca)
      ((Poupanca) c).renderJuros(taxa);
    else
      throw new RuntimeException("Operação inválida: conta não é poupança");
  }

  public double getBonus(String numero) {
    ContaAbstrata c = contas.procurar(numero);
    if (c instanceof ContaEspecial)
      return ((ContaEspecial) c).getBonus();
    else
      throw new RuntimeException("Operação inválida: conta não é especial");
  }

  public void renderBonus(String numero) {
    ContaAbstrata c = contas.procurar(numero);
    if (c instanceof ContaEspecial)
      ((ContaEspecial) c).renderBonus();
    else
      throw new RuntimeException("Operação inválida: conta não é especial");
  }

  public double getSaldo(String numero) {
    ContaAbstrata c = contas.procurar(numero);
    return c.getSaldo();
  }

  public void transferir(String contaOrigem, String contaDestino, double valor) {
    ContaAbstrata origem = contas.procurar(contaOrigem);
    ContaAbstrata destino = contas.procurar(contaDestino);

    origem.debitar(valor);
    destino.creditar(valor);
  }
}