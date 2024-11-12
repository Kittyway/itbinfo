import java.util.Scanner;
import  java.util.Arrays;


public class Ex2Vetor {

    public static void main(String [] args) {
        Scanner scanner = new Scanner(System.in);
        int [] numeros = new int[20];
        int num;

        // length : Retomar o tamamho (capacidade) do vetor
        // System.out.pritln(numeros.length) => 20

        for(int i = 0; i < numeros.length; i++) {

            System.out.println("Digite o " + (i+1) + "º número: ");
            num = scanner.nextInt();
            numeros[i] = num;
           
        }  
         System.out.println("Escrevendo os valores lidos:");
         //Arrsy.toString => Transforma o vertor em String
         //string transforma numero em letras 

         System.out.println(Arrays.toString(numeros));
         int i = 0
         while(i < numeros.length){

         i++; 
        }


         } 
         
    }