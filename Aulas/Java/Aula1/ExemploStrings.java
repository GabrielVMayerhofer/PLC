package Aulas.Java.Aula1;

public class ExemploStrings {
  public static void main(String[] args) {
    String s1 = "ricardo";
    String s2 = "Ricardo";

    System.out.println(s1.length());

    if (s1.equals(s2)) {
      System.out.println("igual");
    } else {
      System.out.println("diferente");
    }

    if (s1.equalsIgnoreCase(s2)) {
      System.out.println("igual");
    } else {
      System.out.println("diferente");
    }

    String saudacao = "Bem-vindo";
    System.out.println(saudacao.substring(0,3));
  }
}
