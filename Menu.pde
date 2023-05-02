class Menu {
  Button play;
  Button settings;
  Button credits;
  boolean onmenu;
  
  Menu() {
     play = new Button("Play", width/2, width/2, width/3, 40);
     settings = new Button("Settings", width/2, width*2/3, width/3, 40);
     credits = new Button("Credits", width/2, width*5/6, width/3, 40);
     onmenu = true;
  }
  
  boolean OnMenu(){
    return onmenu;
  }
  
  void ChangeOnMenu(){
    this.onmenu = !this.onmenu;
  }
  
  void display(int Colorset){
    PFont mono;
    // The font "andalemo.ttf" must be located in the 
    // current sketch's "data" directory to load successfully
    mono = createFont("andalemo.ttf", 100);
    textFont(mono);
    text("LOMBRIZ", 500/2, 500/4);
    play.display(Colorset);
    settings.display(Colorset);
    credits.display(Colorset);
    // Possibilité de faire un tableau
  }
}
