
// Angle and radius
float theta; 
float r;

//'Zoom' effect of the plot, higher = more zoomed out. Best range is 20 - 100
int scale;

void setup() {
  
  size(1920, 1080); 
  background(0); // Set background to black
  scale = 20;
  
}

void draw() {
  stroke(255); // Set draw color to white
  translate(width/2, height/2); // Move origin to center of the screen
}


void keyPressed() {
  if (key == CODED) { //If up key is pressed redraw graph with scale up by 1, opposite for down key press
    if (keyCode == UP){
      clear();
      scale += 1;
      r = 0; //reset variables
      theta = 0;
      for (int i = 0; i < 100000; i++) {
        theta = i * sin(i); //convert points to plot polar point on a cartesian scale
        r = i * cos(i);
        if(i % 2 == 0)
          point(r/scale, theta/scale); //resize and draw point.
      }
    }
    if (keyCode == DOWN){
      clear();
      scale -= 1;
      r = 0; //reset variables
      theta = 0;
      for (int i = 0; i < 100000; i++) {
        theta = i * sin(i); //convert points to plot polar point on a cartesian scale
        r = i * cos(i);
        if(i % 2 == 0)
          point(r/scale, theta/scale); //resize and draw point.
      }
    }
  }
}
 
