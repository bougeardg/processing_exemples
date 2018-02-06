import javax.swing.*;// biliothèque nécessaire au lancement de la fonction lire_integer
int n;
String[] lignes; //déclaration de la liste de lignes


void setup() {
  int i;
  n=lire_integer("nombre de lignes");
  lignes =new String[n];
  //enregistrement des valeurs
  for (i=0; i<n; i++) {
    lignes[i]=("ceci est la ligne n°" + i +" du texte");
  }
  //enregistrement dans le fichier texte.
saveStrings("data/premier_texte.txt",lignes);

}

void draw() {
}


void keyPressed() {
  int k;
  if (keyCode==ENTER) {
    //affichage des lignes
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