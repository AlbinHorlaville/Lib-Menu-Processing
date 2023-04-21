class Balle{
  int xgh;
  int ygh;
  int radius;
  
  Balle(){
    xgh = width/2;
    ygh = height/2;
    radius = 50;
  }
  
  boolean InWindow(){
    return xgh-radius/2>0 && xgh+radius/2<width && ygh-radius/2>0 && ygh+radius/2<width;
  }
  
  void moove(){
    if (key==CODED){
      if (keyCode==LEFT && xgh-radius/2>0){
        this.xgh = this.xgh - 5;
      }
      else if (keyCode==RIGHT && xgh+radius/2<width){
        this.xgh = this.xgh + 5;
      }
      else if (keyCode==UP && ygh-radius/2>0){
        this.ygh = this.ygh - 5;
      }
      else if (keyCode==DOWN && ygh+radius/2<width){
        this.ygh = this.ygh + 5;
      }
      else if (xgh-radius/2<=0){
        this.xgh = width - radius/2 -1;
      }
      else if (xgh+radius/2>=width){
        this.xgh = 0 + radius/2 + 1;
      }
      else if (ygh-radius/2<=0){
        this.ygh = width - radius/2 -1;
      }
      else if (ygh+radius/2>=width){
        this.ygh = 0 + radius/2 + 1;
      }
    }
    else{
      keyCode = SHIFT;
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
