class anneau { //création de l'objet anneau (un morceau de serpent)
  int xpos, ypos;
  anneau(int x, int y) {
    xpos=x;
    ypos=y;
  }
}

class snake { //création de l'objet serpent (une liste d'anneau)
  int l;
  anneau[] anneaux;
  int xdir, ydir;
  snake(int lo) {
    int i;
    l=lo;
    xdir=-1;
    ydir=0;
    anneaux = new anneau[100000];
    for (i=0; i<100000; i++) {
      anneaux[i]=new anneau(0, 0);
    }
  }
  void aff() { // procedure d'affichage du serpent
    int i;
     fill(255,0,0);
      stroke(255,0,0);
      ellipse(anneaux[0].xpos, anneaux[0].ypos,3,3);
    for (i=1; i<l; i++) {
      if(i%5==0){
      fill(255);
      stroke(255);
      ellipse(anneaux[i].xpos, anneaux[i].ypos,3,3);}
      
    }
  }
  void init(int largeur, int hauteur) {//initialisation du serpent
    int i;
    for (i=0; i<l; i++) {
      anneaux[i].xpos=i+largeur/2;
      anneaux[i].ypos=hauteur/2;
    }
  }
  void avance(int la, int ha) { 
    //mouvement du serpent
    int i;
    for (i=l-1; i>0; i=i-1) {
      anneaux[i].xpos=anneaux[i-1].xpos;
      anneaux[i].ypos=anneaux[i-1].ypos;
    }
    anneaux[0].xpos=anneaux[0].xpos+xdir;
    anneaux[0].ypos=anneaux[0].ypos+ydir;
    if (anneaux[0].xpos<0) {
      anneaux[0].xpos=la-1;
    }
    if (anneaux[0].xpos>la) {
      anneaux[0].xpos=0;
    }
    if (anneaux[0].ypos<0) {
      anneaux[0].ypos=ha-1;
    }
    if (anneaux[0].ypos>ha) {
      anneaux[0].ypos=0;
    }
  }
  void allonger() {
    //allongement du serpent
    int i;
    l=l+1;
    anneaux[l]= new anneau(anneaux[l-1].xpos, anneaux[l-1].ypos);
  }
}