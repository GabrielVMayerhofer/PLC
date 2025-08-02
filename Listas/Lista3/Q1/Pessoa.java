public abstract class Pessoa implements Comparable<Pessoa> {
	private Integer idade;
	private String nome;

	public Pessoa(String nome, Integer idade) {
		this.nome = nome;
		this.idade = idade;
	}

	public abstract Ticket getTicketType();

	public Integer getAge() {
		return idade;
	}

	public String getName() {
		return nome;
	}

	public int compareTo(Pessoa outra) {
		return this.idade.compareTo(outra.idade);
	}

	public String toString() {
		return nome + ":" + idade + "[" + getTicketType() + "]";
	}
}