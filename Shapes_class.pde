class Shapes {
  float x;
  float y;
  float xSpeed;
  float ySpeed;
  /*float radiusx = xSpeed;
   float radiusy = ySpeed;*/
  int radius;
  float radius2;
  int Shapescolour;
  int Shapescolour2;

  Shapes(float x, float y, float xSpeed, float ySpeed, int radius, color Shapescolour2) {
    this.x = x;
    this.y = y;
    this.xSpeed = xSpeed;
    this.ySpeed = ySpeed;
    this.radius = radius;
    this.Shapescolour2 = Shapescolour2;
  }

  Shapes(float x, float y, float xSpeed, float ySpeed, float radius, color Shapescolour) {
    this.x = x;
    this.y = y;
    this.xSpeed = xSpeed;
    this.ySpeed = ySpeed;
    this.radius2 = radius;
    this.Shapescolour = Shapescolour;
  }

  void move() {
    x += xSpeed;
    if (x < 0 || x > width) {
      xSpeed *= -1;
    }

    y += ySpeed;
    if (y < 0 || y > height) {
      ySpeed *= -1;
    }
  }

  void display() {
    if (clicked) {
      fill(Shapescolour2); 
      ellipse(x, y, 20, 20);
    } else {
      fill(Shapescolour2);
      rectMode(CENTER);
      square(x, y, 20);
    }
  }
  void update() {
    move();
    display();
  }
}  
