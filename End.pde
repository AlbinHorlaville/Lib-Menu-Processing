class End{
  Button replay;
  Button home;
  boolean onend;
  
  End(){
    this.replay = new Button("Replay", width/2, width/2, width/3, 40);
    this.home = new Button("Home", width/2, width*2/3, width/3, 40);
    this.onend = false;
  }
  
  boolean OnEnd(){
    return this.onend;
  }
  
  void ChangeOnEnd(){
    this.onend = !this.onend;
  }
  
  void display(int Colorset, int score){
    PFont mono;
    // The font "andalemo.ttf" must be located in the 
    // current sketch's "data" directory to load successfully
    mono = createFont("monofonto rg.otf", 100);
    textFont(mono);
    text("End "+str(score), 500/2, 500/4);
    replay.display(Colorset);
    home.display(Colorset);
  }
}
