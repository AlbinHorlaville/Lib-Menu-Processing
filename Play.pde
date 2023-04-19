class Play{
  Balle ball;
  boolean onPlay;
  
  Play(){
    ball = new Balle();
    onPlay = false;
  }
  
  boolean OnPlay(){
    return onPlay;
  }
  
  void ChangeOnPlay(){
    this.onPlay = !this.onPlay;
  }
  
  void display(int Colorset){
    ball.display(Colorset);
  }
}
