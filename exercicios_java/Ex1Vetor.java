public class Ex1Vetor {
    public static void main(String[] args) {

           double [] numeros = new double[5];
           String mensagem = "Infelizmente você foi reprovado";
           numeros[0] = 1.5;
            numeros[1] = 2.6;
            numeros[2] = 8.9;
             numeros[3] = 9.3; 
                numeros[4] =  10.0;

                int i = 0;
                double soma = 0;
                while( i < numeros.length){
                    soma+= numeros[i];
                    i++;

                }
                double media = soma / numeros.length;

                if( media > 5) {
                    mensagem = "Parabens voce foi aprovado";
                }
                System.out.println(mensagem);
    }

}