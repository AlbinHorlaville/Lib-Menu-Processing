class Balle{
  int xgh;
  int ygh;
  int radius;
  int direction;
  boolean disp; // empêche de clipping du corps du ver de terre quand il croque le fruit
  
  Balle(){
    xgh = width/2;
    ygh = height/2;
    radius = 50;
  }
  
  Balle(int X, int Y){
    xgh = X;
    ygh = Y;
    radius = 50;
  }
  
  boolean InWindow(){
    return xgh-radius/2>0 && xgh+radius/2<width && ygh-radius/2>0 && ygh+radius/2<width;
  }
  

  
  void display(int Colorset){
    int colorR, colorB;
    
    //moove(); 
    
    if (Colorset==1){
      colorR = 200;
      colorB = 100;
    }
    else if(Colorset==2){
      colorR = 0;
      colorB = 200;
    }else{
      colorR = 100;
      colorB = 0;
    }
    fill(colorR+55, colorB+100, colorR);
    noStroke();
    circle(this.xgh, this.ygh, radius);
  }
}
