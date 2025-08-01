public class Generics {

  public static <T> void printArray(T[] array) {
    for (T element : array) {
      System.out.println(element);
    }
  }

  public static void main(String[] args) {
    Integer[] intArray = {1, 2, 3, 4, 5};
    String[] strArray = {"Hello", "World"};

    printArray(intArray);
    printArray(strArray);
  }
}
