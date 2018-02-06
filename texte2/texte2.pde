import javax.swing.*;// biliothèque nécessaire au lancement de la fonction lire_integer
int n;
String[] lignes; //déclaration de la liste de lignes


void setup() {
  //chargement du fichier texte dans la liste de chaînes
  lignes=loadStrings("data/premier_texte.txt");
  println("appuyer sur ENTRÉE pour afficher les lignes");
}

void draw() {
}


void keyPressed() {
  int k;
  if (keyCode==ENTER) {
    //affichage des lignes.
    for (k=0; k<lignes.length; k++) {
      println("ligne "+k+" :"+lignes[k]);
    }
    println("fin");
  }
}

//récupération d'un entier
int lire_integer (String s) {
  return ( Integer.parseInt(JOptionPane.showInputDialog(s))  );
}