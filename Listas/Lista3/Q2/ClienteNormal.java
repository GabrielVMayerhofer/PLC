public class ClienteNormal extends ClienteBase {
	public ClienteNormal(String nome) {
		super(nome);
	}

	@Override
	public boolean isVIP() {
		return false;
	}
}