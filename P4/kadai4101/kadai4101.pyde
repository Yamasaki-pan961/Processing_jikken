ballX=0
ballY=0
ballRadius = 20
dx=2.0
dy=2.0
racketX=0
racketY=0
racketMove=20

def setup():
    global ballX,ballY
    size(640,480)
    background(64,64,128)
    stroke(128,128,255)
    fill(255,200)
    ballX=random(20,width-20)
    ballY=random(20,height-20)
    
def draw():
    global ballX,ballY,dx,dy
    background(64,64,128)
    ballX+=dx
    ballY+=dy
    
    if ballX<10 or ballX > width-10:
        dx = -dx
    if ballY<10 or ballY > height-10:
        dy = -dy
    
    ellipse(ballX,ballY,ballRadius, ballRadius)
