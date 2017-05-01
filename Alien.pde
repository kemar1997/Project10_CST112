class Alien1 {
  // Global variables
  float x; // x location variable for the Alien
  float y; // y location variable for the Alien
  
  // Directional and speed values for movement
  float xspeed;
  float yspeed;
  float xdirection;
  float ydirection;
  
  /*----------------------------------------------------------------*/
  
  // Constructor
  Alien1() {
    x= -140;//width/2;
    y= -140;//height/2;
    
    xspeed = random(2.2, 5);
    yspeed = random(2.2, 5);
    
    xdirection = 1;
    ydirection = 1;
  }
  
  /*----------------------------------------------------------------*/
  
  // Functions go below here
  
  void display(float r1, float g1, float b1, float r2, float g2, float b2, float r3, float g3, float b3, float r4, float g4, float b4) {
    
    // Base Head
    
    stroke(rgbValues[0], rgbValues[0], rgbValues[0]);
    fill(r1, g1, b1);
    ellipse(x+250, y+200, 200, 200);
    
    // Rectangle in the middle of the Alien's head
    
    fill(r2, g2, b2);
    rect(x+245, y+100, 10, 140);
    
    // Eyes of the Alien
    
    stroke(rgbValues[9], rgbValues[9], rgbValues[9]);
    fill(r3, g3, b3);
    ellipse(x+190, y+200, 30, 30);
  
    fill(r4, g4, b4);
    ellipse(x+310, y+200, 30, 30);
  }
  

  void moveAlien1() {
    x = x + (xspeed * xdirection);
    y = y + (yspeed * ydirection);
  }
  
  void bounceAlien1() {
    if (x > 400 || x < -150) {
      xdirection *= -1;
    }
    if (y > 400 || y < -150) {
      ydirection *= -1;
    }
  }
  
  // Manipulating the array for RGB Values to change the color of the object once the mouse is pressed but if the mouse is released it turns back to the original color
  // Also if the mouse is held down you will get a varied amount of color combinations until you let go of the mouse
  
  void colorChanger() {
    if (mousePressed) {
      rgbValues[6] = random(255);
      rgbValues[7] = random(255);
      rgbValues[8] = random(255);
      rgbValues[9] = random(255);
      rgbValues[10] = random(255);
      rgbValues[11] = random(255);
    } else if (mousePressed == false) {
        rgbValues[6] = 0;
        rgbValues[7] = 0;
        rgbValues[8] = 255;
        
        rgbValues[9] = 255;
        rgbValues[10] = 0;
        rgbValues[11] = 255;
    } else {
        return;
    }
  }
}