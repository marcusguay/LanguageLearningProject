public class cardtype2 extends card{
  private GTextField g;
  private String Answer, Text1,Text2;
  private boundsSetter BST;
  private Text part1;
  private GButton CButton;
  private boolean isShowing;
  private boolean checkAnswer;
  private int side;
  private String Side2;
  private ArrayList<Text> TextList;
  private Text part2;
    private Text middle;
    //textfield5 = new GTextField(this, 122, 254, 341, 65, G4P.SCROLLBARS_NONE);
  //textfield5.setOpaque(true);
 // textfield5.addEventHandler(this, "textfield5_change1");
  //this.CBox =new GCheckbox(pa, 571, this.YPosition, 120, 20);
    //this.CBox.setText(this.CardPackname);
    //this.CBox.setVisible(false);
  // this.CBox.addEventHandler(this, "hi");
  public cardtype2(int type,String answer,String n, String m,String log){
    super(type);
    this.Text1=n;
    this.Text2=m;
    this.Side2=log;
//this.part1=n;
// this.part2=m;
this.Answer=answer;
this.BST=new boundsSetter(187, 100, 602, 333);
this.TextList=new ArrayList<Text>();
String str=n+" "+answer + " "+m+" ";
println(str);
String lol="";
this.isShowing=false;
for(int i=0; i < str.length(); i++){
  
  if(str.substring(i,i+1) != " "){
  lol=lol+str.substring(i,i+1);
   
  }
  if(str.substring(i,i+1).equals(" ")){
   
   Text t=new Text(lol,0,0);
   this.TextList.add(t);
    lol="";
    
  }
    
    
  
  
  
}



for(Text t: this.TextList){
 this.BST.addTHB(t.getTHB());
 }

for(Text t: this.TextList){
t.newPos();
 }

 
 for(Text t: this.TextList){
  // println(t.getT(),answer);
   if(t.getT().length() >= answer.length())
if(t.getT().substring(0,answer.length()).equals(answer)){
  t.isAns();
middle=t;

}
 }

this.g=new GTextField(pa,(this.middle.getTHB().getx1()),this.middle.getTHB().gety1(),this.middle.getTHB().getSizeX(),this.middle.getTHB().getSizeY(),G4P.SCROLLBARS_NONE);
this.g.setVisible(true);
this.CButton = new GButton(pa, 554, 286, 80, 30);
 this.CButton.setText("Check Answer");
this.CButton.addEventHandler(this, "hello");
this.checkAnswer=false;
this.side=1;
}
  
  
    public void hello(GButton cbutton, GEvent event) {
 
     
String n=this.g.getText();

if(n.toLowerCase().equals(this.Answer.toLowerCase())){

this.checkAnswer=true;
this.g.setVisible(false);


    }
    }
  
  
  
public String getAll(){
  String lol=""+2+"|"+this.Answer+"|"+this.Text1+"|"+this.Text2+"|"+this.Side2 +"|";
  
  
  //public cardtype2(int type,String answer,String n, String m)

    

 
    
  
  
  
  
  
  
 return lol; 
}

   public void CycleCards() {

    if(side==1){
    side=2 ;
  
} else {
      
     side=1; 
    }


   

    
  }
  public void showCard(){
   //super.showCard(); 
    this.isShowing=true;
   fill(255);
   if(side==1){
    rect(149, 75, 648, 373);
//this.BST.show();
 for(Text t: this.TextList){
t.showTHB(); }
  this.CButton.setVisible(true);
 }
 
 if(side==2){
   this.g.setVisible(false);
   this.CButton.setVisible(false);
   fill(255);
   rect(149, 75, 648, 373);
   fill(0);
  text(Side2,159,100); 
   
 }
 

if(this.checkAnswer==false && side==1){
  this.g.setVisible(true);
}

if(this.checkAnswer==true){
  this.g.setVisible(false);
}
  text(this.side+"/2",606,349); 
 }
  
  
public void hideCards(){
    this.g.setVisible(false);
 this.CButton.setVisible(false);

}  


  
  
}
