public class Par{
  private int a, b;
  
  public Par(int a, int b) {
    this.a = a;
    this.b = b;
  }
  public String toString() {
    return "(" + a + ", " + b + ")";
  }

  public static void main(String[] args) {
    Pilha<Par> p1 = new Pilha<Par>(10);
    p1.push(new Par(1, 2));
    p1.push(new Par(3, 4));
    p1.push(new Par(5, 6));
    System.out.println(p1.pop() + "\n" + p1.pop() + "\n" + p1.pop());

    Pilha<Integer> p2 = new Pilha<Integer>(10);
    p2.push(10);
    p2.push(20);
    p2.push(30);
    System.out.println(p2.pop() + "\n" + p2.pop() + "\n" + p2.pop());
  }
}
