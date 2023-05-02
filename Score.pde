class Score{
  int best;
  int current;
  
  Score(){
    this.best = 0;
    this.current = 0;
  }
  
  void increase(){
    this.current++;
  }
  
  void reset(){
    this.current = 0;
  }
  
  void resetBest(){
    this.best = 0;
  }
  
  void updateBest(){ // Historique des meilleurs score, à stocker dans un fichier et à afficher dans un menu dédier (à faire)
    this.best = max(this.best, this.current);
    // enregistrer nouveau record
  }
  
  void display(){
    PFont mono;
    fill(255, 255, 255);
    mono = createFont("monofonto rg.otf", 90);
    textFont(mono);
    text(str(current), width*9/10, height*9/10);
  }
}
