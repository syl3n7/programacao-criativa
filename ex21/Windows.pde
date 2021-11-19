class Windows{

//propriedades
int linhas, colunas;
float posX, posY, larg, alt;
Rectangle[] janelas;

//construtor
Windows(int l, int c, float x, float la, float al){
    linhas = l;
    colunas = c;
    posX = x;
    posY = y;
    larg = la;
    alt = al;
    janelas = new Rectangle[linhas*colunas];
    float janelaX = posX;
    float janelaY = posY;
    float largurajanela = larg/float(colunas);
    float alturajanela = alt/float(linhas);
    for(int i = 0; i < linhas*colunas; i++){
        janelas[i] = new Rectangle(janelaX, janelaY, largurajanela, alturajanela);
        if(janelaX<posX+larg-largurajanela){
            janelaX += largurajanela;
        else {
                janelaX = posX;
                janelaY += alturajanela;
        }
    }
}

    void desenha(){
        for(int i = 0; i < janelas.length; i++){
            janelas[i].desenha();
        }
    }
}