public class CardStorageList {

  private ArrayList<CardStorage> array;
 private ArrayList<CardStorage> selected;
 private int TotalSelected;
  public CardStorageList() {

    this.array=new ArrayList<CardStorage>();
    this.selected=new ArrayList<CardStorage>();
    this.TotalSelected=1;
  }
  
    public int getSelectedSize() {

      
      
      return this.TotalSelected;
  }
  
  
  public void Add() {
 this.TotalSelected++;
  }

public void Remove() {
    this.TotalSelected--;
  }

  public void add(CardStorage s) {
    this.array.add(s);
  }
  
  public void hideGCBox(){
  for(CardStorage p: this.array){
    
   p.hideGCBox(); 
    
    
  }
    
    
    
  }

  public void showGCBox() {

    for (int i=0; i< this.array.size(); i++) {
      this.array.get(i).showGCBox();
    }
  }


  public int getSize() {
    int c=0;
    for (int i=0; i< this.array.size(); i++) {
      c=i;
    }

    return c;
  }


  public boolean SelectNum() {

    for (int i=0; i< this.array.size(); i++) {
      if (this.array.get(i).isSelected()==true)
        return true;
    }


    return false;
  }


  public boolean CheckAll(CardStorage s) {

    for (int i=0; i< this.array.size(); i++) {
      if (this.array.get(i)!= s)
        if (this.array.get(i).isSelected()==true)
          return true;
    }
    
    
    return false;
  }
 public void Deselectall() {

    for (int i=0; i< this.array.size(); i++) {
     
        array.get(i).deselect();
          
    }


 
  }

public void hideAll(){
  
 
    for (int i=0; i< this.array.size(); i++) {
 this.array.get(i).hideAll(); 
      
      
    }
  
  
}
  public void AddToSelect(card c) {

    for (int i=0; i< this.array.size(); i++) {
      if (this.array.get(i).isSelected()==true) {
        this.array.get(i).addCard(c);
      }
    }
  }



  public ArrayList<CardStorage> getAllCardStorage() {
ArrayList Selected= selected;

//returns the selected ArrayList
  return Selected;
  }
  
  public void addToSelected(CardStorage s){
   selected.add(s); 
    }
  
    public void removeToSelected(CardStorage s){
   selected.remove(s); 
    }
  
  public CardStorage getCardStorage() {


    for (int i=0; i< this.array.size(); i++) {
      if (this.array.get(i).isSelected()==true)

   return this.array.get(i);
      
     
    }


return null;
  }
  //private int Total;
  // private ArrayList<card> Cards;
  // private GCheckbox CBox;
  // private String CardPackname;
  
  
  
  
  
 // public ArrayList<String> getCardStorageAssets() {
  //  ArrayList all = new ArrayList<String>(); 
 //   ;
  //  for (int i=0; i < this.array.size(); i++) {

  //    String str="";

   //   str="lol" + "|" + this.array.get(i).getCardPackname()+"|"+this.array.get(i).getAll();







    //  println(str);
     // all.add(str);
   // }





  //  return all;
  //}
}
