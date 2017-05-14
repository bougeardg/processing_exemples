import javax.swing.*;     // librairie necessaire au fonctionnement du programme (boite de saise texte et nombre

int hauteur, largeur, fact;
comp c;
float epsilon;
int n, nmax;
void settings() {  
  //définition des paramètres pour l'image et le repère.
  fact=200;
  hauteur=fact*2;
  largeur=fact*3;
  size(largeur, hauteur);
}

void setup() {
  int i, j;
  background(0);
  epsilon=5;
  pt p;
  nmax=lire_integer("nombre d'itérations ?");
  c=new comp(0, 0);
  p=new pt(0, 0);
  for (n=1; n<nmax; n++) { 
    /* pour chaque entier inférieur à nmax on teste le fait que la suite
     reste autour de 0 (distance epsilon) -> voir la fonction testBorne*/
    background(0);
    stroke(255);
    for (i=0; i<largeur; i++) {
      for (j=0; j<hauteur; j++) {
        p.x=i;
        p.y=j;
        c=ptToComp(p);
        if (testBorne(c)) {
          affPt(p);
        }
      }
    }
    save("mandel_"+n+"_iterations.png");
  }
}

// fonction pour récupérer un entier 
int lire_integer (String s) {
  return ( Integer.parseInt(JOptionPane.showInputDialog(s))  );
}