class Balle{
  int xgh;
  int ygh;
  int radius;
  
  Balle(){
    xgh = width/2;
    ygh = height/2;
    radius = 50;
  }
  void moove(){
    
    if (key==CODED){
      if (keyCode==LEFT){
        this.xgh = this.xgh - 5;
      }
      else if (keyCode==RIGHT){
        this.xgh = this.xgh + 5;
      }
      else if (keyCode==UP){
        this.ygh = this.ygh - 5;
      }
      else if (keyCode==DOWN){
        this.ygh = this.ygh + 5;
      }
    }
  }
  
  void display(int Colorset){
    int colorR, colorG, colorB;
    
    moove(); 
    
    if (Colorset==1){
      colorR = 200;
      colorG = 0;
      colorB = 100;
    }
    else if(Colorset==2){
      colorR = 0;
      colorG = 100;
      colorB = 200;
    }else{
      colorR = 100;
      colorG = 200;
      colorB = 0;
    }
    fill(colorR+55, colorB+100, colorR);
    circle(this.xgh, this.ygh, radius);
  }
}
