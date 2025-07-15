public interface RepoContas {
  void inserir(ContaAbstrata conta);
  ContaAbstrata procurar(String numero);
  void remover(String numero);
  void atualizar(ContaAbstrata conta);
  boolean existe(String numero);
}