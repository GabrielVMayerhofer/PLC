public class Pilha <T>{
  private T[] elementos;
  private int topo, max;

  @SuppressWarnings("unchecked")
  public Pilha(int max) {
    this.max = max;
    this.topo = -1;
    this.elementos = (T[]) new Object[max];
  }

  public void push(T e){
    if(topo < (max-1))
      elementos[++topo] = e;
    else
      throw new IllegalStateException("Pilha cheia");
  }

  public T pop(){
    if(topo >= 0)
      return elementos[topo--];
    else
      throw new IllegalStateException("Pilha vazia");
  }
}