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
  void display(){
    rectMode(CENTER);
    if (this.MouseOnButton() && mousePressed){
      fill(200, 0, 100);
    }else{
      fill(255, 180, 200);
    }
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

class Menu {
  Button play;
  Button settings;
  Button credits;
  
  Menu(int size_window) {
     play = new Button("Play", size_window/2, size_window/2, size_window/3, 40);
     settings = new Button("Settings", size_window/2, size_window*2/3, size_window/3, 40);
     credits = new Button("Credits", size_window/2, size_window*5/6, size_window/3, 40);
  }
  
  void display(){
    PFont mono;
    // The font "andalemo.ttf" must be located in the 
    // current sketch's "data" directory to load successfully
    mono = createFont("andalemo.ttf", 128);
    textFont(mono);
    text("MENU", 500/2, 500/4);
    play.display();
    settings.display();
    credits.display();
    // Possibilité de faire un tableau
  }
}
