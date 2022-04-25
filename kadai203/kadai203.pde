float x,y,radius;
float dx = 2.0, dy = 2.0;

float racketX = 300 , racketY = 400;
float racketW = 50, racketH = 10;

void setup() {
    size(600, 500);
    background(128, 128, 128);
    stroke(128, 128, 128);
    fill(255,255);
    
    x = random(20, width - 20);
    y = random(20, height - 20);
    radius = 10;
    rectMode(CENTER);
}

void draw() {
    background(128, 128, 128);
    x = x + dx;
    y = y + dy;
    
    if ((x < 10) || (x>(width - 10))) {
        dx = -dx;
    }
    if ((y < 10) || (y>(height - 10)) ||  collision()) {
        dy = -dy;
    }
    ellipse(x,y,radius * 2,radius * 2);
    rect(racketX, racketY, racketW, racketH);
}

boolean icollision() {
    float halfW = racketW / 2;
    float halfH = racketH / 2;
    
    boolean overlappingX = (racketX - halfW)<(x + radius) && (racketX + halfW)>(x - radius);
    boolean overlappingY = (racketY - halfH)<(y + radius) && (racketY + halfH)>(y - radius);
    
    return overlappingX && overlappingY;
}

void keyPressed() {
    if (key ==  CODED) {
        if (keyCode == RIGHT) {
            racketX += 20;
        }
        if (keyCode == LEFT) {
            racketX -= 20;
        }
    }
}