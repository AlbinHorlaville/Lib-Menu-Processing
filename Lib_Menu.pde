int red; int green; int blue; int u; int window; int Colorset;

Menu menu;
Settings settings;
Credits credits;
Play play;

void setup() {
  red = 250;
  green = 200;
  blue = 100;
  u = 60;
  window = 500;
  Colorset = 1;
  size(500, 500);
  background(220,220,255);
  menu = new Menu();
  settings = new Settings();
  credits = new Credits();
  play = new Play();
}

void display(){
  if (menu.OnMenu()){
    menu.display(Colorset);
  }
  else if (settings.OnSettings()){
    settings.display(Colorset);
  }
  else if (credits.OnCredits()){
    credits.display(Colorset);
  }
  else if (play.OnPlay()){
    play.display(Colorset);
  }
  else if (play.end.OnEnd()){
    play.end.display(Colorset, play.score.current);
  }
}

  void SetColor1(){
    Colorset = 1;
  }
  
  void SetColor2(){
    Colorset = 2;
  }
  
  void SetColor3(){
    Colorset = 3;
  }

void draw() {
  background(100,255,150);
  //background((mouseX/2)%255, 220, 255);
  display();
}

void mouseReleased(){
  if (menu.play.MouseOnButton() && menu.OnMenu()){ // Accés au jeu
    menu.ChangeOnMenu();
    play.ChangeOnPlay();
  }
  else if (menu.settings.MouseOnButton() && menu.OnMenu()){ // Accés aux Settings
    menu.ChangeOnMenu();
    settings.ChangeOnSettings();
  }
  else if (menu.credits.MouseOnButton() && menu.OnMenu()){ // Accés aux crédits
    menu.ChangeOnMenu();
    credits.ChangeOnCredits();
  }
  else if (settings.Return.MouseOnButton() && settings.OnSettings()){ // Retour menu depuis settings
    menu.ChangeOnMenu();
    settings.ChangeOnSettings();
  }
  else if (credits.Return.MouseOnButton() && credits.OnCredits()){ // Retour menu depuis settings
    menu.ChangeOnMenu();
    credits.ChangeOnCredits();
  }
  else if (play.end.replay.MouseOnButton() && play.end.OnEnd()){ // Retour menu depuis settings
    play = new Play();
    play.ChangeOnPlay();
  }
  else if (play.end.home.MouseOnButton() && play.end.OnEnd()){ // Retour menu depuis settings
    play = new Play();
    menu.ChangeOnMenu();
  }
  else if (settings.Color1.MouseOnButton() && settings.OnSettings()){ // change setcolor
    SetColor1();
  }
  else if (settings.Color2.MouseOnButton() && settings.OnSettings()){ // change setcolor
    SetColor2();
  }
  else if (settings.Color3.MouseOnButton() && settings.OnSettings()){ // change setcolor
    SetColor3();
  }
}

void keyReleased(){
  if (key==BACKSPACE && play.OnPlay()){ // Accés aux Settings
    println("OUI");
    menu.ChangeOnMenu();
    play.ChangeOnPlay();
  }
}
