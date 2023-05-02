class Balle{
  int xgh;
  int ygh;
  int diameter;
  int direction;
  boolean disp; // empêche de clipping du corps du ver de terre quand il croque le fruit
  
  Balle(){
    this.xgh = width/2;
    this.ygh = height/2;
    this.diameter = 50;
  }
  
  Balle(int X, int Y){
    this.xgh = X;
    this.ygh = Y;
    this.diameter = 50;
  }
  
  boolean InWindow(){
    return this.xgh-this.diameter/2>0 && this.xgh+this.diameter/2<width && this.ygh-this.diameter/2>0 && this.ygh+this.diameter/2<width;
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
    circle(this.xgh, this.ygh, this.diameter);
  }
}
