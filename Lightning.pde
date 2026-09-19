int startX = 320;
int startY = 60;
int endX = 320;
int endY = 60;

void setup() {
  size(640, 480);
  strokeWeight(2);
  background(20, 20, 40);
  drawScene();
}

void draw() {
  stroke((float)(Math.random() * 100) + 155, (float)(Math.random() * 100) + 155, 255);

  while (endY < 400) { 
    endX = startX + (int)(Math.random() * 19) - 9; 
    endY = startY + (int)(Math.random() * 10);      
    line(startX, startY, endX, endY);
    startX = endX;
    startY = endY;
  }
}

void mousePressed() {
  background(20, 20, 40);
  drawScene();
  startX = 320;
  startY = 60;
  endX = 320;
  endY = 60;
}

void drawScene() {
  noStroke();
  fill(30, 60, 30);
  rect(0, 400, width, 80);

  fill(80);
  ellipse(280, 50, 90, 50);
  ellipse(340, 40, 100, 50);
  ellipse(400, 55, 80, 45);

  fill(120, 70, 40);
  rect(80, 340, 90, 60);
  fill(90, 40, 30);
  triangle(75, 340, 125, 300, 175, 340);

  fill(150, 40, 40);
  rect(480, 320, 60, 80);
  fill(100, 20, 20);
  triangle(475, 320, 510, 285, 545, 320);

  fill(180);
  rect(560, 330, 20, 70);
  ellipse(570, 330, 20, 20);
}
