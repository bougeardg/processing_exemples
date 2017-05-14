/*
fichier control P5
 Pour modifier un objet control P5 au fur
 et a mesure de l'utilisation
 */


import controlP5.*; 
ControlP5 fenetre; 
// déclaration de ce qui sera le bouton 
Controller b;

String message;
int cpt;
void setup()
{
  size(500, 200);
  message = "vous avez appuye 0 fois sur ce bouton"; 
  cpt=0;
  background(0);
  fenetre = new ControlP5(this); 
  // Création du bouton en lui donnant un nom
  b=fenetre.addButton("Bouton") 
    .setPosition(20, 20) 
    .setSize(380, 20)
    .setLabel(message) 
    ;
}

void draw() {
}

public void Bouton() { 
  cpt++;
  message="vous avez appuye " +cpt+" fois sur ce bouton";   
  b.setLabel(message);//modification du label du bouton avec le nouveau message
} 