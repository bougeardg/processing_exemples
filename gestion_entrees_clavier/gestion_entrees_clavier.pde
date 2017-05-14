import javax.swing.*;     // librairie necessaire au fonctionnement du programme (boite de saise texte et nombre)

int n;       // déclaration et initialisation de variables
double a;
String texte;
float b;

void setup() {   
  //configueration de la fenêtre superflue vu le programme utilisé ici.
  size(500, 500);

//récupération des valeurs auprès de l'utilisateur
  n = lire_integer("saisir un nombre entier");
  a = lire_double("saisir un nombre décimal");
  b=(float)a;
  texte = lire_string("saisir un texte");    

// Affichage dns la console
  println(n);
  println(a);
  println(b);
  println(texte);
// affichage dans une boîte de dialogue
  afficher_string(str(n));
  afficher_string(str((float)a));
  afficher_string(texte);
}


void draw() {
}



// ci dessous une zone de définition de fonctions "prêtes à l'emploi" 
//récupération d'une chaine de caractère
String lire_string(String s) {
  return ( JOptionPane.showInputDialog(s) );
}

//récupération d'un entier
int lire_integer (String s) {
  return ( Integer.parseInt(JOptionPane.showInputDialog(s))  );
}

// récupération d'un flottant au format double précision
double lire_double (String s) {
  return ( Double.parseDouble(JOptionPane.showInputDialog(s))  );
}

// Affichage dans une boîte de dialogue
void afficher_string(String s) {
  JOptionPane.showMessageDialog(frame, s);
}