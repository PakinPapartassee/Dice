void setup()
  {
    size(1000,1000);
    noLoop();
    textSize(30);
   
  }
  void draw()
  {
    background(176, 232, 194);
    count = 0;
    for (int j = 0;j<700;j+=120)
    {
     for (int i = 0; i<700;i+=120)
      {
        Die bob = new Die(150+i,90+j);
        bob.roll();
        bob.show();
      } 
    }
     fill(0);
    text("Total Number: "+count, 350,840);
    }
  void mousePressed()
  {
    redraw();
  }
  int count = 0;
  class Die //models one single dice cube
  {
      int numDots, myX,myY;
      Die(int x, int y) //constructor
      {
        //numDots = (int)(Math.random()*6+1);
        myX = x;
        myY=y;
      }
      void roll()
      {
        numDots = (int)(Math.random()*6+1);
        count+=numDots;
      }
      void show()
      {
         stroke(0);
         fill(255);
         rect(myX,myY,100,100,8);
         if (numDots == 1)
         {
           fill(#B8F0C2);
           ellipse(myX+50,myY+50,20,20);
         }else if (numDots ==2)
         {
           fill(#B8C4F0);
           ellipse(myX+30,myY+30,15,15);
           ellipse(myX+70,myY+70,15,15);
         }else if (numDots == 3)
         {
           fill(#FFDBF3);
           ellipse(myX+30,myY+30,15,15);
           ellipse(myX+50,myY+50,15,15);
           ellipse(myX+70,myY+70,15,15);
         }else if (numDots==4)
         {
           fill(#F0B8B9);
           ellipse(myX+30,myY+30,15,15);
           ellipse(myX+70,myY+30,15,15);
           ellipse(myX+30,myY+70,15,15);
           ellipse(myX+70,myY+70,15,15);
         }else if (numDots==5)
         {
           fill(#B8E0F0);
           ellipse(myX+30,myY+30,15,15);
           ellipse(myX+70,myY+30,15,15);
           ellipse(myX+30,myY+70,15,15);
           ellipse(myX+70,myY+70,15,15);
           ellipse(myX+50,myY+50,15,15);
         }else if (numDots==6)
         {
           fill(#F0E6B8);
           ellipse(myX+30,myY+30,15,15);
           ellipse(myX+70,myY+30,15,15);
           ellipse(myX+30,myY+70,15,15);
           ellipse(myX+70,myY+70,15,15);
           ellipse(myX+30,myY+50,15,15);
           ellipse(myX+70,myY+50,15,15);
         }
      }
  }
