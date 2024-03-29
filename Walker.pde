/* interesting variations:
  
  extremely large squares with randomly colored strokes moving very slowly outward in a 'buzzing' motion
  smallish white shapes on a black background make it looks like burrowers digging tunnels
  solid objects with consistent colors making their way around
  objects with transparent fill and random strokes
  
  generally larger steps for larger objects unless those objects are exceptionally large
  
*/

class Walker {
  int x;
  int y;
  
  private color[] cols = new color[] {
    color(255,0,0),// red
    color(0,255,0),// green
    color(0,0,255),// blue
    color(255,255,0),// yellow
    color(0,75,0), // hunter green
    color(255,0,102), // hot pink
    color(153,0,204), // purple
    color(102,255,255) // teal
  };
  
  private boolean solidColors = false;
  private color strokeCol;
  private int w;
  private int h;
  
  Walker() {
    x = width/2;
    y = height/2; 
    
    w = 12;
    h = 12;
  }
  
  Walker(boolean solidColors) {
    x = width/2;
    y = height/2;
    
    w = 15;
    h = 15;
    
    this.solidColors = solidColors;
    
    if(this.solidColors) {
      int index = int(random(cols.length));
      strokeCol = cols[index];
    }
  }
  
  public void display() {
    //stroke(0); black dots making branches are boring
    
    if(this.solidColors){
      stroke(strokeCol);// solid colors are also interesting
      fill(strokeCol);// streams and streams
    } else {
      stroke(random(255), random(255), random(255));// that's more like it
      fill(255,255,255,0);// transparent fill is interesting
    }
    
    //point(x,y); points are less fun
    //rect(x,y,w,h); // squares are more fun than points
    ellipse(x,y,w,h); // ellipses look nicer than squares
  }
  
  // if we wanted a different color for each, we could randomly generate numbers in setup
  // and have a setter for stroke values (or fill if you use bigger shapes)
  // so that only those values are used in display()
  // if we wanted to get really fancy, we could do some method overloading as well
  
  public void step() {
    int stepx = int(random(4))-1; // original: stepx = int(random(3))-1;
    int stepy = int(random(4))-1; // original: stepy = int(random(3))-1;
    
    int reverse = int(random(2)); // randomly says if step direction will reverse
    
    if(reverse == 1) {
      x -= stepx;
      y -= stepy;
    } else {
      x += stepx;// original code
      y += stepy;// original code
    }
  }
}// end Walker