CloudsGen c1;
CloudsGen c2;
CloudsGen c3;
Player p1;

void setup() {
    frameRate(60);
    size(600,600,P2D);
    
    c1 = new CloudsGen("cloud1.png", 100, random(height));
    c2 = new CloudsGen("cloud2.png", 200, random(height));
    c3 = new CloudsGen("cloud3.png", 300, random(height));
    p1 = new Player("f16.png", width/2, height/2, 20);
}

void draw(){
    background(0, 80, 255);
    c1.draw();
    c2.draw();
    c3.draw();
    c1.move();
    c2.move();
    c3.move();
    p1.draw();
    println(p1.posY);
}

void KeyPressed(){

    // if(key == ' '){
    //     p1.shoot();
    // }

    if(key == 's'|| key == 'S'){
        p1.movedown();
    }
    
    if(key == 'w'|| key == 'W'){
        p1.moveup(); 
    }
}