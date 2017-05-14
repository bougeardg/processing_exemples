class comp { //  définition de la classe nombre complexe
  float a, b;// partie relle et imaginaire
  comp(float x, float y) {
    a=x;
    b=y;
  }
}


// multiplication 
comp multi(comp p, comp q) {
  comp tmp;
  tmp= new comp(0, 0);
  tmp.a = p.a*q.a-p.b*q.b;
  tmp.b=p.a*q.b+p.b*q.a;
  return tmp;
}
// addition
comp addi(comp p, comp q) {
  comp tmp;
  tmp= new comp(0, 0);
  tmp.a = p.a+q.a;
  tmp.b=q.b+p.b;
  return tmp;
}
//calcul du module d'un nombre complexe
float module(comp z) {
  return pow(z.a*z.a+z.b*z.b, 0.5);
}


boolean testBorne(comp z) {
  boolean tmp=true;
  comp zi;
  int i;
  zi= new comp(0, 0);
  for (i=0; i<n; i++) {
    zi=addi(multi(zi, zi), z);
    if (module(zi)>epsilon) {
      tmp=false;
    }
  }
  return tmp;
}