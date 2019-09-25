int xPos = 400;
int yPos = 100;

float xVD = 0;
float yVD = 0;

float xVel = 0;
float yVel = 0;

ArrayList<int[]> clickers;

void setup()
{
  size(800,800);
  noStroke();

  clickers = new ArrayList();
}
void draw()
{
  background(100);

  for (int i = 0; i < clickers.size(); i++) {
  	int[] clicker = clickers.get(i);
  	clicker[2] += 2;
  	fill(200 - clicker[2]);
  	ellipse(clicker[0], clicker[1], clicker[2] * 7, clicker[2] * 7);
  	if (clicker[2] > 100) clickers.remove(clicker);
  }

  fill(255);
  ellipse(xPos, yPos, 20, 20);

  yVel += 1;

  xPos += xVel;
  yPos += yVel;

  if (xPos + 10 >= 800) {
  	xPos = 789;
  	xVel *= -0.85;
  } else if (xPos - 10 <= 0) {
  	xPos = 11;
  	xVel *= -0.85;
  }

  if (yPos + 10 >= 800) {
  	yPos = 789;
  	yVel *= -0.85;
  } else if (yPos - 10 <= 0) {
  	yPos = 11;
  	yVel *= -0.85;
  }
}

void mouseClicked() {
  xVel = random(1) > 0.5 ? random(-20, -10) : random(10, 20);
  yVel = Math.min(-20, yVel - 20);

  int[] clicker = {mouseX, mouseY, 0};
  clickers.add(clicker);
}


