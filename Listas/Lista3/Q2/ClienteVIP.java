public class ClienteVIP extends ClienteBase {
	private double bonus;

	public ClienteVIP(String nome, double bonus) {
		super(nome);
		this.bonus = bonus;
	}

	@Override
	public boolean isVIP() {
		return true;
	}

	public double getBonus() {
		return bonus;
	}
}