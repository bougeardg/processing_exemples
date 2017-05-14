class Cible { // objet cible
  int diam, xpos, ypos;
  color couleur;
  boolean visible;
  Cible(int x, int y, int d, color coul) {
    xpos=x;
    ypos=y;
    diam=d;
    couleur=coul;
    visible=false;
  }
  void aff() { //procedure d'affichage
    if (visible) {
      fill(couleur);noStroke();
      ellipse(xpos,ypos,diam,diam);
    }
  }
  void init(int la, int ha){//initialisation
  xpos=int(random(la));ypos=int(random(ha));visible=false;
  }
}