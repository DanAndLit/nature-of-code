//Nature of Code 
//Exercise I.3
//Random walker with a 50% chance of moving in direction
//of the mouse & 50% chance of moving randomly
//Executed by Dan Anderson-Little
//July 2017

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
    float stepx = random(-1.0, 1.0);
    float stepy = random(-1.0, 1.0);

    
    
    float r = random(1);
    float prob = 0.50;
    if (r < prob) {
      x += stepx;
      y += stepy;
    }
    
    else {
      float mouseXpos = mouseX;
      float mouseYpos = mouseY;
    
      float mouseMag = sqrt(sq(mouseXpos-x) + sq(mouseYpos-y));
    
      float deltaX = (mouseXpos-x) / mouseMag;
      float deltaY = (mouseYpos-y) / mouseMag;
    
      x += deltaX;
      y += deltaY;
    }
  }
}

Walker w;

void setup() {
  size(640, 360);
  w = new Walker();
  background(255);
  float mouseX;
  float mouseY;
}

void draw() {
  w.step();
  w.display();
}