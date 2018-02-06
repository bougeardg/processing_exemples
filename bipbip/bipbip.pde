import ddf.minim.*;//librairie d'outils pour le son
import javax.swing.*;     // librairie necessaire au fonctionnement du programme (boite de saise texte et nombre)
import controlP5.*; 


Minim minim;
AudioSample kick;
ControlP5 cp5;

int tempo, chr, inter;

void setup() {  
  size(250, 250, P2D);
  frameRate(30);
  minim = new Minim(this);
  kick = minim.loadSample( "BD.mp3", // filename
    512      // buffer size
    );
  tempo=lire_integer("tempo ?");
  //initialisation du chronomètre
  chr=0;
  //intervalle entre deux pulsations
  inter=60000/tempo;
}

void draw() {
  if ((millis()-chr>inter)) {
    println("erreur entre deux pulsations en ms=", abs(millis()-chr-inter));
    chr=millis();
    kick.trigger();
  }
}
//récupération d'un entier
int lire_integer (String s) {
  return ( Integer.parseInt(JOptionPane.showInputDialog(s))  );
}