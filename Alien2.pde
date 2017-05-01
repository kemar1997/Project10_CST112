class Alien2 {
  float x; // x location variable for the Alien
  float y; // y location variable for the Alien
  
  // Directional and speed values for movement
  float xspeed;
  float yspeed;
  float xdirection;
  float ydirection;
  
  /*----------------------------------------------------------------*/
  
  // Constructor
  Alien2() {
    x=297.5;
    y=-140;
    
    xspeed = random(6, 7.5);
    yspeed = random(6, 7.5);
    
    xdirection = 1.8;
    ydirection = 1.8;
  }
  
  /*----------------------------------------------------------------*/
  
  // Functions go below here
  
  void display(float r1, float g1, float b1, float r2, float g2, float b2, float r3, float g3, float b3, float r4, float g4, float b4, float r5, float g5, float b5, float r6, float g6, float b6, float r7, float g7, float b7) {
    // Base Head
    stroke(rgbValues[21], rgbValues[22], rgbValues[23]);
    fill(r1, g1, b1);
    ellipse(x+250,y+200,100,100);
    
    // Rectangle in the middle
    fill(r2,g2,b2);
    rect(x+245,y+146.8,10,40);
    
    // Eyes
    fill(r3,g3,b3);
    ellipse(x+220,y+200,15,15);
  
    fill(r4,g4,b4);
    ellipse(x+280,y+200,15,15);
    
    // Ears 
    fill(r5,g5,b5);
    ellipse(x+290,y+155,30,30);
  
   fill(r6,g6,b6);
   ellipse(x+210,y+155,30,30);
   
   // Mouth
   fill(r7,g7,b7);
   ellipse(x+250,y+235,50,30);
  }
  
  void moveAlien2() {
    x = x + (xspeed * xdirection);
    y = y + (yspeed * ydirection);
  }
  
  void bounceAlien2() {
    if (x > 340 || x < -230) {
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
      rgbValues[24] = random(255);
      rgbValues[25] = random(255);
      rgbValues[26] = random(255);
  
      rgbValues[27] = random(255);
      rgbValues[28] = random(255);
      rgbValues[29] = random(255);
    } else if (mousePressed == false) {
        rgbValues[24] = 160;
        rgbValues[25] = 220;
        rgbValues[26] = 90;
  
        rgbValues[27] = 160;
        rgbValues[28] = 220;
        rgbValues[29] = 90;
    } else {
      return;
    }
  }
}