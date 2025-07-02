public class TestaAluno{
  public static void main(String[] args){
    Curso d = new Curso(202);
    System.out.println(d.getCodigo());
    System.out.println(d.getName());
    System.out.println();
    Curso c = new Curso(101, "ABC");
    Aluno a = new Aluno("Cesar", 444, 32, c);
    System.out.println(a.getName());
    System.out.println(a.getCPF());
    System.out.println(a.getIdade());
    System.out.println(a.getCurso().getName());
    System.out.println(a.getCurso().getCodigo());
    System.out.println();
    a.getCurso().setName("EC");
    a.getCurso().setCodigo(67);
    a.setName("Cesar Cielo");
    a.setCPF(404);
    a.setIdade(44);
    System.out.println(a.getName());
    System.out.println(a.getCPF());
    System.out.println(a.getIdade());
    System.out.println(a.getCurso().getName());
    System.out.println(a.getCurso().getCodigo());
  }
}