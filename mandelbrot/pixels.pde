class pt { // définition de la classe d'objet point : pt
  int x, y;
  pt(int a, int b) {
    x=a;
    y=b;
  }
}

void affPt(pt p) { //  affichage
  point(p.x, p.y);
}

pt compToPt(comp z) { // conversion complexe vers point
  pt tmp;
  tmp=new pt(0, 0);
  tmp.x=(int) (z.a*fact+(2*fact));
  tmp.y=(int) (z.b*(-fact)+fact);
  return tmp;
}

comp ptToComp( pt p) { // conversion point vers complexe
  comp tmp;
  tmp=new comp(0, 0);
  tmp.a=float(p.x)/fact-2;
  tmp.b=(float(p.y))/(-fact)+1;
  return tmp;
}