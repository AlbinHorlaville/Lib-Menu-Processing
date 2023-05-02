class Play{
  Snake snake;
  Fruit fruit;
  Score score;
  End end;
  boolean onPlay;
  
  Play(){
    this.snake = new Snake();
    this.fruit = new Fruit();
    this.score = new Score();
    this.end = new End();
    this.onPlay = false;
  }
  
  boolean OnPlay(){
    return onPlay;
  }
  
  void ChangeOnPlay(){
    this.onPlay = !this.onPlay;
  }
  
  void Collision(){
    if (snake.head().xgh>fruit.xgh-fruit.diameter && snake.head().xgh<fruit.xgh+fruit.diameter && snake.head().ygh>fruit.ygh-fruit.diameter && snake.head().ygh<fruit.ygh+fruit.diameter){
      fruit.RandomPos();
      for (int i=0; i<5; i++){
        snake.grow();
      }
      this.score.increase();
    }
  }
  
  boolean HitItSelf(){
    Balle Head = this.snake.head();
    for (int i=this.snake.nb_cels-1; i>10; i--){
      Balle Current = snake.body.get(i);
      if (Head.xgh>Current.xgh-Current.diameter/2 && Head.xgh<Current.xgh+Current.diameter/2 && Head.ygh>Current.ygh-Current.diameter/2 && Head.ygh<Current.ygh+Current.diameter/2){
        return true;
      }
    }
    return false;
  }
  
  void display(int Colorset){
    Collision();
    if (HitItSelf()){
      // Afficher page de fin (affichage score et boutton replay)
      println("PERDU");
      this.ChangeOnPlay();
      end.ChangeOnEnd();
    }
    fruit.display();
    snake.display(Colorset);
    score.display();
  }
}
