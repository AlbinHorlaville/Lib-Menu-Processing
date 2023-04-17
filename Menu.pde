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
    rectMode(CENTER);
    fill(200, 0, 100);
    rect(xgh, ygh, hauteur, largeur, 28);
    fill(255, 255, 255);
    textAlign(CENTER);
    text(name, xgh, ygh);
  }
  
  
  // La souris a pressé le bouton
  boolean pressed(){
    return xgh-hauteur/2<mouseX && mouseX<xgh+hauteur/2 && ygh-largeur/2<mouseY && mouseY<ygh+largeur/2; 
  }
  void button_pressed(){
    fill(255, 180, 200);
    rect(xgh, ygh, hauteur, largeur, 28);
    fill(255, 255, 255);
    textAlign(CENTER);
    text(name, xgh, ygh);
  }
  
    // La souris a relaché le bouton
  boolean released(){
    return xgh-hauteur/2<mouseX && mouseX<xgh+hauteur/2 && ygh-largeur/2<mouseY && mouseY<ygh+largeur/2; 
  }
  void button_released(){
    fill(200, 0, 100);
    rect(xgh, ygh, hauteur, largeur, 28);
    fill(255, 255, 255);
    textAlign(CENTER);
    text(name, xgh, ygh);
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
  }
}
