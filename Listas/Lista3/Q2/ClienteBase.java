public abstract class ClienteBase implements Cliente {
	protected String nome;
	protected double pontuacao;

	public ClienteBase(String nome) {
		this.nome = nome;
		this.pontuacao = 0;
	}

	public String getNome() {
		return nome;
	}

	public double getPontuacao() {
		return pontuacao;
	}

	public void adicionarPontos(double pontos) {
		this.pontuacao += pontos;
	}
}