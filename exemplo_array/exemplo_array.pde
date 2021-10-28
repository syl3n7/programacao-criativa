Palavra[] p = new Palavra[3];

void setup(){
 
  size(500,500);
  p[0] = new Palavra("correr");
  p[1] = new Palavra("com");
  p[2] = new Palavra("tesouras");
  
}

void draw(){
 
  
  
}

void mouseReleased(){
  
  int temp = int(random(3));
  p[temp].posX = mouseX;
  p[temp].posY = mouseY;
  p[temp].desenha();
    
}
