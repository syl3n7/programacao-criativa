PImage img;

    void setup() {
        fullScreen(P2D);
        img = loadImage("moon.jpg");
        img.resize(width, height);
        loadPixels();
    }

    void draw() {
        
        for (int i = 0; i < img.width; i++) {
            for (int j = 0; j < img.height; j++) {
                int index = i + j * img.width;

                                
                pixels[index] = color(red(img.pixels[index]), green(img.pixels[index]), blue(img.pixels[index]));
            }
        }
        updatePixels();
        
    }
}