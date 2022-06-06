PImage img;
PImage imgCache;
void setup() {
  size(480, 360);
  img = loadImage("image001.png");
  imgCache = img.copy();
}

final String colorMode = "color";
final String clearMode = "clear";
final String mosaicMode = "mosaic";
final String noneMode = "none";

String mode = colorMode;
int mosaicNum = 2;

void draw() {
  image(img, 0, 0, img.width, img.height);

  if (mousePressed && (mouseButton == RIGHT)) {
    mode = colorMode;
  }
  
  switch(mode) {
    case colorMode:
      img = imgCache;
      break;

    case clearMode:
      background(255,255,255);
      break;

    case mosaicMode:
      background(255,255,255);
      displayMosaic(img,mosaicNum);
      break;
    
    default:
      break;
  }
}

void keyPressed() {
  if (key == 'c') {
    mode = clearMode;
  }
  if (key == '0') {
    mode = mosaicMode;
  }
  if (key == '2') {
    mosaicNum = 2;
  }
  if (key == '3') {
    mosaicNum = 3;
  }
  if (key == '4') {
    mosaicNum = 4;
  }
  if (key == '5') {
    mosaicNum = 5;
  }
  if (key == '6') {
    mosaicNum = 6;
  }
  if (key == '7') {
    mosaicNum = 7;
  }
  if (key == '8') {
    mosaicNum = 8;
  }
  if (key == '9') {
    mosaicNum = 9;
  }
}

void displayMosaic(PImage img, int mosaicNum){;
for (int y = 0; y < img.height; y += mosaicNum) {
  for (int x = 0; x < img.width; x += mosaicNum) {
      final color c = img.pixels[ y * img.width + x];
      fill(c);
      rect(x, y, mosaicNum, mosaicNum);
    }
  }
}