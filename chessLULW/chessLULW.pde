size(1200,1200);
//int halfImage = width*height/2;
PImage myImage = loadImage("board.png");
image(myImage, 0, 0);

loadPixels();
/*for (int i = 0; i < height; i++) {
  pixels[i] = pixels[i];
}*/
updatePixels();
