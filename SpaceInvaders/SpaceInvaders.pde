Spaceship s;

void setup(){
    size (800, 800);
    noStroke();
    s = new Spaceship(width/2, height/2);
}

void draw(){

    background(0);
    s.desenha();

}