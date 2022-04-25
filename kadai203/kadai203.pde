class Collisioning{
    Collisioning(boolean x, boolean y) {
        this.x = x;
        this.y = y;
    }
    boolean x, y;
}

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

boolean collision() {
    boolean overlappingX = isOverlappingX(x + radius, x - radius);
    boolean overlappingY = isOverlappingY(y + radius, y - radius);
    boolean isCollision = overlappingX && overlappingY;
    
    return isCollision;
}

boolean isOverlappingX(float upper, float lower) {
    float halfW = racketW / 2;
    return(racketX - halfW)<(upper) && (racketX + halfW)>(lower);
}

boolean isOverlappingY(float upper, float lower) {
    float halfH = racketH / 2;
    return(racketY - halfH)<(upper) && (racketY + halfH)>(lower);
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