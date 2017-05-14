void keyPressed() {//gestion du clavier (2 touche droites-gauche)
  if (keyCode==RIGHT) {
    tourne_droite();
  }
  if (keyCode==LEFT) {
    tourne_droite();
    tourne_droite();
    tourne_droite();
  }
}
void tourne_droite() {
  if ((serpent.xdir==1)&&(serpent.ydir==0)) {
    serpent.xdir=0;
    serpent.ydir=1;
  } else {
    if ((serpent.xdir==0)&&(serpent.ydir==1)) {
      serpent.xdir=-1;
      serpent.ydir=0;
    } else {
      if ((serpent.xdir==-1)&&(serpent.ydir==0)) {
        serpent.xdir=0;
        serpent.ydir=-1;
      } else {
        if ((serpent.xdir==0)&&(serpent.ydir==-1)) {
          serpent.xdir=1;
          serpent.ydir=0;
        }
      }
    }
  }
}



boolean test(Cible c, snake s) {
  //test de collision avec la cible
  float dist;
  dist=2*sqrt(pow(float(c.xpos-s.anneaux[0].xpos), 2.0)+pow(float(c.ypos-s.anneaux[0].ypos), 2.0));

  if (dist<c.diam) {
    return true;
  } else {
    return false;
  }
}
boolean test_collision(snake s) {
  //Test d'auto collision
  int i;
  for (i=1; i<s.l; i++) {
    if ((s.anneaux[i].xpos==s.anneaux[0].xpos)&&(s.anneaux[i].ypos==s.anneaux[0].ypos)) {
      return true;
    }
  }
  return false;
}