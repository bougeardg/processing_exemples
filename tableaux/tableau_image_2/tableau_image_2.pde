//bienvenue dans cet exemple d'utilisation d'un tableau 

// déclaration de la variable tab qui sera un tableau 
//d'entiers à deux dimensions, on ne sait pas encore quelle taille il aura, mais cela sera 
// précisé à sa création effective
int[][] tab;
//entiers qui définissent la taille de l'image et la taille du tableau
int taillex=500;
int tailley=500;

void setup() {
  int x, y, xi, yi, valmax, cpt;
  //le fond de l'écran est noir
  background(0);
  // taille de l 'image
  size(500, 500);
  //création du tableau dans la mémoire, on doit préciser sa taille
  tab=new int[taillex][tailley];
  // quand rien n'a été enregistré dans le tableau, la valeur par défaut est 0, 
  // éviter quand même d'utiliser un tableau sans l'initialiser 
  // on parcourt le tableau suivant une des coordonnées
  for (xi=0; xi<taillex; xi++) {
    //puis suivant l'autre
    for (yi=0; yi<tailley; yi++) {
      //on enregistre dans la case [xi][yi] une valeur aléatoire
      tab[xi][yi]=(int) random(256);
    }
  }

  //recherche de la plus grande valeur dans le tableau
  // on initialise la valeur à 0
  valmax=0;
  for (xi=0; xi<taillex; xi++) {
    for (yi=0; yi<tailley; yi++) {
      if (tab[xi][yi]>valmax)
      {
        //on vient de trouver plus grand, on change la valeur valmax
        valmax=tab[xi][yi];
      }
    }
  }
  //affichage en jaune des cases qui contiennent la plus grande valeur et comptage de ces cases
  cpt=0;
  for (xi=0; xi<taillex; xi++) {
    for (yi=0; yi<tailley; yi++) {
      if (tab[xi][yi]==valmax)
      {
        set(xi, yi, color(255, 255, 0));
        cpt=cpt+1;
      }
    }
  }
  //affichage du nombre pixels à la valeur maximale
  println("il y a "+cpt+" pixels à la valeur " + valmax);
}

void draw() {
}