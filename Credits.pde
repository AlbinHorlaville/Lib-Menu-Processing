class Credits{
  Button Return;
  boolean oncredits;
  
  Credits(){
    Return = new Button("Return", width/6, width*5/6, width/5, 40);
    oncredits = false;
  }
  boolean OnCredits(){
    return oncredits;
  }
  
  void ChangeOnCredits(){
    this.oncredits = !this.oncredits;
  }
  
  void display(int Colorset){
    PFont mono;
    // The font "andalemo.ttf" must be located in the 
    // current sketch's "data" directory to load successfully
    mono = createFont("andalemo.ttf", 40);
    textFont(mono);
    text("Author\n Albin Horlaville", 500/2, 500/4);
    Return.display(Colorset);
  }
}
