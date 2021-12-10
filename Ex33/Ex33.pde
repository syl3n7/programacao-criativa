Bola[] b;
float n = 10;

void setup (){

    size(800,800);
    b = new Bola[int(n)];
    int k = 0;
    for(float i = 0; i < TWO_PI; i = i + TWO_PI/n){
        b[k] = new Bola(i);
        k++;
    }

}

void draw(){

    background(0);
    for(int i = 0; i < b.length; i++){
        b[i].drawme();
    }
}