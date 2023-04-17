int red = 250; int green = 200; int blue = 100; int u = 60; int size_window = 500;

Menu menu;

void setup() {
  size(500, 500);
  background(220,220,255);
  menu = new Menu(size_window);
  //drawGrid();
  
}

void draw() {
  menu.display();
}

void mousePressed(){
  if (menu.play.pressed()){
    println("play marche !");
    menu.play.button_pressed();
  }
    if (menu.settings.pressed()){
    println("settings marche !");
    menu.settings.button_pressed();
  }
    if (menu.credits.pressed()){
    println("credits marche !");
    menu.credits.button_pressed();
  }
}
void mouseReleased(){
  if (menu.play.released()){
    println("play marche !");
    menu.play.button_released();
  }
    if (menu.settings.released()){
    println("settings marche !");
    menu.settings.button_released();
  }
    if (menu.credits.released()){
    println("credits marche !");
    menu.credits.button_released();
  }
  
}
