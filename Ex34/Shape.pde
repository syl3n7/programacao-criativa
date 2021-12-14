class Shape{

    float posX, posY, tam, angle;

    Shape( float a){
        
        //posX = x;
        //posY = y;
        angle = a;

    }

    void drawme(){

        fill(255);

        beginShape();

        float cx = height/2;

        for(int i = 0; i < 360; i++){
            float posX = cx + tam * cos(i);
            float posY = cx + tam * sin(i);
            vertex(posX, posY);
        }

        endShape();

    }

}