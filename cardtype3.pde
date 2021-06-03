public class cardtype3 extends card {
  private ArrayList<Text> front;
  private ArrayList<Text> back;
  private ArrayList<image> IFront;
    private ArrayList<image> IBack;
  private boundsSetter BST;
  private int side;
  private int CardType=3;
  private int size;

  public cardtype3() {
    super(3);
    size=0;
    side=1;
 this.front=new ArrayList<Text>();
 this.back=new ArrayList<Text>();
 this.IFront=new ArrayList<image>();
  this.IBack=new ArrayList<image>();
    println("test"+this.side);
  }

public int getSide(){

return this.side;

}
  public void clearAll(){
    size=0;
      for(Text i: front){
      front.remove(i); 

    }
    
    for(image i : IFront){
     IFront.remove(i); 
      
    }
      
      
     for(Text i : back){
      back.remove(i); 
       
     }
    
    
     for(image i : IBack){
     IBack.remove(i);
      
    }
      
      
      
    }
  public String getAll() {
    String lol=""+CardType+"|";
    lol=lol+size+"|";
    lol=lol+"Front"+"|";
    for (int i=0; i < front.size(); i++) {
     lol=lol+ front.get(i).getAll();

    }
    
    for(image i : IFront){
   lol=lol+   i.getAll();
      
    }
      
      lol=lol+"Back"+"|";
        for (int i=0; i < back.size(); i++) {
      lol=lol+   back.get(i).getAll();
        }
    
     for(image i : IBack){
   lol=lol+   i.getAll();
      
    }


  




    if (this.CardType==2) {
    }





    return lol;
  }
  
  
  public void showCard(){
      fill(255);
    rect(149, 75, 648, 373);
 
    if (side==1) {
      this.showFront();
    }

    if (side==2) {
      this.showBack();
    }
    fill(0);
    text(side+"/2",605,355);
    fill(255);
    

    
     
    
    
  }
    public void showFront() {
    for (int i=0; i < front.size(); i++) {
      front.get(i).show();
      
    }
    
    for(image i : IFront){
     i.show(); 
      
    }
    
    
  }


  public void showBack() {

    for (int i=0; i < back.size(); i++) {
      back.get(i).show();
     
    }
    
    
     for(image i : IBack){
     i.show(); 
      
    }
    
  }
  
  
  public void addFrontI(image i){
      size++;
    this.IFront.add(i);
    
  }
  
    public void addBackI(image i){
      size++;
    this.IBack.add(i);
    
  }
  
   public void addBackT(Text i){
      size++;
    this.back.add(i);
    }
    
     public void addFrontT(Text i){
      size++;
    this.front.add(i);
    }
    
    
      public void CycleCards() {

    if(side==1){
    side=2 ;
  
} else {
      
     side=1; 
    }


   

    
  }
  
    
}
