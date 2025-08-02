public class Main {
	public static void main(String[] args) {
    Automovel carroFlex = new Automovel(TipoMotor.FLEX, 50.0);
    Automovel carroGasolina = new Automovel(TipoMotor.GASOLINA, 45.0);
    Automovel carroEtanol = new Automovel(TipoMotor.ETANOL, 40.0);

		Gasolina bombaGasolina = new Gasolina(5.0);
		Etanol bombaEtanol = new Etanol(4.0);

		try {
			bombaGasolina.abastecer(carroEtanol, 10.0);
		} catch (Exception e) {
			System.out.println("Erro: " + e.getMessage());
		}

		try {
			bombaGasolina.abastecer(carroGasolina, 50.0);
		} catch (Exception e) {
			System.out.println("Erro: " + e.getMessage());
		}

		try {
			bombaGasolina.abastecer(carroGasolina, 30.0);
		} catch (Exception e) {
			System.out.println("Erro: " + e.getMessage());
		}


		try {
			bombaEtanol.abastecer(carroFlex, 30.0);
		} catch (Exception e) {
			System.out.println("Erro: " + e.getMessage());
		}

		bombaGasolina.ajustarPreco(6.0);
		try {
			bombaGasolina.abastecer(carroGasolina, 10.0);
		} catch (Exception e) {
			System.out.println("Erro: " + e.getMessage());
		}
	}
}