//Nature of Code 
//Exercise I.7
//Create a random walker where you map the result of the 
// noise() function to the Walker's step size. 
//Executed by Dan Anderson-Little
//July 2017

  

  float tx = 0;
  float ty = 1000;

class Walker {
  float x;
  float y;
  
  Walker() {
    x = width/2;
    y = height/2;
  }
  
  void display() {
    stroke(0);
    fill(0);
    background(255);
    ellipse(x,y, 16, 16);
  }
  
  void step() {
     
    
    float stepx = map(noise(tx), 0, 1, -1, 1);
    float stepy = map(noise(ty), 0, 1, -1, 1);
    
    x += stepx;
    y += stepy;
    
    tx += 0.01;
    ty += 0.01;
    
    print(stepx);
    print(stepy);
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