CloudsGen c1;
CloudsGen c2;
CloudsGen c3;

void setup() {
    frameRate(60);
    fullScreen(P2D);
    
    c1 = new CloudsGen("cloud1.png", 100, random(height));
    c2 = new CloudsGen("cloud2.png", 200, random(height));
    c3 = new CloudsGen("cloud3.png", 300, random(height));
}

void draw(){
    background(0, 80, 255);
    c1.draw();
    c2.draw();
    c3.draw();
    c1.move();
    c2.move();
    c3.move();
}