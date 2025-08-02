import java.util.ArrayList;
import java.util.List;
import Math.ceil;

public class Sistema {
  private double precoBurger = 8.5;
  private double precoBatata = 4.5;
  private double precoRefri = 3.0;

  private List<Cliente> clientes = new ArrayList<>();

  public double getPrecoBurger() {
    return precoBurger;
  }

  public double getPrecoBatata() {
    return precoBatata;
  }

  public double getPrecoRefri() {
    return precoRefri;
  }

  public void adicionarClientes(String nome, boolean isVIP, double bonus) {
    Cliente cliente;
    if (isVIP) {
      cliente = new ClienteVIP(nome, bonus);
    } else {
      cliente = new ClienteNormal(nome);
    }
    clientes.add(cliente);
  }

  public void adicionarCompra(Cliente cliente, int numBurger, int numBatata, int numRefri) {
    double total;
    int pontosNormal = (int)(numBurger * (precoBurger/10) + numBatata * (precoBatata/10) + numRefri * (precoRefri/10));
    if (cliente.isVIP()) {
      bonusVIP = ((ClienteVIP) cliente).getBonus();
      total = Math.ceil(pontosNormal * (1 + bonusVIP));
    }
    else {
      total = pontosNormal;
    }
    cliente.adicionarPontos(total);
    
  }

  public List<Cliente> getChamps() {
    //todo sort
    return clientes;
  }
}