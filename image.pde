public class image {
  private int x1, x2, y1, y2;
  private int YPosition;
  private boolean canMove;
  private GCheckbox CBox;
  private PImage image1;
  private texthitbox THB;
  private String name;
  private int lol1,lol2,lol3,lol4,lol5;
  private boolean isMaker;
  public image(PImage n, String m, int x, int y, int xx, int yy,boolean is) {
    this.image1=n;
 println("Warning");
    this.name=m;
    this.x1=x;
    this.y1=y;
    this.x2=xx;
    this.y2=yy;
    this.isMaker=is;
    
    if(this.isMaker==true){
    this.THB=new texthitbox(x1, y1, x2, y2);
   this.lol1=0;
   this.lol2=0;
   this.lol3=0;
   this.lol4=0;
   this.lol5=0;
    this.YPosition=YCardStoragePosition2;
     YCardStoragePosition2= YCardStoragePosition2+25;
    this.CBox =new GCheckbox(pa, 684, this.YPosition, 120, 50);
    this.CBox.setText(this.name);
    Allimages.add(this);
    this.CBox.setVisible(false);
    this.CBox.addEventHandler(this, "hi");
  }
  }




   public String getAll(){
     String i="Image"+"|"+this.image1+"|"+this.name+"|"+this.x1+"|"+this.y1+"|"+this.x2+"|"+this.y2+"|";
     
     
     
     
     
     
     
     return i;
   }


  public texthitbox getTHB() {

    return this.THB;
  }


  public void newPos() {

    this.x1=this.THB.getx1();
    this.x2=this.THB.getx2();
    this.y1=this.THB.gety1();
    this.y2=this.THB.gety2();
  }


  public void show() {
    if(window==8){
 this.isHovering();
    }
    image(image1, this.x1, this.y1, x2, y2);
    if(window==8){
    rect(x1-2, y1-2, x1+2, y1+2);
    rect(x2-2, y1-2, x2+2, y1+2);
    rect(x1-2, y2-2, x1+2, y2+2);
    rect(x2-2, y2-2, x2+2, y2+2); 
    rect(((x2+x1)/2)-2, ((y2+y1)/2)-2, ((x2+x1)/2)+2, ((y2+y1)/2+2));
    }
    //println("works");
  }


  public void showGCBox() {

    this.CBox.setVisible(true);
  }

  public void hideGCBox() {

    this.CBox.setVisible(false);
  }

  public void hi(GCheckbox Cbox, GEvent event) { 

    if (Allimages.getSize()>0 && this.CBox.isSelected()==false && Allimages.CheckAll(this) == true) {
    } else {
      this.select();
      if(CardOG.getSide()==1){
      CardOG.addFrontI(this);
      }    
   if(CardOG.getSide()==2){
      CardOG.addBackI(this);
      }  
}
  }

  public void select() {
    if (window !=2) {
      this.CBox.setSelected(true);
      Allimages.addToSelected(this);
    } else {
      All.Deselectall();
      this.CBox.setSelected(true);
    }
  }

  public boolean isSelected() {

    return this.CBox.isSelected();
  }

  public void isHovering() {
   
    int x=2;
    
    timer--;
    
    if(timer<0){
      sizeX=(this.x2-this.x1)/2;
      sizeY=(this.y2-this.y1)/2;
   lol1=0;
 lol2=0;
 lol3=0;
 lol4=0;
 lol5=0;
    }
    
    
    
    
    //x1-2, y1-2, x1+2, y1+2
    if (mouseX >= this.x1-x && mouseX<= this.x1+x && mouseY >= y1-x && mouseY <= this.y1+x || lol1==1) {
    
      
      if (mousePressed) {
        if(x1<x2){
        this.x1=mouseX;
        }
        if(y1<y2){
        this.y1=mouseY; }
       timer=5;
         lol1=1;
      }
    }
    //rect(x2-2, y1-2, x2+2, y1+2);
     int xx=2;
    if (mouseX >= this.x2-xx && mouseX<= this.x2+xx && mouseY >= y1-xx && mouseY <= this.y1+xx || lol2==1) {
     
      if (mousePressed) {
        if(x2>x1){
        this.x2=mouseX; }
        if(y1<y2){
        this.y1=mouseY; }
    lol2=1;
    timer=5;
      }
    }
    
      //rect(x1-2, y2-2, x1+2, y2+2);
       if (mouseX >= this.x1-xx && mouseX<= this.x1+xx && mouseY >= y2-xx && mouseY <= this.y2+xx || lol3==1) {
     
      if (mousePressed) {
         if(x2>x1){
        this.x1=mouseX;
         }
          if(y2>y1){
        this.y2=mouseY;
        
          }
    lol3=1;
    timer=5;
      }
       }
      
      if (mouseX >= this.x2-xx && mouseX<= this.x2+xx && mouseY >= y2-xx && mouseY <= this.y2+xx || lol4==1) {
     
      if (mousePressed) {
        if(x2>x1){
        this.x2=mouseX; }
        if(y2>y1){
        this.y2=mouseY; }
    lol4=1;
    timer=5;
      
      }
      }
      
      
      //rect(((x2+x1)/2)-2, ((y2+y1)/2)-2, ((x2+x1)/2)+2, ((y2+y1)/2+2))
         if (mouseX >= ((x2+x1)/2)-2&& mouseX<= ((x2+x1)/2)+2 && mouseY >= ((y2+y1)/2)-2 && mouseY <= ((y2+y1)/2+2)|| lol5==1) {
     
      if (mousePressed) {
        
        
        this.x1=mouseX-sizeX;
        this.x2=mouseX+sizeX;
       this.y1=mouseY-sizeY; 
      this.y2=mouseY+sizeY; 
    
    
    
    
    lol5=1;
    timer=5;
      
      }
      }
      
      
      
      
      
      
      
    }
    
    
    
    
    
    
    
  }
