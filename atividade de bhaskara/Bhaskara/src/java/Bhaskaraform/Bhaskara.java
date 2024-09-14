package Bhaskaraform;

public class Bhaskara {
    //aqui você implementará toda a lógica da aplicação (calculos etc.)
    private String classificação; 
    private double A; 
    private double B; 
    private double C;
    double delta, x1, x2;
    
    public double getValorA() {
        return A;
    }

    public void setValorA(double A) {
        this.A = A;
    }

    public double getValorB() {
        return B;
    }

    public void setValorB(double B) {
        this.B = B;
    }
    
    public double getValorC() {
        return C;
    }

    public void setValorC(double C) {
        this.C = C;
    }
     
    public String getClassificação() {
        return classificação;
    }
    public void setClassificação(String classificação) {
        this.classificação = classificação;
    }
    
   
    public double calculaDelta() {
        delta = (B *B) + (-4 * (A * C));
        if (delta >= 0) {
            calculaX1();
            
        } else {
            classificação = ("Delta não possui raiz!");
            System.exit(0);
        }
        return delta;
       }
 
    public double calculaX1() {
        x1 =  ((-(B) + Math.sqrt(delta)) / 2 * A);
        return x1;
    }
    public double calculaX2() {    
        x2 =  ((-(B) - Math.sqrt(delta)) / 2 * A);
    return x2;
    }
    
    
}