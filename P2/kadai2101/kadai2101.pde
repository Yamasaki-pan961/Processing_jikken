PImage img1;
void setup() {
  size(480, 360);
  img1 = loadImage("image001.png");
}

void draw() {
  background(255,255,255);
  image(img1, 0, 0, img1.width / 2, img1.height / 2);
  image(img1, img1.width / 2, 0, img1.width / 4, img1.height / 4);
}
