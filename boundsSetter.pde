public class boundsSetter{
private int boundsx1, boundsy1, boundsx2, boundsy2;  
private int availableX1 ,availableY1, availableX2, availableY2;
private int zero;



public boundsSetter(int x1,int y1,int x2, int y2){
  
  this.zero=x1;
  this.boundsx1=x1;
  this.boundsy1=y1;
  this.boundsx2=x2;
  this.boundsy2=y2;
  this.availableX1=x1;
  this.availableY1=y1;
    this.availableX2=x1;
  this.availableY2=y1;
  }
  
  
  
  public void show(){
    
   fill(255);
   rect(this.boundsx1,this.boundsy1 ,this.boundsx2 ,this.boundsy2 );
   // this.printAvailable();
    
    
    
    
    
  }
  
  public void printAvailable(){
    
    println("Box has this much not available" + " x1 " +this.availableX1+ " y1 " +this.availableY1 );
     println("Box has this much not available" + " x2 " +this.availableX2+ " y2 " +this.availableY2 );
    
    
  }
  
  
  public void addTHB(texthitbox t){
    
   
   if(t.getSizeX() + this.availableX1 >  this.boundsx2){
     this.availableX1=this.zero;
     this.availableY1=this.availableY2;
   }
     
   
     
    
     
     
    
 //  println(r.getSizeX(),r.getSizeY());
   t.setNew(availableX1 ,availableY1, availableX1+t.getSizeX(), availableY1+t.getSizeY());
  
   
   
   this.availableX1=  this.availableX1+t.getSizeX();
   this.availableY2=availableY1+t.getSizeY();
   
  // println(availableY1, this.availableY1);
  
      
    
  }
  
  public void addToBounds(texthitbox c){
    
    if(this.availableY1+c.getSizeY() <= this.boundsy2){
      if(c.getSizeX() <= this.boundsx2){
     this.addTHB(c); 
      println(availableY1, this.availableY1+c.getSizeY() );
      }
    }
    
    
    
  }
    
    
    
  
  
  
  

  
  
  
  
  
  
  
  
}
