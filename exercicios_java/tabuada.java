import java.util.Scanner;
public class tabuada {
    public static void main (String [] args) {
        Scanner teclado = new Scanner(Sistem.in);

        System.out.println("Digite um número qualquer: ");
        int numero = teclado.nextInt();
        
        resultado = numero * 1;
        System.out.println("Resultado" + resultado);
       resultado = numero * 2;
       System.out.println("Resultado"  + resultado);
        resultado = numero * 3;
       System.out.println("Resultado"  + resultado);
       resultado = numero * 4;
       System.out.println("Resultado"  + resultado); 
       resultado = numero * 5;
       System.out.println("Resultado"  + resultado); 
       resultado = numero * 6;
       System.out.println("Resultado"  + resultado); 
       resultado = numero * 7;
       System.out.println("Resultado"  + resultado); 
       resultado = numero * 8;
       System.out.println("Resultado"  + resultado); 
       resultado = numero * 9;
       System.out.println("Resultado"  + resultado); 
       resultado = numero * 10;
       System.out.println("Resultado"  + resultado);
       
       int i = 0;
       while(i < 10 ){
        resultado = numero * 1;
        System.out.println("Resultado" + resultado);
        i++;
       } 
    }
}