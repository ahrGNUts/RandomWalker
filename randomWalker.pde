final int SIZE = 15;
ArrayList<Walker> w;

void setup() {
  size(950, 650);
  w = new ArrayList<Walker>();
  
  initObjects();
  background(255);
}

void draw() {
  for(int i = 0; i < SIZE; i++){
    w.get(i).step();
    w.get(i).display();
  }
  
  if(keyPressed) {
    if(key == 'b') {
      background(255);
    }
    if(key == 'r') {
      // delete current objects and create new ones with new fill/stroke
      w.clear();
      initObjects();
    }
  }
}

void initObjects() {
  int solids = int(random(2));
  
  if(solids == 1) {
    for(int i = 0; i < SIZE; i++){
      w.add(new Walker(true));
    }
  } else {
    for(int i = 0; i < SIZE; i++){
    w.add(new Walker());
    }
  }
}