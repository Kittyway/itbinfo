import java.util.Arrays;

public class ArrayTipoVetor {

    public static void main(String[] args) {

        String [] frutas = new String[5];

        frutas[0] = "Laranja";
        frutas[1] = "Pera";
        frutas[2] = "Uva";
        frutas[3] = "Maça";
        frutas[4] = "Tomate";

        System.out.println(frutas[1]);

        System.out.println(frutas[4]);

        for(int i = 0; i < frutas.length; i++) {
            System.out.println(frutas[i]);
        }
        char [] vogais = {'a','e','i','o','u'};

        System.out.println(Arrays.toString(vogais));

        int[] vetor = new int[8];

        vetor[0] = 10;
        vetor[1] = 20;
        vetor[2] = 30;
        vetor[3] = 40;
        vetor[4] = 50;
        vetor[5] = 60;
        vetor[6] = 70;
        vetor[7] = 80;

        for (int i = 0; i < vetor.length; i++) {
            System.out.println("Elemento " + i + ": " + vetor[i]);

        }
        double[] victor = new double[12];

            /**
            1) No mesmo arquivo,

            a-) Criar um vetor de numero inteiro com 8 numeros

            b-) Criar um vetor de númeroreal "double" com 4 números

            c-) Criar um vetor String com 6 palavvras e exbir na tela
             apenas a 5 palavra

           d-) Referente ao exercicico a) Mostra todos os números na ordem sequencial

            e-) Referente ao exercicio a) Mostrar todos os números na ordem inversa
             */ 

             //a)
             int[] numerosInt = {1, 6, 8, 14, 47, 10, 47, 3};

             //b) 
             double [] numeroReal = new double[4];
             numeroReal[0] = 1;
              numeroReal[1] = 8.4;
               numeroReal[2] = 8.7;
                numeroReal[3] = 10.0;

                //c-) 
                String [] palavras = {"kitty","Sarah","João", "Antonio","Filipe","Vitor"};
                System.out.println("A quinta palavra é " + palavras[4]);

                //d)
        int limite = 8; // Define o limite do número sequencial
        int[] numeros = new int[limite]; // Cria um array para armazenar os números sequenciais

        // Preenche o array com números sequenciais
        for (int i = 0; i < limite; i++) {
            numeros[i] = i + 1;
        }

        // Mostra os números sequenciais armazenados no array
        System.out.println("Números sequenciais:");
        for (int i = 0; i < limite; i++) {
            System.out.println(numeros[i]);
        }
    
        limite = 10; // Define o limite do número sequencial

        // Preenche o array com números sequenciais em ordem inversa
        for (int i = 0; i < limite; i++) {
            numeros[i] = limite - i;
        }

        // Mostra os números sequenciais armazenados no array
        System.out.println("Números sequenciais em ordem inversa:");
        for (int i = 0; i < limite; i++) {
            System.out.println(numeros[i]);
        }
    
    //e
    //i -- => decremento de 1 => i = i - i
    for(int i = numeroInt.length -1; i >= 0; i--){
        System.out.println(numeroInt[i]);
    }
//quando encremneta perde os valores
    
    //f

    for(int i = 1; i < palavras.length; i++){
        if(2 %>0) {
            System.out.println(palavras[i]);
        }
     }

    }
}
       