snowman [] mm;
rabbit nn;
int startTime;
int endTime;
boolean gameOver = false;
void setup() {
  size (800, 800);
  mm = new snowman [15];
  nn = new rabbit();
  for (int i = 0; i <15; i++) {
    mm[i] = new snowman(i);
    startTime = millis();
  }
  
}
void draw() {
  background(92, 255, 209);
  int current = millis();
  int seconds = current / 1000;
  float posX = 20;
  float posY = 20;
  fill(0);
  textSize(20);
  text("Time: " + seconds, posX, posY);
  for (int i=0; i<15; i++) {
    mm[i].update();
    mm[i].show();
  }
  nn.min();
  
  for (int i = 0; i < 15; i++) {    //sprint3
    float distance = sqrt(sq(mm[i].x - nn.x) + sq(mm[i].y - nn.y));
    if (distance < 5 * mm[i].d + 5 * nn.b) {
      gameOver = true;
      endTime = millis();
      break;
    }
  }
    if (gameOver) {
    noLoop();
    textSize(32);
    fill(255, 0, 0);
    textAlign(CENTER, CENTER);
    text("Died", width / 2, height / 2);
    text("Score: " + (endTime - startTime) / 1000 + " seconds", width / 2, height / 2 + 40);
  }
}

void keyPressed() {   // sprint 2
  if (key == 'a') nn.x -= 5;
  else if (key == 'd') nn.x += 5;
  else if (key == 's') nn.y += 5;
  else if (key == 'w') nn.y -= 5;
}

    
