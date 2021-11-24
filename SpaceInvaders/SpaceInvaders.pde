Spaceship s;
Invader[] i;


void setup(){
    size (800, 800);
    noStroke();
    frameRate(30);
    ellipseMode(CENTER);
    rectMode(CENTER);
    s = new Spaceship(width/2, height/2, 20);
    Invader i[] = new Invader[10];
    for(int a = 0; a < i.length; a++){
        i[a] = new Invader(float(20), float(20), float(20), false);
    }
    for(int a = 0; a < i.length; a++){
        i[a].spawn();
    }
}

void draw(){

    background(0);
    s.spawn();
       
}

void keyPressed(){

    if(key == ' '){
        s.shoot();
    }

    if(s.posY>s.tam/2){
        if(key == 'W' || key == 'w'){
            s.moveUp();
        }
    }

    if(s.posY<height-s.tam/2){
        if(key == 'S' || key == 's'){
            s.moveDown();
        }
    }

    if(s.posX>s.tam/2){
        if(key == 'A' || key == 'a'){
            s.moveLeft();
        }
    }

    if(s.posX<width-s.tam/2){
        if(key == 'D' || key == 'd'){
            s.moveRight();
        }    
    }

}