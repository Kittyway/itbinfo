import javax.swing.JOptionPane;

public class Boletim{

    public static void main(String [] args) {

        System.out.println("Boletim Escolar");
        System.out.println("Escolar  ITB Brasilio Flores de Axevedo\n Turma: MIF2AN");

        String nome; //cadeia nome
        double nota1, nota2, nota3, media; //real, nota1, nota2, nota3, media
        String msg;

        nome = JOptionPane.showInputDialog(null, "Digite o nome do Aluno: ");

        do { //laço de repetição, ele vai repetir oq esta estre chaves, enquanto for verdadeiro o teste logico (while). seria o nosso faça

        nota1 = Double.parseDouble(JOptionPane.showInputDialog(null, "Digite a 1ª nota: "));

        nota2 = Double.parseDouble(JOptionPane.showInputDialog(null, "Digite a 2ª nota: "));
        
        nota3 = Double.parseDouble(JOptionPane.showInputDialog(null, "Digite a 3ª nota: "));

        

        
    } while(
    nota1 < 0 || nota1 > 10 ||
    nota2 < 0 || nota2 > 10 ||
    nota3 < 0 || nota3 > 10
 );

media = (nota1 + nota2 + nota3) / 3;

if(media >= 7) {
    msg = "Aluno aprovado!";
}else if (media > 5 && media < 7){
    msg = "Recuperção";
} else{
    msg = "Reprovado";
}


JOptionPane.showMessageDialog(null, "Nome: " + nome + "\nA Media do aluno é: " + media + "" + msg);



}
}