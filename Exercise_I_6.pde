//Nature of Code 
//Exercise I.6
//Create a random walker with a custom probability distribution. 
//Map the probability exponentially. 
//Executed by Dan Anderson-Little
//August 2017

  

class Walker {
  float x;
  float y;
  
  Walker() {
    x = width/2;
    y = height/2;
  }
  
  void display() {
    stroke(0);
    point(x,y);
  }
  
  void step() {
    int flipX;
    int flipY;
    
    float valX = random(1);
    if (valX < 0.5) {
      flipX = 1;
    } else {
      flipX = -1;
    }
    float valY = random(1);
    if (valY < 0.5) {
      flipY = 1;
    } else { 
      flipY = -1;
    }
    
    
    float stepx;
    float stepy;
    
    float r = random(0,55);
    if (r <= 1) {
      stepx = 1 * flipX;
      stepy = 1 * flipY;
    } else if (r <= 5) {
      stepx = 2 * flipX;
      stepy = 2 * flipY;
    } else if (r <= 14) {
      stepx = 3 * flipX;
      stepy = 3 * flipY;
    } else if (r <= 30) {
      stepx = 4 * flipX;
      stepy = 4 * flipY;
    } else {
      stepx = 5 * flipX;
      stepy = 5 * flipY;
    }
    
    
    
    x += stepx;
    y += stepy;
  }
}

Walker w;

void setup() {
  size(640, 360);
  w = new Walker();
  background(255);
}

void draw() {
  w.step();
  w.display();
}