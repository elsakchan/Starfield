Particle[] stars = new Particle[800];

void setup()
{
  size(800, 800);
  for(int i = 0; i < stars.length; i++)
    stars[i] = new Particle();
    stars[1] = new OddballParticle();
}

void draw()
{
  background(0);
  for(int i = 0; i < stars.length; i++)
   {
     stars[i].move();
     stars[i].show();
   }
}

class Particle
{
  double myX, myY, mySpeed, myAngle;
  int myColor;
  Particle()
  {
    myX = myY = 400;
    myAngle = Math.random()*2*Math.PI;
    mySpeed = Math.random()*18;
    myColor = 255;
  }
  void move()
  {
    myX = myX + Math.cos(myAngle)*mySpeed;
    myY = myY + Math.sin(myAngle)*mySpeed;
    if(myX < 0 || myY < 0 || myX > 800 || myY > 800)
      myX = myY = 400;
  }
  void show()
  {
    fill(myColor);
    noStroke();
    ellipse((float)myX, (float)myY, 1.1, 1.1);
  }
}

class OddballParticle extends Particle
{
  OddballParticle()
  {
    myX = myY = 400;
    myColor = 51;
  }
  void move()
  {
    myX = myX + (int)(Math.random()*31)-15;
    myY = myY + (int)(Math.random()*31)-15;
    if(myX < 0 || myY < 0 || myX > 800 || myY > 800)
      myX = myY = 400;
  }
  void show()
  {
    fill(myColor);
    ellipse((float)myX, (float)myY, 65, 55);  
  }
}
