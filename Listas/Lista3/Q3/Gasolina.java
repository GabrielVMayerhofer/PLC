public class Gasolina implements BombaDeCombustivel {
	private double precoLitro;

	public Gasolina(double precoLitro) {
		this.precoLitro = precoLitro;
	}

	@Override
	public void abastecer(Automovel automovel, double quantidadeLitros) throws CombustivelNaoCompativel, CombustivelOverflow {
		TipoMotor motor = automovel.getMotor();

		if (motor != TipoMotor.GASOLINA && motor != TipoMotor.FLEX)
			throw new CombustivelNaoCompativel("gasolina");

		double disponivel = automovel.getCapacidadeMaximaTanque() - automovel.getCombustivelAtual();
		if (quantidadeLitros > disponivel)
			throw new CombustivelOverflow();

		automovel.setCombustivelAtual(automovel.getCombustivelAtual() + quantidadeLitros);
		calcularCusto(quantidadeLitros);
	}

	@Override
	public void calcularCusto(double quantidadeLitros) {
		System.out.println("Tipo: Gasolina | Quantidade: " + quantidadeLitros + " L | Custo: " + (quantidadeLitros * precoLitro));
	}

	@Override
	public void ajustarPreco(double novoPreco) {
		this.precoLitro = novoPreco;
	}
}