color bg, cbola;
int a, b;
void setup(){

  size(500, 500);
  bg = color(255);
  cbola = color(0);
  
}

void draw(){
  background(bg);
  desenhaBola();
  
}

void desenhaBola() {
  a = height/2;
  b = width/2;
  ellipse(a, b, mouseX, mouseY);
}

void mouseReleased(){
  if(mouseX >= a && mouseY >= b){
  fill(cbola);
  }
}
