public class RepoContasArray implements RepoContas{
  private ContaAbstrata contas[];
  private int indice = 0;

  public RepoContasArray(){
    contas = new ContaAbstrata[100];
  }

  public void inserir(ContaAbstrata conta){
    contas[indice] = conta;
    indice++;
  }

  public ContaAbstrata procurar(String numero){
    ContaAbstrata resposta = null;
    for (int i = 0; i < indice; i++)
      if (numero.equals(contas[i].getNumero())){
        resposta = contas[i];
        break;
      }
    return resposta;
  }

  public void remover(String numero){
    for (int i = 0; i < indice; i++) 
      if (contas[i].getNumero().equals(numero)) {
        contas[i] = contas[indice - 1]; // substitui pela última
        contas[indice - 1] = null;
        indice--;
        break;
    }
  }

  public void atualizar(ContaAbstrata conta) {
    for (int i = 0; i < indice; i++)
      if (contas[i].getNumero().equals(conta.getNumero())) {
        contas[i] = conta;
        break;
      }
  }

  public boolean existe(String numero){
    return procurar(numero) != null;
  }

}