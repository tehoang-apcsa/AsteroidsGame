class Bullet extends Floater 
  {
    public Bullet(Spaceship theShip)
    {
      myCenterX = theShip.getX();
      myCenterY = theShip.getY();
      myXspeed = theShip.getXspeed();
      myYspeed = theShip.getYspeed();
      myPointDirection = theShip.getPointDirection();
      myColor = color(#1ba2aa);
      accelerate(6);
    }//end of constructor
    
    public void showe()
    {
      fill(myColor);
      stroke(myColor);
      ellipse((float)myCenterX,(float)myCenterY,10,10);
    }
    
    public void show()
    {
      fill(myColor);
      stroke(myColor);
      ellipse((float)myCenterX,(float)myCenterY,10,10);
    }
    
    public double getX(){return myCenterX;}
    public double getY(){return myCenterY;}
  }//end of bullet class
