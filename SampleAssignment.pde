int xPos = 400;
int yPos = 100;

float xVD = 0;
float yVD = 0;

float xVel = 0;
float yVel = 0;

void setup()
{
  size(800,800);
}
void draw()
{
  background(100);
  ellipse(xPos, yPos, 20, 20);

  yVel += 1;

  if (xPos + 10 >= 800) {
  	xPos = 799;
  	xVel *= -0.85;
  } else if (xPos - 10 <= 0) {
  	xPos = 1;
  	xVel *= -0.85;
  }

  if (yPos + 10 >= 800) {
  	yPos = 799;
  	yVel *= -0.85;
  } else if (yPos - 10 <= 0) {
  	yPos = 1;
  	yVel *= -0.85;
  }

  xPos += xVel;
  yPos += yVel;
}

void mouseClicked() {
  xVel = random(1) > 0.5 ? random(-20, -10) : random(10, 20);
  yVel += random(-30, -25);
}


