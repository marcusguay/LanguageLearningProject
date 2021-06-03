public class card {
  private String Front;
  private String Back;
  private String name;
  private int CardType;
  private boundsSetter BST;
 private int size;
  private ArrayList<Text> front;
  private ArrayList<Text> back;
  private GButton button;
  private int side;
  public card(int type) {
    front=new ArrayList<Text>();
    back=new ArrayList<Text>();
    this.CardType=type;
    side=1;
    size=0;
  }

public String getAll(){
  String lol=""+CardType+"|";

  if(this.CardType==1){
 
  
  for(int i=0; i < front.size(); i++){
    lol=lol+front.get(i).getT();
    lol=lol+"|" + "325"+"|" +"125"+"|"+"false" +"|";
    
  }
  
  
 for(int i=0; i < back.size(); i++){
    lol=lol+back.get(i).getT();
      lol=lol+ "|" +"325"+ "|" +"225"+ "|"+"false" +"|";
    
  }
  }
  
   if(this.CardType==2){
    

 
    
  }
  
  
  
  
  
 return lol; 
}



  public void addFront(Text t) {
    this.front.add(t);
  
  }

  public void addBack(Text t) {
    this.back.add(t);
  
  }

  public boolean getFront() {
    return this.front.isEmpty();
  }

  public boolean getBack() {
    return this.back.isEmpty();
  }


  public void showFront() {
    for (int i=0; i < front.size(); i++) {
      front.get(i).show();

    }
  }


  public void showBack() {

    for (int i=0; i < front.size(); i++) {
      back.get(i).show();
    }
  }
  


  public void showCard() {
    fill(255);
rect(149, 75, 648, 373);
    if (side==1) {
      this.showFront();
    }

    if (side==2) {
      this.showBack();
    }
    text(side+"/2",606,349);
  }

public void hideCards(){
  
  
  
}
  public void CycleCards() {

    if(side==1){
    side=2 ;
  
} else {
      
     side=1; 
    }


   

    
  }
  
  
  public void FStringSet(String n){
    
   this.Front=n; 
    
    
  }
  
  
  
    public void FBackSet(String n){
    
   this.Back=n; 
    
    
  }
  
  public void CenterAll(){
    
    
    
    
    
    
    
    
  }
  
  
  public void addFrontI(image i){
   
    
  }
  
    public void addBackI(image i){

    
  }
  
   public void addBackT(Text i){
  
    }
    
     public void addFrontT(Text i){
   
    }
    
  
  
  
  
  
}
