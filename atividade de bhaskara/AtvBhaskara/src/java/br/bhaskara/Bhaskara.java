package br.bhaskara;

public class Bhaskara {

    private String j;
    private double vA;
    private double vB;
    private double vC;
    private double bhaskara;
    double delta, x1, x2;

    public double getValorA() {
        return vA;
    }

    public void setValorA(double vA) {
        this.vA = vA;
    }

    public double getValorB() {
        return vB;
    }

    public void setValorB(double vB) {
        this.vB = vB;
    }

    public double getValorC() {
        return vC;
    }

    public void setValorC(double vC) {
        this.vC = vC;
    }

    public double getBhaskara() {
        return bhaskara;
    }

    public String getClassificação() {
        return j;
    }

    public void setClassificação(String classificação) {
        this.j = classificação;
    }

    public double calculaDelta() {
        delta = (vB * vB) + (-4 * (vA * vC));
        return delta;
    }

    public double calculaX1() {
        x1 = ((-(vB) + Math.sqrt(delta)) / 2 * vA);
        return x1;
    }

    public double calculaX2() {
        x2 = ((-(vB) - Math.sqrt(delta)) / 2 * vA);
        return x2;
    }

}
