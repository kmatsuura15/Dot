#include <MeggyJrSimple.h>    // Required code, line 1 of 2.
int xcoord = 0;    // Tracks the dot's x-coordinates.
int ycoord = 0;    // Tracks the dot's y-coordinates.
int xwall = 1;
int ywall = 1;

void setup()                    // run once, when the sketch starts
{
  MeggyJrSimpleSetup();  // Required code, line 2 of 2.
}

void loop()                     // run over and over again
{
  DrawPx(xcoord,ycoord,Blue);
  DrawPx(xwall,ywall,Red);
  CheckButtonsDown();
    if (Button_Up)    // Changes the Dot's Coordinates according to which directional button was pressed.
    {  
      if (ycoord < 7)    // Sets a maximum y boundary to keep the pixel on screen.
      {
      ClearSlate();    // Clears the Slate
      ycoord++;
      DrawPx(xcoord,ycoord,Blue);    // Redraws the pixel at its new coordinates
      }
        if (xcoord == xwall && ycoord == ywall){
        ClearSlate();
        ycoord--;
        DrawPx(xcoord,ycoord,Blue);
        }  
    }
   
  else    // Doesn't move the pixel up if it is on the maximum y boundary.
  {  
    ClearSlate();
    DrawPx(xcoord,ycoord,Blue);
  }
  
  if (Button_Down)    
  { 
    if (ycoord > 0)    // Sets a manimum y boundary to keep the pixel on screen.
      {
      ClearSlate();
      ycoord--;
      DrawPx(xcoord,ycoord,Blue);
      }
      
      if (xcoord == xwall && ycoord == ywall){
          ClearSlate();
          ycoord++;
          DrawPx(xcoord,ycoord,Blue);
          }  
  }  
  else    // Doesn't move the pixel up if it is on the minimum y boundary.
  {
    ClearSlate();
    DrawPx(xcoord,ycoord,Blue);
  }
  
   
  if (Button_Right)      
  {
    if (xcoord < 7)    // Sets a maximum x boundary to keep the pixel on screen.
    {  
      ClearSlate();
      xcoord++;
      DrawPx(xcoord,ycoord,Blue);
    }
      if (xcoord == xwall && ycoord == ywall){
        ClearSlate();
        xcoord--;
        DrawPx(xcoord,ycoord,Blue);
      }
  }  
  
 
  else    // Doesn't move the pixel up if it is on the maximum x boundary.
  {
    ClearSlate();
    DrawPx(xcoord,ycoord,Blue);
  }

  if (Button_Left)       // Sets a minimum y boundary to keep the pixel on screen.
  {
    if (xcoord > 0)  
    {
      ClearSlate();
      xcoord--;
      DrawPx(xcoord,ycoord,Blue);
    }
      if (xcoord == xwall && ycoord == ywall){
        ClearSlate();
        xcoord++;
        DrawPx(xcoord,ycoord,Blue);
      }
  }
  
  else    // Doesn't move the pixel up if it is on the minimum x boundary.
  {
    ClearSlate();
    DrawPx(xcoord,ycoord,Blue);
  }
  
}

