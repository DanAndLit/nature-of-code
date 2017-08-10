//Nature of Code 
//Exercise I.1
//Create a random walker that has a tendency to
//move down and to the right. 
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
    float stepx = random(-1, 1.2);
    float stepy = random(-1, 1.2);
    
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