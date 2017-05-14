snake serpent, serpent2;
Cible cible;
int largeur, hauteur, tps, tpa, diam_cible, vit, cptcible, longueur_initiale;
color couleur_cible;

void setup() {
  size(800, 600);
  largeur=800;
  hauteur=600;
  background(0);
  longueur_initiale=50;
  serpent=new snake(longueur_initiale);
  serpent.init(largeur, hauteur);
  serpent.aff();
  tpa=int(random(100))+50;
  tps=0;
  couleur_cible=color(0, 255, 0);
  diam_cible=10;
  cible= new Cible(int(random(largeur)), int(random(hauteur)), diam_cible, couleur_cible);
  vit=1;
  cptcible=0;
}

void draw() {
  int i;
  for (i=0; i<vit; i++) {
    if (test(cible, serpent)) {
      i=vit-1;
    }
    serpent.avance(largeur, hauteur);
  }
  background(0);
  serpent.aff();
  if (frameCount-tps==tpa) {
    cible.init(largeur, hauteur);
    cible.visible=true;
  }
  cible.aff();
  if (test(cible, serpent)) {
    if (cible.visible==true) {
      cptcible++;
      if (cptcible==2) {      
        vit=vit+1;
        cptcible=0;
      }
    }
    cible.visible=false;
    tpa=int(random(100))+50;
    tps=frameCount;
    serpent.allonger();    
    serpent.allonger();
    serpent.allonger();
  }
  if (test_collision(serpent)) {
    fin_partie();
  }
}

void fin_partie() {// réinitialisation après avoir perdu pour lancer une nouvelle partie
  println("votre score est "+ serpent.l);
  background(0);
  serpent=new snake(longueur_initiale);
  serpent.init(largeur, hauteur);
  serpent.aff();
  tpa=int(random(100))+50;
  tps=frameCount;
  couleur_cible=color(0, 255, 0);
  diam_cible=10;
  cible= new Cible(int(random(largeur)), int(random(hauteur)), diam_cible, couleur_cible);
  vit=1;
  cptcible=0;
}