import gab.opencv.*;
PImage src,sobel;

void setup() {
  src = loadImage("image001.jpg");
  size(640,480);
  opencv = new OpenCV(this, src);
  opencv.loadImage(src);
  opencv.findSobelEdges(1, 0);
  sobel = opencv.getSnapshot();
}

void draw() {
  pushMatrix();
  image(src, 0, 0);
  image(sobel, src.width, 0);
  popMatrix();

  text("Source", 10, 25);
  text("Sobel", src.width + 10, 0 + 25);
}
