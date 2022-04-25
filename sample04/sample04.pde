void setup() {
    size(600,500);
    background(255,255,255);
}

void draw() {
    if (mousePressed == true) {
        stroke(random(256),random(256), random(256));
        ellipse(mouseX, mouseY, 24 , 24);
        ellipse(mouseX, mouseY, 16 , 16);
        ellipse(mouseX, mouseY, 8 , 8);
    }
}
