public class Aluno{
  private String name;
  private int cpf;
  private int idade;
  private Curso curso;

  public Aluno(String name, int cpf, int idade, Curso curso){
    this.name = name;
    this.cpf = cpf;
    this.idade = idade;
    this.curso = curso;
  }

    public String getName() {
      return this.name;
    }

    public int getCPF() {
      return this.cpf;
    }

    public int getIdade() {
      return this.idade;
    }

    public Curso getCurso() {
      return this.curso;
    }

    public void setName(String name) {
      this.name = name;
    }

    public void setCPF(int cpf) {
      this.cpf = cpf;
    }

    public void setIdade(int idade) {
      this.idade = idade;
    }

    public void setCurso(Curso curso) {
      this.curso = curso;
    }
}