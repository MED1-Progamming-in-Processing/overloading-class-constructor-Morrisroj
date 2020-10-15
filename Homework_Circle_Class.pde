Boolean clicked = false;


Shapes circle;
Shapes square;

void setup() {
  size(300, 300);
  if (clicked) {  
    square = new Shapes(random(width), random(height), random(-3, 3), random(-3.1, 3), 50, #2a3ed7);
  } else {  
    circle = new Shapes(random(width), random(height), random(-3, 3), random(-3, 3), 50, #d7552a);
  }
}
void draw() {
  background(#00ff00);
  circle.move();
  circle.display();
}


void mousePressed() {
  if (clicked)
  { 
    clicked = false;
  } else {
    clicked = true;
  }
}
