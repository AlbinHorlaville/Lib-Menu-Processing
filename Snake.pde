class Snake{
  ArrayList<Balle> body;
  Balle head;
  int nb_cels;
  int last_direction; // Designed to stop 180 degree rotation
  
  Snake(){
    this.head = new Balle();
    this.body = new ArrayList<Balle>();
    this.body.add(head);
    this.nb_cels++;
    last_direction = SHIFT;
  }
  
  Balle head(){
    return this.body.get(0);
  }
  
  void grow(){
    int X = this.body.get(nb_cels-1).xgh;
    int Y = this.body.get(nb_cels-1).ygh;
    if (key==CODED){
      if (keyCode==LEFT){
        this.body.add(new Balle(X+5, Y));
      }
      else if (keyCode==RIGHT){
        this.body.add(new Balle(X-5, Y));
      }
      else if (keyCode==UP){
        this.body.add(new Balle(X, Y-5));
      }
      else if (keyCode==DOWN){
        this.body.add(new Balle(X, Y+5));
      }
    }
    nb_cels++;
  }
  
  void move(){
    for (int i=nb_cels-1; i>0; i--){
      this.body.get(i).xgh = this.body.get(i-1).xgh;
      this.body.get(i).ygh = this.body.get(i-1).ygh;
    }
  //  if (key==CODED){
      if (keyCode==LEFT && this.last_direction!=RIGHT && head().xgh-head().diameter/2>0){
          head().xgh = head().xgh - 5;
          this.last_direction = LEFT;
      }
      else if (keyCode==RIGHT && this.last_direction!=LEFT && head().xgh+head().diameter/2<width){
          head().xgh = head().xgh + 5;
          this.last_direction = RIGHT;
      }
      else if (keyCode==UP && this.last_direction!=DOWN && head().ygh-head().diameter/2>0){
          head().ygh = head().ygh - 5;
          this.last_direction = UP;
      }
      else if (keyCode==DOWN && this.last_direction!=UP && head().ygh+head().diameter/2<width){
          head().ygh = head().ygh + 5;
          this.last_direction = DOWN;
      } // Cas où l'on appuie sur une autre touche du clavier
      else{
        if (this.last_direction==LEFT){
          println("LEFT");
          head().xgh = head().xgh - 5;
        }
        else if (this.last_direction==RIGHT){
          println("RIGHT");
          head().xgh = head().xgh + 5;
        }
        else if(this.last_direction==UP){
          println("UP");
          head().ygh = head().ygh - 5;
        }
        else if (this.last_direction==DOWN){
          println("DOWN");
          head().ygh = head().ygh + 5;
        }
      }
      // The snake has to be teleport to the opposite side if he hit a wall (window's side)
      if (head().xgh-head().diameter/2<=0){
        head().xgh = width - head().diameter/2 -1;
      }
      else if (head().xgh+head().diameter/2>=width){
        head().xgh = 0 + head().diameter/2 + 1;
      }
      else if (head().ygh-head().diameter/2<=0){
        head().ygh = width - head().diameter/2 -1;
      }
      else if (head().ygh+head().diameter/2>=width){
        head().ygh = 0 + head().diameter/2 + 1;
      }
   // }
  }
  
  void display(int Colorset){
    move();
    for (int i=nb_cels-1; i>=0; i--){
      this.body.get(i).display(Colorset);
    }
  }
}
