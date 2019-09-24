int xPos = 100;
int yPos = 100;

double xVel = 0;
double yVel = 0;

void setup()
{
  size(200,200);
}
void draw()
{
  background(100);
  ellipse(xPos, yPos, 20, 20);

  yVel += 1;

  if (xPos >= 200) {
  	xPos = 199;
  	xVel *= -0.85;
  } else if (xPos <= 0) {
  	xPos = 1;
  	xVel *= -0.85;
  }

  if (yPos >= 200) {
  	yPos = 199;
  	yVel *= -0.85;
  } else if (yPos <= 0) {
  	yPos = 1;
  	yVel *= -0.85;
  }

  xPos += xVel;
  yPos += yVel;
}

void mouseClicked() {
  xVel += random(-5, 5);
  yVel += random(-5, -10);
}


