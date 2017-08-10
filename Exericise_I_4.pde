
//Nature of Code 
//Exercise I.4
//Make a splatter paint simulation. Use a normal distribution to  
//generate the location of the dots & the color palate. 
//Executed by Dan Anderson-Little
//August 2017

  

class Splatter {
  float meanX;
  float meanY;
  
  float sdX;
  float sdY;
  
  float meanR;
  float meanG;
  float meanB;
  
  float r;
  float g;
  float b;
  
  Splatter() {
   
  }
  
  void splat() {
    
    meanX = randomGaussian() * 100 + width/2;
    meanY = randomGaussian() * 60 + height/2;
    
    sdX = randomGaussian() * 50;
    sdY = randomGaussian() * 50;
    
    meanR = random(10,245);
    meanG = random(10,245);
    meanB = random(10,245);
    
    
    r = randomGaussian() * 5 + meanR;
    g = randomGaussian() * 5 + meanG;
    b = randomGaussian() * 5 + meanB;
    
    stroke(r, g, b);
    fill(r, g, b);
    ellipse(randomGaussian()*sdX + meanX,randomGaussian()*sdY + meanY,4,4);
    ellipse(randomGaussian()*sdX + meanX,randomGaussian()*sdY + meanY,4,4);
    ellipse(randomGaussian()*sdX + meanX,randomGaussian()*sdY + meanY,4,4);
    ellipse(randomGaussian()*sdX + meanX,randomGaussian()*sdY + meanY,4,4);
    ellipse(randomGaussian()*sdX + meanX,randomGaussian()*sdY + meanY,4,4);
    ellipse(randomGaussian()*sdX + meanX,randomGaussian()*sdY + meanY,4,4);
    ellipse(randomGaussian()*sdX + meanX,randomGaussian()*sdY + meanY,4,4);
    ellipse(randomGaussian()*sdX + meanX,randomGaussian()*sdY + meanY,4,4);
    ellipse(randomGaussian()*sdX + meanX,randomGaussian()*sdY + meanY,4,4);
    ellipse(randomGaussian()*sdX + meanX,randomGaussian()*sdY + meanY,4,4);
    ellipse(randomGaussian()*sdX + meanX,randomGaussian()*sdY + meanY,4,4);
    ellipse(randomGaussian()*sdX + meanX,randomGaussian()*sdY + meanY,4,4);
    ellipse(randomGaussian()*sdX + meanX,randomGaussian()*sdY + meanY,4,4);
    ellipse(randomGaussian()*sdX + meanX,randomGaussian()*sdY + meanY,4,4);
    ellipse(randomGaussian()*sdX + meanX,randomGaussian()*sdY + meanY,4,4);
    ellipse(randomGaussian()*sdX + meanX,randomGaussian()*sdY + meanY,4,4);
    ellipse(randomGaussian()*sdX + meanX,randomGaussian()*sdY + meanY,4,4);
    ellipse(randomGaussian()*sdX + meanX,randomGaussian()*sdY + meanY,4,4);
    ellipse(randomGaussian()*sdX + meanX,randomGaussian()*sdY + meanY,4,4);
    ellipse(randomGaussian()*sdX + meanX,randomGaussian()*sdY + meanY,4,4);
    ellipse(randomGaussian()*sdX + meanX,randomGaussian()*sdY + meanY,4,4);
    
  
}
  
  
}

Splatter s;

void setup() {
  size(640, 360);
  s = new Splatter();
  background(255);
}

void draw() {
  frameRate(1);
  s.splat();
}