//bienvenue dans cet exemple d'utilisation d'un tableau 

// déclaration de la variable tab qui sera un tableau 
//d'entiers à deux dimensions
int[][] tab;
//entiers qui définissent la taille de l'image
int taillex=500;
int tailley=500;

void setup() {
  int x, y, xi, yi;
  //le fond de l'écran est noir
  background(0);
  // taille de l 'image
  size(500, 500);

  //création du tableau dans la mémoire
  tab=new int[taillex][tailley];
  // on parcourt le tableau suivant une des coordonnées
  for (xi=0; xi<taillex; xi++) {
    //puisuivant l'autre
    for (yi=0; yi<tailley; yi++) {
      //on enregistre dans la case [xi][yi] la valeur qui sert à créer le dégradé
      tab[xi][yi]=xi*yi*255/(taillex*tailley);
    }
  }

  //lancement du tracé du dégradé on parcourt le tableau et on définit
  // la couleur du pixel en fonction de la valeur dans le tableau
  for (xi=0; xi<taillex; xi++) {
    for (yi=0; yi<tailley; yi++) {
      set(xi, yi, color(tab[xi][yi], tab[xi][yi], tab[xi][yi]));
    }
  }
}

void draw() {
}