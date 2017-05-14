//bienvenue dans cet exemple d'utilisation d'un tableau 
PFont f;//instruction qui n'a rien à voir; elle sert à l'affichage des textes
// déclaration de la variable tab qui sera un tableau 
//d'entiers à deux dimensions
int[][] tab;
//entiers qui définissent la taille de l'image
final int taillex=500;
final int tailley=500;

void setup() {
  //le fond de l'écran est noir
  background(0);
  // taille de l 'image
  size(500, 500);
  //paramétrage de la police pour afficher du texte dans la fenêtre 
  f=createFont("Georgia", 18);
  //lancement du tracé de la table de multiplication de 20 par 20
  table_mult(20, 30);
}

void table_mult(int xn, int yn) {
  String s;
  int x, y, xi, yi;
  x=taillex/(xn+1); 
  y=tailley/(yn+1);
  //création du tableau dans la mémoire
  tab=new int[xn][yn];
  for (xi=0; xi<xn; xi++) {
    for (yi=0; yi<yn; yi++) {
      //calcul de la multiplication entre la xième colonne et la yième ligne
      tab[xi][yi]=(xi+1)*(yi+1);
      //conversion en string pour l'affichage
      s=Integer.toString(tab[xi][yi]);
      //affichage de la valeur
      text(s, (xi+1)*x, (yi+1)*y);
    }
  }
}

void draw() {
}