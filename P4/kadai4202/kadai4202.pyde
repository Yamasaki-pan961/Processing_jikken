gray = "GLAY"
color = "COLOR"
nega = "NEGA"
clear = "CLEAR"
binary = "BINARY"
none = "NONE"

def setup():
    size(480, 360)
    
    global mode
    mode = color
    global cacheImg, displayImg
    cacheImg = loadImage("picture002.jpg")
    displayImg = cacheImg.copy()
    
def draw():
    global mode
    
    if mousePressed and (mouseButton == RIGHT):
        mode = color
    
    filterSwitcher()
    mode = none
    text("Mouse-RIGHT: Color,  C: Clear",10, 340)
    text("G: Gray,  I: Nega,  B: Binary",10, 350)
    
    
def filterSwitcher():
    global displayImg, cacheImg, mode
    
    if mode == clear:
        background(255,255,255)
        return
    
    if mode == none:
        return
    
    if mode == gray:
        displayImg = cacheImg.copy()
        displayImg.filter(GRAY)
    
    if mode == binary:
        displayImg = cacheImg.copy()
        displayImg.filter(THRESHOLD,0.5)
    
    if mode == nega:
        displayImg = cacheImg.copy()
        displayImg.filter(INVERT)
    
    if mode == color:
        displayImg = cacheImg.copy()
           
    image(displayImg,0,0)

def negaFilter():
    return

def keyPressed():
    global mode
    if key == "c":
        mode = clear
        
    if key == "b":
        mode = binary
        
    if key == "i":
        mode = nega
    
    if key == "g":
        mode = gray
