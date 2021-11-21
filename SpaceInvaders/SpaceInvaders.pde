Spaceship s;
Invader i;

void setup(){
    size (800, 800);
    noStroke();
    frameRate(25);
    ellipseMode(CENTER);
    rectMode(CENTER);
    s = new Spaceship(width/2, height/2, 20);
    i = new Invader(float(20), float(20), float(20), false);
}

void draw(){

    background(0);
    s.desenha();
    i.desenha();
    
}

void keyPressed(){

    if(key == ' '){
        s.shoot();
    }

    if(s.posY>s.tam){
        if(key == 'W' || key == 'w'){
            s.moveUp();
        }
    }

    if(s.posY<height-s.tam){
        if(key == 'S' || key == 's'){
            s.moveDown();
        }
    }

    if(s.posX<width-s.tam){
        if(key == 'A' || key == 'a'){
            s.moveLeft();
        }
    }

    if(s.posX>s.tam){
        if(key == 'D' || key == 'd'){
            s.moveRight();
        }    
    }

}