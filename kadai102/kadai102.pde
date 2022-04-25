void setup() {
    size(600,500);
    background(255,255,255);
}

void draw() {
    if (mousePressed == true) {
        stroke(random(256),random(256), random(256));
        threefoldEllipse();
    }
}

void keyPressed() {
    if (key == 'c') {
        background(255,255,255);
    }
}

void threefoldEllipse() {
    int baseSize = 8;
    for (int i = 3; i > 0; i--) {
        // ellipseは中が塗りつぶされているため、大きい順に描く必要がある
        ellipse(mouseX, mouseY, baseSize * i, baseSize * i);
    }
}