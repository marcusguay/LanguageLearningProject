


public class CardStorage {
  private int Total;
  private ArrayList<card> Cards;
  private GCheckbox CBox;
  private String CardPackname;

  private int YPosition;



  public CardStorage(String s) {
    this.Cards=new ArrayList<card>();
    this.CardPackname=s;  
    All.add(this);
    
    this.YPosition=YCardStoragePosition;
    YCardStoragePosition= YCardStoragePosition+25;
    this.CBox =new GCheckbox(pa, 571, this.YPosition, 120, 20);
    this.CBox.setText(this.CardPackname);
    this.CBox.setVisible(false);
   this.CBox.addEventHandler(this, "hi");
  }


  public void addCard(card c) {

    this.Cards.add(c); 
    this.Total++;
  }
  
  public void hideAll(){
  for(int i=0; i < this.Cards.size(); i++){
     Cards.get(i).hideCards();
   }
  }
    
    
    
    public void hideAllbutSelected(){
  for(int i=0; i < this.Cards.size(); i++){
     Cards.get(i).hideCards();
   }
    }
    
    
    
    
  

  public ArrayList getArray() {

    return this.Cards;
  }

  public int getTotal() {

    return this.Total;
  }



  public void showCard(int j) {

    this.Cards.get(j).showCard();
    for(card c:this.Cards){
      if(c==Cards.get(j)){
        
        
      } else {
       c.hideCards(); 
        
      }
      
      
    }
    text("Card"+(j+1)+"/"+this.getTotal(),350,430);
  }

  public void switchSide(int j) {

    this.Cards.get(j).CycleCards();
  }


  public void showGCBox() {
  
    this.CBox.setVisible(true);
   
 
  }
  
   public void hideGCBox() {
  
    this.CBox.setVisible(false);
   
 
  }
  
  public void SetString(String s){
    
  this.CardPackname=s;  
    
  }
  
  
  public void hi(GCheckbox Cbox, GEvent event) { 
  
         if(All.getSize()>0 && this.CBox.isSelected()==false && All.CheckAll(this) == true){
           
           
         } else {
          this.select(); 
           
           
         }
    
  }

public boolean isSelected(){
  
 return this.CBox.isSelected(); 
  
}

public void deselect(){
  
 this.CBox.setSelected(false);
 All.removeToSelected(this);
}

  public void select(){
  if(window !=2){
 this.CBox.setSelected(true);
 All.addToSelected(this);
  } else {
    All.Deselectall();
    this.CBox.setSelected(true);
    
  }
}



  //private int Total;
 // private ArrayList<card> Cards;
 // private GCheckbox CBox;
 // private String CardPackname;
  public String getAll(){
   String s="";
   
   for(int i=0; i < this.Cards.size(); i++){
     s=s+Cards.get(i).getAll();
   }
    
    return s;
  }
 public ArrayList<card> getCards(){
   
   return this.Cards;
 }

 public String getCardPackname(){
   
   return this.CardPackname;
 }
 
 public ArrayList<String> getCardStorageAssets() {
    ArrayList all = new ArrayList<String>(); 
    String str="";
   

   

      str= this.CardPackname+"|";
      all.add(str);
    

for(int i=0; i<this.Cards.size(); i++){
  String idc="";
  
  idc=this.Cards.get(i).getAll();
  all.add(idc);
  
  
}



    return all;
  }

}
