//Nature of Code 
//Exercise I.9
//Add a third argument to noise that increments once
//per cycle through draw() to animate the 2D noise. 
//Executed by Dan Anderson-Little
//August 2017

float zoff = 0.0;
float zincrement = 0.02;

void setup() {
  size(640,360);
  frameRate(30);
}

void draw() {
 
loadPixels();
float xoff = 0.0;

for (int x = 0; x < width; x++) {
  float yoff = 0.0;
  for (int y = 0; y < height; y++) {
    noiseDetail(4,0.5);
    float green = map(noise(xoff,yoff,zoff),0,1,0,255);
    pixels[x+y*width] = color(0,green,0);
    yoff += 0.005;
  }
  xoff += 0.005;
}
updatePixels();  
zoff  += zincrement;
}