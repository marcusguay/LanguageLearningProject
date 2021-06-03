public class keyRec {
  private String text="";

  public keyRec() {

     
      }
    
  
  public void rec(){
    
    
   
    this.text=this.text+key;

    if (key==BACKSPACE) {
      if (this.text.length() > 1) {
        this.text=this.text.substring(0, this.text.length()-2);
      }

   
    }
  }
  
  public String sendT(){
    return this.text;
    
  }
  
  
  public void clear(){
    this.text="";
    
  
}
}
