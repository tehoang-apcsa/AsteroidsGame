class Star //note that this class does NOT extend Floater
{
  private int myX, myY, mySize;
  public Star ()
  {
    myX = (int)(Math.random()*501);
    myY = (int)(Math.random()*501);
    mySize = (int) (Math.random()*6-1);
  }
  
  public void show()
  {
    fill(255);
    stroke(255,255,0);
    ellipse(myX,myY,mySize,mySize);
  }
}
