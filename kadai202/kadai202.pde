float x,y,radius;
float dx = 2.0, dy = 2.0;

float racketX = 250 , racketY = 250;
float racketW = 100, racketH = 100;

void setup() {
    size(600, 500);
    background(128, 128, 128);
    stroke(128, 128, 128);
    fill(255,255);
    
    x = random(20, width - 20);
    y = random(20, height - 20);
    radius = 20;
    rectMode(CENTER);
}

void draw() {
    background(128, 128, 128);
    x = x + dx;
    y = y + dy;
    
    if ((x < 10) || (x>(width - 10))) {
        dx = -dx;
    }
    if ((y < 10) || (y>(height - 10))) {
        dy = -dy;
    }
    if(collision()){
        square(10, 10, 40);
    }
    ellipse(x,y,radius,radius);
    rect(racketX, racketY, racketW, racketH);
}

boolean collision() {
    float halfW = racketW / 2;
    float halfH = racketH / 2;
    
    boolean overlappingX = (racketX - halfW)<(x + radius) && (racketX + halfW)>(x - radius);
    boolean overlappingY = (racketY - halfH)<(y + radius) && (racketY + halfH)>(y - radius);
    
    return overlappingX && overlappingY;
}