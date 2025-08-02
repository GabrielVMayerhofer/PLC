public class Etanol implements BombaDeCombustivel {
	private double precoLitro;

	public Etanol(double precoLitro) {
		this.precoLitro = precoLitro;
	}

	@Override
	public void abastecer(Automovel automovel, double quantidadeLitros) throws CombustivelNaoCompativel, CombustivelOverflow {
		TipoMotor motor = automovel.getMotor();

		if (motor != TipoMotor.ETANOL && motor != TipoMotor.FLEX)
			throw new CombustivelNaoCompativel("etanol");

		double disponivel = automovel.getCapacidadeMaximaTanque() - automovel.getCombustivelAtual();
		if (quantidadeLitros > disponivel)
			throw new CombustivelOverflow();

		automovel.setCombustivelAtual(automovel.getCombustivelAtual() + quantidadeLitros);
		calcularCusto(quantidadeLitros);
	}

	@Override
	public void calcularCusto(double quantidadeLitros) {
		System.out.println("Tipo: Etanol | Quantidade: " + quantidadeLitros + " L | Custo: " + (quantidadeLitros * precoLitro));
	}

	@Override
	public void ajustarPreco(double novoPreco) {
		this.precoLitro = novoPreco;
	}
}