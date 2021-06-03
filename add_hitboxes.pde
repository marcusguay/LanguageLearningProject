public class add_hitboxes {
  private ArrayList<texthitbox> hitboxlist;
  private int start, end;
  private int cx1,cx2,cy1,cy2;
  private int y1, y2;
  public add_hitboxes() {

    hitboxlist=new ArrayList<texthitbox>();
  


}


  public void addT(texthitbox y) {


    this.hitboxlist.add(y);
  }

  public void get() {

    for (int i=0; i < this.hitboxlist.size(); i++) {

      if (i==0) {
        start=this.hitboxlist.get(i).getx1();
        this.y2=this.hitboxlist.get(i).gety2();
        this.y1=this.hitboxlist.get(i).gety1();
      }

      if (i==this.hitboxlist.size()-1) {
        end=this.hitboxlist.get(i).getx2();
      }
    }
  }


 public texthitbox createTHB(){
   
   this.get();
   
   texthitbox g= new texthitbox(this.start,this.y1,this.end,this.y2);
   
   this.removeAll();
   
   return g;
 }

        
        
        
        
      public void removeAll() {
for(int i=0; i < this.hitboxlist.size(); i++){
  this.hitboxlist.remove(i);
  
  
}
      
  
      }


  public void show() {
    for (texthitbox m : this.hitboxlist) {
      m.show();
    }
  }
  
  public void showBox(){
     rectMode(CORNERS);
    
    fill(255);
   rect(this.cx1,this.cy1,this.cx2,this.cy2); 
    
    
  }


  public int getStart() {



    return this.start;
  }

  public int getEnd() {



    return this.end;
  }

  public int y1() {



    return this.y1;
  }


  public int y2() {



    return this.y2;
  }
  
  
  
  public ArrayList<String> nice(){
    ArrayList<String> lol= new ArrayList<String>();
    
    
    
    
    return  lol;
    
    
  }
}
