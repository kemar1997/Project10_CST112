// Manipulates the array to add more objects using the append function 
void mousePressed() {
  Alien1 alien1a = new Alien1();
  alien1 = ( Alien1[] ) append(alien1, alien1a);
  
  Alien2 alien2a = new Alien2();
  alien2 = ( Alien2[] ) append(alien2, alien2a);
}

void keyPressed() {
  // Makes the objects diappear one by one when a key is pressed but also rejects one object from disappearing until the othe object is no longer there
  if (alien1.length > 0) {
    alien1 = ( Alien1[] ) shorten(alien1);
  } else if (alien2.length > 0) {
    alien2 = ( Alien2[] ) shorten(alien2);
  } else {
    return;
  }
}