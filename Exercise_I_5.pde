//Nature of Code 
//Exercise I.5
//Create a random walker whose step size is 
//generated with a normal distribution.
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
     
    
    float stepx = (2 * randomGaussian());
    float stepy = (2 * randomGaussian());
    
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