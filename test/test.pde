void setup() {
    size(400, 300);
    background(255, 255, 255);
    fill(0,102);
}

void draw() {
    if(mousePressed == true){
        ellipse(mouseX, mouseY, 10, 10);
    }
}
