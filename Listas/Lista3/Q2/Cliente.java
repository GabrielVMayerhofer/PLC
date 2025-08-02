public interface Cliente {
	String getNome();
	double getPontuacao();
	boolean isVIP();
	void adicionarPontos(double pontos);
}