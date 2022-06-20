def setup():
    global img
    img = loadImage("picture002.jpg")
    size(480,360)
    
def draw():
    image(img, 0, 0, img.width / 2, img.height / 2)
    image(img, img.width / 2, 0, img.width / 4, img.height / 4)
