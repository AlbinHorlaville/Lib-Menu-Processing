class Settings{
  Button Return;
  Button Color1;
  Button Color2;
  Button Color3;
  boolean onsettings;
  
  Settings(){
    Return = new Button("Return", width/6, width*5/6, width/5, 40);
    Color1 = new Button("Color set 1", width/2, width/2, width/3, 40);
    Color2 = new Button("Color set 2", width/2, width*2/3, width/3, 40);
    Color3 = new Button("Color set 3", width/2, width*5/6, width/3, 40);
    onsettings = false;
  }
  
  boolean OnSettings(){
    return onsettings;
  }
  
  void ChangeOnSettings(){
    this.onsettings = !this.onsettings;
  }
  
  void display(int Colorset){
    PFont mono;
    // The font "andalemo.ttf" must be located in the 
    // current sketch's "data" directory to load successfully
    mono = createFont("andalemo.ttf", 90);
    textFont(mono);
    text("SETTINGS", 500/2, 500/4);
    Return.display(Colorset);
    Color1.display(Colorset);
    Color2.display(Colorset);
    Color3.display(Colorset);
  }
}
