class Play{
  Snake snake;
  Fruit fruit;
  Score score;
  boolean onPlay;
  
  Play(){
    this.snake = new Snake();
    this.fruit = new Fruit();
    this.score = new Score();
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
  void display(int Colorset){
    Collision();
    fruit.display();
    snake.display(Colorset);
    score.display();
  }
}
