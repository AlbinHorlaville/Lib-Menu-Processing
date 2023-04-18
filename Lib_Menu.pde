int red; int green; int blue; int u; int window;

Menu menu;

void setup() {
  red = 250;
  green = 200;
  blue = 100;
  u = 60;
  window = 500;
  size(500, 500);
  background(220,220,255);
  menu = new Menu(window);

}

void draw() {
  background(220,220,255);
  menu.display();
}
