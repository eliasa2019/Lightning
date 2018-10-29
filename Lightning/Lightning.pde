int width = 800;
int height = 500;
int startX = 0;
int startY = height / 2;
int endX = 0;
int endY = 150;
boolean isFirstIteration;

void settings() {
  size(width, height);
}

void setup() {
  strokeWeight(random(4, 6));      // [4,6), in the set of real numbers
  strokeCap(ROUND);
  frameRate(1000);
  isFirstIteration = true;
  flash(500);
  loop();
}

void draw() {
  if(isFirstIteration) flash(500);
  isFirstIteration = false;
  stroke(random(50)+206, random(50)+206, random(50)+206);   // [206,256), in the set of real numbers
  endX = startX + int(random(1)*11);                        // [0,10], in the set of integers
  endY = startY + int(random(1)*20-10);                     // [-10,9], in the set of integers
  line(startX, startY, endX, endY);
  startX = endX;
  startY = endY;
  if (startY<-1||height+1<startY||startX<-1||width+1<startX) {
    noLoop();
    background(0,0,0);
  }
}

void flash(int rest) {
  background(256,256,256);
  delay(rest);
  background(0,0,0);
}

void mouseClicked() {
  reset();
  loop();
}

void reset() {
  startX = 0;
  startY = height / 2;
  endX = 0;
  endY = 150;
  strokeWeight(random(4, 6));
  isFirstIteration = true;
}
