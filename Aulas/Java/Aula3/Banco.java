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
    while (i < indice && !achou){
      if(numero.equals(contas[i].getNumero())){
        resposta = contas[i];
        achou = true;
      } else {i = i + 1;}
    }
    if(!achou){
      throw new RuntimeException("Conta nao encontrada");
    }
    return resposta;
  }

  public void creditar(String numero, double valor){
    Conta c = acharConta(numero);
    c.creditar(valor);
  }

  public void debitar(String numero, double valor){
    Conta c = acharConta(numero);
    c.debitar(valor);
  }

  public double getSaldo(String numero){
    Conta c = acharConta(numero);
    return c.getSaldo();
  } 
}