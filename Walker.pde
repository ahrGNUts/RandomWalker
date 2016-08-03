class Walker {
  int x;
  int y;
  final int w = 2;
  final int h = 2;
  color[] cols = new color[] {
    color(255,0,0),// red
    color(0,255,0),// green
    color(0,0,255),// blue
    color(255,255,0),// yellow
    color(204,51,0), // orange
    color(255,0,102), // hot pink
    color(153,0,204), // purple
    color(102,255,255) // teal
  };
  boolean solidColors = true;
  
  Walker() {
    x = width/2;
    y = height/2; 
  }
  
  Walker(boolean solidStart) {
    x = width/2;
    y = height/2;
    
    if(solidStart){
      // start with one solid color per object
    } else {
      
    }
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