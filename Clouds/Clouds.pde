CloudsGen c1;
CloudsGen c2;
CloudsGen c3;

void setup() {
    fullScreen(P2D);
    c1 = new CloudsGen("cloud1.png", 100, random(height));
    c2 = new CloudsGen("cloud2.png", 200, random(height));
    c3 = new CloudsGen("cloud3.png", 300, random(height));
}

void draw(){
    background(0, 10, 205);
    c1.draw();
    c2.draw();
    c3.draw();
}