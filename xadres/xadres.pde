size(500, 500);

float tilesX =8;
float tilesY = tilesX;
color blue = color(40, 150, 190);
color purple = color(150, 40, 190);
float tileW = width / tilesX;
float tileH = height / tilesY;

for (int x=0; x<tilesX; x++) {
  for (int y=0; y<tilesY; y++) {
    float posX = tileW*x;
    float posY = tileH*y;
    if (y%2==0) {
      fill(blue);
    } else {
      fill(purple);
    }


    pushMatrix();
    translate(posX, posY);
    
      rect(tileW-50, tileH-50, 50, 50);
      
    popMatrix();
  }
}
