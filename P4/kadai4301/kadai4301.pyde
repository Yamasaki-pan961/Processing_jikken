angle = 60
decreace = 0.66

def setup():
    size(640,360)
    
def draw():
    background(255)
    stroke(0)
    translate(width / 2, height)
    line(0,0,0,-120)
    translate(1,-120)
    branch(120,radians(angle))
    
def branch(h, theta):
    h *= decreace
    if h > 2:
        pushMatrix()
        rotate(theta)
        line(0,0,0,-h)
        translate(0,-h)
        branch(h,theta)
        popMatrix()
        with pushMatrix():
            rotate(-theta)
            line(0,0,0,-h)
            translate(0,-h)
            branch(h,theta)

def incrementAngle():
    global angle
    if angle < 90:
        angle += 1

def decrementAngle():
    global angle
    if angle > 0:
        angle -=1
        
def keyPressed():
    if key == CODED:
        if keyCode == UP:
            incrementAngle()
        
        if keyCode == DOWN:
            decrementAngle()
