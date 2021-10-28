Quadrado[] q = new Quadrado[4];

void setup(){
 
  size(500,500);
  q[0] = new Quadrado(mouseX, mouseY);
  q[1] = new Quadrado(mouseX, mouseY);
  q[2] = new Quadrado(mouseX, mouseY);
  q[3] = new Quadrado(mouseX, mouseY);
  q[4] = new Quadrado(mouseX, mouseY);
}

void draw(){
 
  
  
}

void mouseReleased(){
  
  q[temp].posX = mouseX;
  q[temp].posY = mouseY;
  q[0].desenha();
  
}

void mouseMo
