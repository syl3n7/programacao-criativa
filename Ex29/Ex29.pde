Ser[] s;
int n = 50;

void setup(){

    ellipseMode(CENTER);

    size (600, 600, P2D);

    s = new Ser[n];

    for(int i = 0; i < s.length; i++){
        s[i] = new Ser(random(width), random(height), 5, 50);
    }

}

void draw(){

    for(int i = 0; i < s.length; i++){
        s[i].drawme();
    }
    
}