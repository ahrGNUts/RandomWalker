class Walker {
  int x;
  int y;
  
  Walker() {
    x = width/2;
    y = height/2; 
  }
  
  public void display() {
    stroke(0);
    point(x,y);
  }
  
  public void step() {
    int stepx = int(random(3))-1;
    int stepy = int(random(3))-1;
    
    x += stepx;
    y += stepy;
  }
}// end Walker