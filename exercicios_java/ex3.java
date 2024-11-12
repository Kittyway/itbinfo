import java.util.Scanner;
public class ex3{
    //esse cod é feito p declarar uma classe publica
    public static void main (String [] args){
         int n1; 
        Scanner teclado = new Scanner (System.in);
        System.out.println("informe um numero: ");
         n1 = teclado.nextInt();
          if ( 100 >= n1 || n1<=200){
            System.out.println("O numero esta no intervalo: ");
    }
    else{
     System.out.println("Nao esta no intervalo: ");

    }
}
}