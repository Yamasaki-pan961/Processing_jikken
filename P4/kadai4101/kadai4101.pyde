ballX=0
ballY=0
ballRadius = 10

dx=2.0
dy=2.0

racketX=320
racketY=400
racketW=30
racketH=10
racketMove=20

def setup():
    global ballX,ballY
    size(640,480)
    background(64,64,128)
    stroke(128,128,255)
    fill(255,200)
    ballX=random(20,width-20)
    ballY=random(20,height-20)
    rectMode(CENTER)
    
def draw():
    global ballX,ballY,dx,dy
    background(64,64,128)
    ballX+=dx
    ballY+=dy
    
    if ballX<10 or ballX > width-10:
        dx = -dx
    if ballY<10 or ballY > height-10 or isCollision():
        dy = -dy
        
    
    ellipse(ballX,ballY,ballRadius*2, ballRadius*2)
    rect(racketX, racketY, racketW, racketH)
    
def isCollision():
    global ballX,ballY,ballRadius
    overlappingX = isOverlappingX(ballX + ballRadius, ballX - ballRadius)
    overlappingY = isOverlappingY(ballY + ballRadius, ballY - ballRadius)
    return overlappingX and overlappingY

def isOverlappingX(upper, lower):
    global racketW
    halfW = racketW/2
    return (racketX - halfW) < upper and (racketX + halfW) > lower

def isOverlappingY(upper, lower):
    global racketH
    halfH = racketH/2
    return(racketY - halfH)<(upper) and (racketY + halfH)>(lower)
                            

def keyPressed():
    global racketX, racketY, racketMove
    if key == CODED:
        if keyCode == RIGHT:
            racketX += racketMove
        if keyCode == LEFT:
            racketX -= racketMove
