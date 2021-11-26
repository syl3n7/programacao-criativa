PImage img;
void setup() {
    fullScreen(P2D);
    img = loadImage("moon.jpg");
    img.resize(width, height);
    loadPixels();
}

void draw() {

    for (int i = 0; i < width; i++) {
        for (int j = 0; j < height; j++) {
            int index = i + j * width;
            float r = red(img.pixels[index]);
            float g = green(img.pixels[index]);
            float b = blue(img.pixels[index]);
            if(r < 128 && b < 128 && g < 128){
                pixels[index] = color(r, g, b);
            }
        }
    }
    updatePixels();
}
