int red; int green; int blue; int u; int window; int Colorset;

Menu menu;
Settings settings;
Credits credits;

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
  background(220,220,255);
  display();
}

void mouseReleased(){
  if (menu.settings.MouseOnButton() && menu.OnMenu()){ // Accés aux Settings
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
