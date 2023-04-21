class Fruit{
  int xgh;
  int ygh;
  int diameter;
  
  Fruit(){
    RandomPos();
    diameter = 30;
  }
  
  void RandomPos(){
    this.xgh = int(random(50, width-50));
    this.ygh = int(random(50, width-50));
  }
  
  void display(){
    fill(255, 255, 0);
    circle(xgh, ygh, diameter);
  }
}
