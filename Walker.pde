class Walker {
  int x;
  int y;
  final int w = 2;
  final int h = 2;
  
  Walker() {
    x = width/2;
    y = height/2; 
  }
  
  public void display() {
    //stroke(0); black dots making branches are boring
    stroke(random(255), random(255), random(255));// that's more like it
    //point(x,y); points are less fun
    rect(x,y,w,h); // squares are more fun
  }
  
  // if we wanted a different color for each, we could randomly generate numbers in setup
  // and have a setter for stroke values (or fill if you use bigger shapes)
  // so that only those values are used in display()
  // if we wanted to get really fancy, we could do some method overloading as well
  
  public void step() {
    int stepx = int(random(3))-1;
    int stepy = int(random(3))-1;
    
    x += stepx;
    y += stepy;
  }
}// end Walker