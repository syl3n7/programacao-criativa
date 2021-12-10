Bola[] b;
int n = 24;

void setup (){

    size(800,800);
    b = new Bola[n];
    for(int i = 0; i < n; i++){
        b[i] = new Bola(i);
    }

}

void draw(){

    background(0);
    b.drawme();

}