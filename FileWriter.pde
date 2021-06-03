public class CardPackFileWriter {
private PrintWriter output;
private String Everything;
private ArrayList Cards;
  CardPackFileWriter(String n, CardStorage g) {
 this.Cards =  g.getCardStorageAssets();
 output = createWriter("C:\\Users\\Awake\\Documents\\Processing\\sketch_210307a\\CardPack\\"+n+".txt");
   
    
    
    
    for(int i=0; i < this.Cards.size(); i++){
 
      

 output.println(Cards.get(i));

  

    }
 output.flush(); // Write the remaining data
 output.close(); // Finish the file
  
  }
  
  
  
public void reader() {

  
  
  
  
  
}




}
