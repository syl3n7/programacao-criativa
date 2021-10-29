Quadrado[] q = new Quadrado[4];

void setup(){
  size(500,500);
  for(int i=0;i<4;i++){
  q[i] = new Quadrado(int(random(40,460)), int(random(40,460)));
  }
}

void draw(){
  for(int a=0;a<4;a++){
  if(mouseX >= q[a].posX && mouseY >= q[a].posY){
    for(int i=0;i<4;i++){
    fill(q[i].cd);
    }
  }
  }
}


void mouseReleased(){
  /*if(mouseX >= a && mouseY >= b){
    for(int i=0;i<4;i++){
    fill(q[i].cd);
    }
  }*/
}
