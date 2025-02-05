public void setup(){
    background(0);
    size(900,900);
}
public void draw(){
  sierpinski(mouseX,mouseY,(int)(Math.random()*200));
}

public void sierpinski(int x, int y, int len){
  if(len<20)
  {
    fill((int)(Math.random()*200));
    triangle(x,y,(x+(len/2)),(y+len), (x+len),y);
  }
  else
  {
    sierpinski(x,y,len/2);
    sierpinski(x+len/2, y, len/2);
    sierpinski(x+len/4,y+len/2,len/2);
  }
}
