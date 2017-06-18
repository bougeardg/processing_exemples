import processing.video.*;

Capture video1;

PImage matete;
void settings() {
  fullScreen();
    frame.setResizable(true);
}
void setup() {
  frameRate(25);
  video1 = new Capture(this);
  video1.start();
}

void draw() {
  if (video1.available() == true) {
    video1.read();
    image(video1, 0, 0);
  }
  
}

void mousePressed() {
  image(video1, 0, 0);
  saveFrame("data/matete.png");
}