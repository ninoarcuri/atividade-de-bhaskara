package br.bhaskara;

public class bhaskaracal {

    private double a;
    private double b;
    private double c;
    double delta, x1, x2;
    private String i;

    public double getValorA() {
        return a;
    }

    public void setValorA(double a) {
        this.a = a;
    }

    public double getValorB() {
        return b;
    }

    public void setValorB(double b) {
        this.b = b;
    }

    public double getValorC() {
        return c;
    }

    public void setValorC(double c) {
        this.c = c;
    }

    public String getClassificação() {
        return i;
    }

    public void setClassificação(String classificação) {
        this.i = classificação;
    }

    public double calculaDelta() {
        delta = (b * b) + (-4 * (a * c));
        if (delta >= 0) {
            calculaX1();

        } else {
            i = ("Delta não possui raiz!");
            System.exit(0);
        }
        return delta;
    }

    public double calculaX1() {
        x1 = ((-(b) + Math.sqrt(delta)) / 2 * a);
        return x1;
    }

    public double calculaX2() {
        x2 = ((-(b) - Math.sqrt(delta)) / 2 * a);
        return x2;
    }

}
