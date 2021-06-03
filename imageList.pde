public class ImageList{
  
  private ArrayList<image> imagelist;
  private ArrayList<image> selected;
  
 public ImageList(){
   this.imagelist= new ArrayList<image>();
     this.selected= new ArrayList<image>();
   
 }
  
  public void add(image i){
    
   imagelist.add(i); 
    
  }
  
  
  
   public boolean CheckAll(image s) {

    for (int i=0; i< this.imagelist.size(); i++) {
      if (this.imagelist.get(i)!= s)
        if (this.imagelist.get(i).isSelected()==true)
          return true;
    }
    
    
    return false;
   }
  
  
  public int getSize() {
    int c=0;
    for (int i=0; i< this.imagelist.size(); i++) {
      c=i;
    }
    
    return c;
  }
  
  public void show(){
    
       
     
      
      
    
    
  }
  
   public void hideGCBox(){
  for(image p: this.imagelist){
    
   p.hideGCBox(); 
    
    
  }
    
    
    
  }

  public void showGCBox() {

    for (int i=0; i< this.imagelist.size(); i++) {
      this.imagelist.get(i).showGCBox();
    }
  }
  public void addToSelected(image s){
   selected.add(s); 
    }
  
    public void removeToSelected(image s){
   selected.remove(s); 
    }
  
}
