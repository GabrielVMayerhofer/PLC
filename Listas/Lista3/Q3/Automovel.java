public class Automovel{
  double combustivelAtual;
  double capacidadeMaximaTanque;
  TipoMotor tipoMotor;

  public Automovel(TipoMotor tipoMotor, double capacidadeMaximaTanque) {
    this.tipoMotor = tipoMotor;
    this.capacidadeMaximaTanque = capacidadeMaximaTanque;
    this.combustivelAtual = 0;
  }

  public double getCombustivelAtual() {
    return combustivelAtual;
  }

  public double getCapacidadeMaximaTanque(){
    return capacidadeMaximaTanque;
  }

  public TipoMotor getMotor() {
    return tipoMotor;
  }

  public void setCombustivelAtual(double combustivelAtual) {
    this.combustivelAtual = combustivelAtual;
  }

  public void setCapacidadeMaxima(double capacidadeMaximaTanque) {
    this.capacidadeMaximaTanque = capacidadeMaximaTanque;
  }
}