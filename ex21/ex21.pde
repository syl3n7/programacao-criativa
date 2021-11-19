Sky s;
City c;

void setup(){
    size(800, 800);
    noStroke();
    s = new Sky();
    c = new City();
}

void draw(){
    s.drawSky();
    c.drawCity();
}