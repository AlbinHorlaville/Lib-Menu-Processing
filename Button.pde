class Button{
  String name;
  int xgh;
  int ygh;
  int hauteur;
  int largeur;
  Button(String name, int xgh, int ygh, int hauteur, int largeur) {
    this.name = name;
    this.xgh = xgh;
    this.ygh = ygh;
    this.hauteur = hauteur;
    this.largeur = largeur;
  }
  void display(int Colorset){
    int colorR, colorG, colorB;
    
    if (Colorset==1){
      colorR = 200;
      colorG = 0;
      colorB = 100;
    }
    else if(Colorset==2){
      colorR = 0;
      colorG = 100;
      colorB = 200;
    }else{
      colorR = 100;
      colorG = 200;
      colorB = 0;
    }
    if (this.MouseOnButton() && mousePressed){
      fill(colorR, colorG, colorB);
    }else if (this.MouseOnButton()){
      fill(colorR+55, colorG, colorB);
    }else{
      fill(colorR+55, colorB+100, colorR);
    }
    rectMode(CENTER);
    rect(xgh, ygh, hauteur, largeur, 28);
    fill(255, 255, 255);
    PFont mono;
    mono = createFont("andalemo.ttf", 20);
    textFont(mono);
    textAlign(CENTER, CENTER);
    text(name, xgh, ygh);
  }
  
  
  // La souris a pressé le bouton
  boolean MouseOnButton(){
    return xgh-hauteur/2<mouseX && mouseX<xgh+hauteur/2 && ygh-largeur/2<mouseY && mouseY<ygh+largeur/2; 
  }
}
