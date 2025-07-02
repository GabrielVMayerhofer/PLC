public class Curso {
  private int codigo;
  private String name;

  public Curso(int codigo, String name){
    this.codigo = codigo;
    this.name = name;
  }

  public Curso(String name){
    this(0, name);
  }

  public Curso(int codigo){
    this(codigo,"Unnamed");
  }

  public int getCodigo(){
    return this.codigo;
  }

  public String getName(){
    return this.name;
  }

  public void setCodigo(int codigo){
    this.codigo = codigo;
  }

  public void setName(String name){
    this.name = name;
  }
}