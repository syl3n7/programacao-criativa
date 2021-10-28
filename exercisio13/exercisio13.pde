Quadrado[] q = new Quadrado[4];

void setup(){
  size(500,500);
  for(int i=0;i<4;i++){
  q[i] = new Quadrado(int(random(40,460)), int(random(40,460)));
  }
}

void draw(){
  for(int i=0;i<4;i++){
    if (mr == true) {
      a = mouseX;
      b = mouseY;
    } 
  }
}

void mouseReleased(){
  if(mouseX >= a && mouseY >= b){
    for(int i=0;i<4;i++){
    fill(q[i].cd);
    }
  }
}
