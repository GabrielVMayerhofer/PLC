public class CombustivelNaoCompativel extends Exception {
	public CombustivelNaoCompativel(String tipoCombustivel) {
		super("Motor não compatível com " + tipoCombustivel + ".");
	}
}