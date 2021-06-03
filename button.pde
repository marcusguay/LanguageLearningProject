public class button {
  private String text;
  private int PosX;
  private int PosY;
  private int SizeX;
  private int SizeY;

  public button(String t, int x, int y, int SX, int SY) {
    this.text=t;
    this.PosX=x;
    this.PosY=y;
    this.SizeX=SX;
    this.SizeY=SY;
  }

  public void show() {



    fill(255);
    rect(this.PosX, this.PosY, this.SizeX, this.SizeY);
    fill(0);
    text(this.text, this.PosX+(this.SizeY/2), this.PosY+(this.SizeY/2));
  }


  public void act() {
    this.isHovering();
    if (isHovering()==true) {
      if (mousePressed==true) {
        
      }
    }
  }


  public boolean isHovering() {
    if (mouseX >= this.PosX && mouseX<= this.PosX+this.SizeX && mouseY >= this.PosY && mouseY <= this.PosY+SizeY) {
      return true;
    } else {
      return false;
    }
  }
}
