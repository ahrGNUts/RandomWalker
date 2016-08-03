final int SIZE = 15;
ArrayList<Walker> w;

void setup() {
  size(640, 360);
  w = new ArrayList<Walker>();
  
  for(int i = 0; i < SIZE; i++){
    w.add(new Walker());
  }
  
  background(255);
}

void draw() {
  for(int i = 0; i < SIZE; i++){
    w.get(i).step();
    w.get(i).display();
  }
}