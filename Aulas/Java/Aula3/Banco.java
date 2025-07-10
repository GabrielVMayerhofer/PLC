public class Banco{
  private Conta[] contas;
  private int indice;

  public Banco(){
    this.contas = new Conta[100];
    this.indice = 0;
    if (indice >= 100){
      throw new RuntimeException("Numero maximo de contas atingido");
    }
  }

  public void cadastrarConta(Conta c){
    this.contas[indice] = c;
    indice = indice + 1;
  }

  public Conta acharConta(String numero){
    int i = 0;
    boolean achou = false;
    Conta resposta = null;

    for(i = 0; i < indice; i++){
      if(numero.equals(contas[i].getNumero())){
        resposta = contas[i];
        achou = true;
      }
    }
    if(achou){
      return resposta;
    }else{
      throw new RuntimeException("Conta nao encontrada");
    }
  }

  public void creditar(String numero, double valor){
    Conta c = acharConta(numero);
    c.creditar(valor);
  }

  public void debitar(String numero, double valor){
    Conta c = acharConta(numero);
    c.debitar(valor);
  }

  public void renderJuros(String numero, double valor){
    Conta c = acharConta(numero);
    if(c instanceof Poupanca)
      ((Poupanca) c).renderJuros(valor);
    else
      throw new RuntimeException("Operacao invalida");
  }

  public double getBonus(String numero){
    Conta c = acharConta(numero);
    if(c instanceof ContaEspecial)
      return ((ContaEspecial) c).getBonus();
    else
      throw new RuntimeException("Operacao invalida");
  }

  public void renderBonus(String numero){
    Conta c = acharConta(numero);
    if(c instanceof ContaEspecial)
      ((ContaEspecial) c).renderBonus();
    else
      throw new RuntimeException("Operacao invalida");
  }

  public boolean checkConta(String numero){
    Conta c = acharConta(numero);
    if(c instanceof Poupanca)
      return false;
    else
      return true;
  }

  public double getSaldo(String numero){
    Conta c = acharConta(numero);
    return c.getSaldo();
  }

  public void transferir(String contaOrigem, String contaDestino, double valor){
    debitar(contaOrigem, valor);
    creditar(contaDestino, valor);
  }
}