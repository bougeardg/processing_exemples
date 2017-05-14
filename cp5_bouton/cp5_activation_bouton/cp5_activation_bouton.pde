/*
fichier control P5
 Pour modifier un objet control P5 au fur
 et a mesure de l'utilisation
 */

import controlP5.*; 
ControlP5 fenetre; 
// déclaration du controleur  bouton 
Controller b;

String message;
int cpt;
int col=color(255);
void setup() {
  size(500, 200);
  cpt=0;
  background(0);
  fenetre = new ControlP5(this); 
  // Création du bouton  en l'affectant à un controleur
  b=fenetre.addButton("Bouton") 
    .setPosition(20, 20) 
    .setSize(300, 20)
    .setLabel("appuyer sur la barre espace") 
    ;
}

void draw() {    
  background(0);
}

public void Bouton() {
  print("tre");
}

void keyPressed() {
  cpt++;
  // modification en utilisant le controleur 
  if (cpt%2==0) {
    //cacher-désactiver
    b.hide();
  } else {
    //afficher-activer
    b.show();
  }
}