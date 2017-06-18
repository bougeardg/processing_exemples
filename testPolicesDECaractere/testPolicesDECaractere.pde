String texte="il était un petit navire";
int i=0, k,  j;
PFont[] police;
String[] fontList;
void setup() {
  size(500, 500);
  background(0);
  fontList = PFont.list();
  k=fontList.length;
  police= new PFont[k];
  police[i]=createFont(fontList[i], 20);
  textFont(police[i]);
  text(fontList[i]+" : "+texte, 50, 100);
  for (j=0; j<k; j++) { 
    println(fontList[j]+j);
  }
}

void draw() {
}

void keyPressed() {
  background(0); 
    if (i<k-1) {
    i++; 
      police[i]=createFont(fontList[i], 20); 

      textFont(police[i]); 
      text(fontList[i]+" : "+texte, 50, 100);
  }    
  println("fontList[i]"+i);
}