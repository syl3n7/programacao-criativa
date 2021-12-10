Shape s;

void main() {

    size(800, 800, P2D);

}

void draw() {

  background(0);
  translate(width/2, height/2);
  rotate(frameCount/100);
  s.draw();
  
}