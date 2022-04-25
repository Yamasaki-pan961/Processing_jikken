void setup() {
    size(600,500);
    background(255,255,255);
}

void draw() {
    if (mousePressed == true) {
        stroke(random(256),random(256), random(256));
        threefoldEllipse(0,16);
        threefoldEllipse(16,0);
        threefoldEllipse(0,-16);
        threefoldEllipse(-16,0);
    }
}

void keyPressed() {
    if (key == 'c') {
        background(255,255,255);
    }
}

void threefoldEllipse(int positionX, int positionY) {
    int baseSize = 8;
    for (int i = 3; i > 0; i--) {
        // ellipseは中が塗りつぶされているため、大きい順に描く必要がある
        ellipse(mouseX + positionX, mouseY + positionY, baseSize * i, baseSize * i);
    }
}