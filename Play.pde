class Play{
  Balle ball;
  Fruit fruit;
  boolean onPlay;
  
  Play(){
    ball = new Balle();
    fruit = new Fruit();
    onPlay = false;
  }
  
  boolean OnPlay(){
    return onPlay;
  }
  
  void ChangeOnPlay(){
    this.onPlay = !this.onPlay;
  }
  void Collision(){
    if (ball.xgh>fruit.xgh-fruit.diameter && ball.xgh<fruit.xgh+fruit.diameter && ball.ygh>fruit.ygh-fruit.diameter && ball.ygh<fruit.ygh+fruit.diameter){
      fruit.RandomPos();
    }
  }
  void display(int Colorset){
    Collision();
    fruit.display();
    ball.display(Colorset);
    
  }
}
