PImage img1;
PImage defaultImg;
String mode = "GRAY";
void setup() {
  size(480, 360);
  img1 = loadImage("image001.png");
  defaultImg = img1.copy();
}

void draw() {
  int width = img1.width / 2;
  int height = img1.height / 2;
  image(defaultImg, 0, 0, width, height);
  image(img1, width, 0, width, height);
  
  if (mousePressed && (mouseButton == RIGHT)) {
    mode = "COLOR";
  }
  switch(mode) {
    case "CLEAR":
      background(255,255,255);
      break;
    
    case "GRAY":
      img1.filter(GRAY);
      break;
    
    case "COLOR":
      img1 = defaultImg.copy();
      break;
    
    case "BINARY":
      img1.filter(THRESHOLD);
      
      default :
      break;	
  }
  
  
}

void keyPressed() {
  if (key == 'c') {
    mode = "CLEAR";
  }
  if (key == 'b') {
    mode = "BINARY";
  }
  if (key == 'g') {
    mode = "GRAY";
  }
}