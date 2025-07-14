public class Banco implements RepoContas{
  private RepoContas contas;
  
  public Banco(RepoContas rep){
    this.contas = rep;
  }

  public void cadastrar(ContaAbstrata conta){
      contas.inserir(conta);
  }

  public void inserir(ContaAbstrata conta){
    String numero = conta.getNumero();
    if(!contas.existe(numero))
      contas.inserir(conta);
    else 
      throw new RuntimeException("Conta existente");
  }
  
  public ContaAbstrata procurar(String numero){

  }
  
  public void remover(String numero){

  }
  
  public void atualizar(ContaAbstrata conta){

  }
  
  public boolean existe(String numero){

  }

}