Spaceship s;
Invader i;

void setup(){
    size (800, 800);
    noStroke();
    s = new Spaceship(width/2, height/2, 20);
    i = new Invader(float(20), float(20), float(20));
}

void draw(){

    background(0);
    s.desenha();
    i.desenha();

}

void keyPressed(){

    if(key == 'W' || key == 'w'){
        s.moveUp();
    }
    if(key == 'S' || key == 's'){
        s.moveDown();
    }

    if(key == 'A' || key == 'a'){
        s.moveLeft();
    }

    if(key == 'D' || key == 'd'){
        s.moveRight();
    }

}