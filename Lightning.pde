int width = 800;
int height = 500;
int startX = 0;
int startY = 150;
int endX = 0;
int endY = 150;

void settings() {
  size(width,height);
}

void setup() {
  background(0,0,0);
  strokeWeight(random(4,6));      // [1,5], in the set of integers
  frameRate(30);
}
void draw()
{
  stroke(random(20)+246,random(20)+246,random(20)+246);   // [0,20), in the set of real numbers
    endX = startX + int(random(1)*10);
    endY = startY + int(random(1)*20-9);
    line(startX,startY,endX,endY);
    startX = endX;
    startY = endY;
}
void mousePressed()
{
  reset();
}

void reset() {
  startX = 0;
  startY = 150;
  endX = 0;
  endY = 150;
  strokeWeight(random(4,6));
}
