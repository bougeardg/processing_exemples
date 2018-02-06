
import de.bezier.data.sql.*;
import javax.swing.*;     
int cpt=0;
SQLite bdd;

void setup()
{
  size( 100, 100 );

  bdd = new SQLite( this, "ex1.db" );  // ouverture de la base de donnée

  if ( bdd.connect() )
  {
    bdd.query( "CREATE TABLE IF NOT EXISTS clients(id INTEGER PRIMARY KEY AUTOINCREMENT UNIQUE, nom TEXT, age INTEGER);" );//création de la table si elle n'existe pas
    bdd.query( "INSERT INTO clients(nom, age) VALUES('hal',2001)");// création d'une première entrée
    bdd.query("SELECT * FROM clients ORDER BY age");
    while (bdd.next()) {
      cpt++;
      println(bdd.getString("nom")+" a "+bdd.getInt("age")+" ans.");
    }
    println("nombre d'inscrits :"+cpt);
  }
}


void draw() {
}



void nouveau_client(String nom, int age) {
  if ( bdd.connect() )
  {
    bdd.query( "INSERT INTO clients(nom, age) VALUES(\""+nom+"\","+age+")");
    bdd.query("SELECT * FROM clients ");
    while (bdd.next()) {
      println(bdd.getString("nom")+" a "+bdd.getInt("age")+" ans.");
    }
  }
}
void keyPressed() {
  String nom, a ;
  int k, b ;
  if (keyCode==RIGHT) {
    println("suppression de la première entrée");
    bdd.query("SELECT * FROM clients");
    k=bdd.getInt("id");
    print(k);
    nom=bdd.getString("nom");
    bdd.query("DELETE FROM clients WHERE id=\""+k+"\"");
    println("entree supprimée :"+nom );
  }
  if (keyCode==DOWN) {
    bdd.query("DELETE FROM clients");
    println("table clients vidée");
  }
  if (keyCode==LEFT) {
    a = lire_string("donner le nom du nouveau client :");
    b= lire_integer(" Quel est son age ?");
    nouveau_client(a, b);
  }
  if (keyCode==RETURN) {
    bdd.query("SELECT * FROM clients ");
    while (bdd.next()) {
      println(bdd.getString("nom")+" a "+bdd.getInt("age")+" ans.");
    }
  }
}
//récupération d'une chaine de caractère
String lire_string(String s) {
  return ( JOptionPane.showInputDialog(s) );
}

//récupération d'un entier
int lire_integer (String s) {
  return ( Integer.parseInt(JOptionPane.showInputDialog(s))  );
}