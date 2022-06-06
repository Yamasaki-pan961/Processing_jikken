PImage img;
PImage imgCache;
void setup() {
  size(480, 360);
  img = loadImage("image001.png");
  imgCache = img.copy();
}

final String colorMode = "color";
final String edgeMode = "edge";
final String clearMode = "clear";
final String noneMode = "none";
String mode = colorMode;

void draw() {
  image(img, 0, 0, img.width, img.height);

  if (mousePressed && (mouseButton == RIGHT)) {
    mode = colorMode;
  }
  
  switch(mode) {
    case colorMode:
      img = imgCache;
      break;
    
    case edgeMode:
      img = sobelFilter(img);
      mode = noneMode;
      break;

    case clearMode:
      background(255,255,255);
      break;
    
    default:
      break;
  }
}

void keyPressed() {
  if (key == 'c') {
    mode = clearMode;
  }
  if (key == 'a') {
    mode = edgeMode;
  }
}

PImage sobelFilter(PImage img) {
  PImage filteredImg = img.copy();
  for (int x = 0; x < img.width; ++x) {
    for (int y = 0;y < img.height; ++y) {
      float fx=0, fy=0;
      fx=fx+(-1)*brightness(img.get(x-1,y-1));
      fx=fx+(-2)*brightness(img.get(x-1,y));
      fx=fx+(-1)*brightness(img.get(x-1,y+1));
      fx=fx+( 1)*brightness(img.get(x+1,y-1));
      fx=fx+( 2)*brightness(img.get(x+1,y));
      fx=fx+( 1)*brightness(img.get(x+1,y+1));
      fy=fy+(-1)*brightness(img.get(x-1,y-1));
      fy=fy+(-2)*brightness(img.get(x,y-1));
      fy=fy+(-1)*brightness(img.get(x+1,y-1));
      fy=fy+( 1)*brightness(img.get(x-1,y+1));
      fy=fy+( 2)*brightness(img.get(x,y+1));
      fy=fy+( 1)*brightness(img.get(x+1,y+1));
      float rr=sqrt(fx*fx+fy*fy);
      color c=color(rr);
      filteredImg.set(x,y,c);
      }
  }
  return filteredImg;
}