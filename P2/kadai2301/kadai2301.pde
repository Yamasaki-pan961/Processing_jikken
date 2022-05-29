void setup() {
  size(480, 360);
  img1 = loadImage("image001.png");
  defaultImg = img1.copy();
}

void draw() {
  
}

void keyPressed() {
  if (key == 'c') {
    background(255,255,255);
  }
}