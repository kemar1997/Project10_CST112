// Kemar Golding
// Email: kkemargolding@gmail.com
// Project 10
// Due Date: May 2, 2017
// Description: Creating two alien objects bouncing around the output window with randomized speeds. Also I used the append and shorten functions to manipulate the object array so that more objects can appear or
// disappear one by one. The objects also change color when the mouse is pressed but returns back to the original color when the mouse is released. Created a gradient background using a simple for loop solution.

// Instantiate an array of two of each Alien objects
Alien1[] alien1 = new Alien1[2];
Alien2[] alien2 = new Alien2[2];

void settings() {
  size(600, 600, P2D);
}

void setup() {
  for(int i = 0; i < alien1.length; i++) {
    alien1[i] = new Alien1();
  }
  
  for(int i = 0; i < alien2.length; i++) {
    alien2[i] = new Alien2();
  }
}

void draw() {
  // Function that creates the background
  drawBG();
  
  for (Alien1 a1: alien1) {
    a1.display(rgbValues[0], rgbValues[1], rgbValues[2], rgbValues[3], rgbValues[4], rgbValues[5], rgbValues[6], rgbValues[7], rgbValues[8], rgbValues[9], rgbValues[10], rgbValues[11]);
    a1.moveAlien1();
    a1.bounceAlien1();
    a1.colorChanger();
  }
  
  for (Alien2 a2: alien2) {
    a2.display(rgbValues[12], rgbValues[13], rgbValues[14], rgbValues[15], rgbValues[16], rgbValues[17], rgbValues[18], rgbValues[19], rgbValues[20], rgbValues[21], rgbValues[22], rgbValues[23], rgbValues[24], rgbValues[25], rgbValues[26], rgbValues[27], rgbValues[28], rgbValues[29], rgbValues[30], rgbValues[31], rgbValues[32]);
    a2.moveAlien2();
    a2.bounceAlien2();
    a2.colorChanger();
  }
}