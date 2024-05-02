class snowman {
  snowman(int i) {
    x= random(width/4, width-width/4);
    y= random(height);
    d= 1;
    vx= (2+i/2.3)/2;
    vy= (2+i/2.3)/2;
  }
  float x, y, d, vx, vy;
  void update() {
    x += vx;
    y += vy;
    if (x > width || x < 0) vx = -vx;
    if (y > height || y < 0) vy = -vy;
  }
  void show() {
    fill(255, 255, 0);
    triangle(x-3*d, y+12*d, x-7*d, y+16*d, x-3*d, y+16*d);
    triangle(x+3*d, y+12*d, x+3*d, y+16*d, x+7*d, y+16*d);
    fill(255, 255, 255);
    rect(x-13*d, y-3*d, 6*d, d);
    rect(x+7*d, y-3*d, 6*d, d);
    rect(x-5*d, y+6*d, 2*d, 8*d);
    rect(x+3*d, y+6*d, 2*d, 8*d);
    circle(x, y, 20*d);
    circle(x, y-13*d, 12*d);
    fill(255, 0, 0);
    circle(x-14*d, y-3*d, 4*d);
    circle(x+14*d, y-3*d, 4*d);
    fill(102, 178, 255);
    quad(x, y-19*d, x+3*d, y-20*d, x+5*d, y-18*d, x+5*d, y-16*d);
    fill(0, 0, 0);
    quad(x-3*d, y-10*d, x-3*d, y-9*d, x+3*d, y-9*d, x+3*d, y-11*d);
    circle(x-2*d, y-14*d, 2*d);
    triangle(x+d, y-14*d, x+3*d, y-15*d, x+3*d, y-13*d);
    quad(x-3.5*d, y-16.5*d, x-4*d, y-16*d, x-d, y-15*d, x-0.5*d, y-15.5*d);
    quad(x+d, y-15*d, x+3.5*d, y-16.5*d, x+3*d, y-17*d, x+0.5*d, y-15.5*d);
  }
} //class
