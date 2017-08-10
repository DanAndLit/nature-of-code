//Nature of Code 
//Exercise I.8
//Play with color, noiseDetail(), and the rate at which xoff 
//and yoff are incremented to achieve different visual effects. 
//Executed by Dan Anderson-Little
//August 2017


size(640,360);

loadPixels();
float xoff = 0.0;

for (int x = 0; x < width; x++) {
  float yoff = 0.0;
  for (int y = 0; y < height; y++) {
    noiseDetail(100,0.5);
    float green = map(noise(xoff,yoff),0,1,0,255);
    pixels[x+y*width] = color(0,green,0);
    yoff += 0.005;
  }
  xoff += 0.005;
}
updatePixels();  