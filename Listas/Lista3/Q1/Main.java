public class Main {
	public static void main(String[] args) {
		Queue<Pessoa> fila = new Queue<>(5);

		fila.push(new Crianca("C1", 5));
		fila.push(new Adulto("A1", 30));
		fila.push(new Crianca("C2", 6));
		fila.push(new Adulto("A2", 20));
		fila.push(new Crianca("C3", 8));

		while (!fila.isEmpty()) {
      Pessoa p = fila.pop();
			System.out.println(p);
		}
	}
}