import gab.opencv.*;
PImage src;
OpenCV opencv;
ArrayList<Contour> contours;

void setup() {
  src = loadImage("image001.png");
  size(640,480);
  opencv = new OpenCV(this, src);
  opencv.threshold(90);
}

void draw() {
  image(src, 0, 0);
  contours = opencv.findContours();
  noFill();
  strokeWeight(3);
  for(Contour contour:contours){
      stroke(255,255,0);
      contour.draw();
  }
}
