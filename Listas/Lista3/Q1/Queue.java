import java.util.ArrayList;
import java.util.Collections;

public class Queue<T extends Pessoa> {
	private ArrayList<T> pessoas;
	private int capacidade;


	public Queue(int capacidade) {
		this.capacidade = capacidade;
		this.pessoas = new ArrayList<>(capacidade);
	}

	public Queue() {
		this(10);
	}

	public void push(T pessoa) {
		pessoas.add(pessoa);
		Collections.sort(pessoas, Collections.reverseOrder());
	}

	public T pop() {
		if (!isEmpty())
			return pessoas.remove(0);
		return null;
	}

	public boolean isEmpty() {
		return pessoas.isEmpty();
	}
}