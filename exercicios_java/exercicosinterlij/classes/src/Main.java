import classes.Produto;

// Press Shift twice to open the Search Everywhere dialog and type `show whitespaces`,
// then press Enter. You can now see whitespace characters in your code.
public class Main {
    public static void main(String[] args) {

        Produto p1 = new Produto();
        p1.nome = "pacoca";
        p1.preco = 0.50;

        Produto p2 = new Produto();
        p2.nome = "charge";
                p2.preco = 2.50;

        Produto p3 = new Produto();
        p3.nome = "kitkat";
        p3.preco = 2.50;

        System.out.println(p1.nome+""+ p1.preco);
        System.out.println(p2.nome +""+ p2.preco);
        System.out.println(p3.nome+""+ p3.preco);


    }
}