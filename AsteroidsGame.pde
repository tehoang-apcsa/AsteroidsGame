//your variable declarations here
Spaceship bob;

public void setup() 
{
  size (500,500);
  bob = new Spaceship();
}

public void draw() 
{
  background(255);
  bob.show();
  bob.move();
  System.out.println(bob.getPointDirection());
}//end of draw

public void keyPressed()
{
  if (key == 'q' || key == 'Q')
    bob.rotate(20);
  if (key == 'e' || key == 'E')
    bob.rotate(-20);
  if (key == 'd' || key == 'd')
    bob.accelerate(.5);
  if (key == 'r' || key == 'R')
    {
      bob.setX( (int)(Math.random()*501) );
      bob.setY( (int)(Math.random()*501) );
      bob.setPointDirection( (int) (Math.random()*361) );
    }
  if (key == 's' || key == 'S')
     bob.stop();
  //if (key == 'w' || key == 'W')
     
}
