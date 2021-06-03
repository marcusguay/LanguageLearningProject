
public class Text {
  private String t;
  private int PosX;
  private int PosY;
  private boolean canMove;
  private boolean isAnswer;
  private texthitbox THB;
  private ArrayList<texthitbox > THBList;
  public Text(String t, int x, int y) {
    this.t=t; 
    this.PosX=x;
    this.PosY=y;
    this.canMove=false;
    this.THB=new texthitbox(t);
    this.PosX=THB.getx1()+TextSize/2;
    this.PosY=THB.gety1()+TextSize;
    this.isAnswer=false;
  }








  public Text(String t, int x, int y, boolean canMove) {
    this.t=t; 
    this.PosX=x;
    this.PosY=y;
    this.canMove=canMove;
  }
  
  public String getAll(){
 String t="Text"+"|"+this.t+"|"+this.PosX+"|" +this.PosY+"|"+this.canMove+"|";
 
 
 
 
 
 return t;
  
  }

  public int getX() {
    return this.PosX;
  }

  public texthitbox getTHB() {

    return this.THB;
  }

  public void newPos() {

    this.PosX=(int)(THB.getx1()+TextSize/2);
    this.PosY=THB.gety1()+TextSize;
  }

  public int getY() {
    return this.PosY;
  }
  public String getT() {
    return this.t;
  }

  public void show() {
    fill(0);
    textSize(TextSize);
    
    textLeading(5);
    text(this.t, PosX, PosY);

    if (this.canMove==true && this.isHovering()==true &&isPressed) {
      if (mouseX>= 150  && mouseX<= 650 ) {  

        this.PosX=mouseX;
      }
      if (mouseY >=  100 && mouseY <=371) {
        this.PosY=mouseY;
      }
    }
  }
  public void showTHB() {

    fill(0);
   
    textSize(TextSize); 
     this.THB.show();
  text(this.t, PosX, PosY);
 
    //textLeading(5);
    ;
  }
  
  public void isAns(){
    
    this.isAnswer=true;
    
  }

  public boolean isHovering() {
    if (mouseX >= this.PosX-50 && mouseX<= this.PosX+50 && mouseY >= this.PosY-50 && mouseY <= this.PosY+50) {
      return true;
    } else {

      return false;
    }
  }
}
