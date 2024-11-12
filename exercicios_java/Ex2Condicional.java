import java.util.Scanner;

public class Ex2Condicionar{
    public static void main(String [] args ) {
        Scanner teclado = new Scanner(System.in);
        int numero1, numero2;
        System.out.println("Digitr o primeiro número: ");
        numero1 = teclado.nextInt();
         System.out.println("Digitr o primeiro número: ");
        numero2 = teclado.nextInt();
        System.out.println("Digitr o primeiro número: ");
        if(numero1 > numero2) {
            System.out.println("o numero 1 que é: " + numero1 + "é MAIOR");
        }else if (numero2 > numero3) {
         System.out.println("o numero 2 que é: " + numero2 + "é MAIOR");
        }else {
            System.out.println("O numero são iguais!!!")

    }
}