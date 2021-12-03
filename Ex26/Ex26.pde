Quadrado q;
float pogT = 0;

void setup(){
    
    noStroke();
    size(800, 800);
    q = new Quadrado();

}

void draw(){


    float num = noise(pogT);
    num = map(num, 0, 1, 0, height);
    q.drawme(num);
    
    pogT += 0.02;
    
}