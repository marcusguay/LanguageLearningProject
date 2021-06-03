/* =========================================================
 * ====                   WARNING                        ===
 * =========================================================
 * The code in this tab has been generated from the GUI form
 * designer and care should be taken when editing this file.
 * Only add/edit code inside the event handlers i.e. only
 * use lines between the matching comment tags. e.g.

 void myBtnEvents(GButton button) { //_CODE_:button1:12356:
     // It is safe to enter your event code here  
 } //_CODE_:button1:12356:
 
 * Do not rename this tab!
 * =========================================================
 */

public void button1_click1(GButton source, GEvent event) { //_CODE_:button1:822108:

  window=6;



} //_CODE_:button1:822108:

public void textfield1_change1(GTextField source, GEvent event) { //_CODE_:textfield1:846005:

} //_CODE_:textfield1:846005:

public void textfield2_change1(GTextField source, GEvent event) { //_CODE_:textfield2:545251:

} //_CODE_:textfield2:545251:

public void button2_click1(GButton source, GEvent event) { //_CODE_:viewCards:777159:
  if (window!=2) {
    window=2;
  }
  
} //_CODE_:viewCards:777159:

public void button3_click1(GButton source, GEvent event) { //_CODE_:CardCreator:201335:
 ArrayList d;



tFront= new Text(textfield1.getText(),333,139,true);
 tBack= new Text(textfield2.getText(),333,225,true);
 c= new card(1);
  println("Tfront"+textfield1.getText());
 println("tBack"+textfield2.getText());
 c.addFront(tFront);
 c.addBack(tBack);
 

for(int i=0; i < All.getAllCardStorage().size(); i++){
All.getAllCardStorage().get(i).addCard(c);

}
 //cards.addCard(c);

 
} //_CODE_:CardCreator:201335:

public void button2_click2(GButton source, GEvent event) { //_CODE_:button2:535023:
   All.getCardStorage().switchSide(CardCounter);
} //_CODE_:button2:535023:

public void button3_click2(GButton source, GEvent event) { //_CODE_:button3:813560:
if(CardCounter >0 && CardCounter <=  All.getCardStorage().getTotal());
CardCounter++;
} //_CODE_:button3:813560:

public void button4_click1(GButton source, GEvent event) { //_CODE_:button4:904502:
 if(CardCounter >0 && CardCounter <=  All.getCardStorage().getTotal());
 CardCounter--;
} //_CODE_:button4:904502:

public void button5_click1(GButton source, GEvent event) { //_CODE_:button5:402011:
  window=3;
} //_CODE_:button5:402011:

public void button7_click1(GButton source, GEvent event) { //_CODE_:button7:466897:
  window=4;
} //_CODE_:button7:466897:

public void textfield3_change1(GTextField source, GEvent event) { //_CODE_:CreateCardPack:628114:
  println("CreateCardPack - GTextField >> GEvent." + event + " @ " + millis());
} //_CODE_:CreateCardPack:628114:

public void button8_click1(GButton source, GEvent event) { //_CODE_:CreateCardPackButton:516993:
 
 CardStorage j=new CardStorage(CreateCardPack.getText());

} //_CODE_:CreateCardPackButton:516993:

public void button6_click1(GButton source, GEvent event) { //_CODE_:button6:396099:
 
 CardCounter=0;
 window=5;

 
} //_CODE_:button6:396099:

public void button8_click2(GButton source, GEvent event) { //_CODE_:button8:582751:



for(int i=0; i<  All.getAllCardStorage().size(); i++){
  
    //CardPackFileWriter(String n, ArrayList<CardStorage> l) {
test=new CardPackFileWriter(All.getAllCardStorage().get(i).getCardPackname(),All.getAllCardStorage().get(i));

  
  
  
}


//test= new CardPackFileWriter(All.getCardStorage().getCardPackname(),All.getAllCardStorage());
  
  
  
  
} //_CODE_:button8:582751:

public void button9_click1(GButton source, GEvent event) { //_CODE_:button9:581991:
  window=1;
} //_CODE_:button9:581991:

public void button10_click1(GButton source, GEvent event) { //_CODE_:button10:998751:
  window=7;
} //_CODE_:button10:998751:

public void textfield3_change2(GTextField source, GEvent event) { //_CODE_:textfield3:796097:

} //_CODE_:textfield3:796097:

public void textfield4_change1(GTextField source, GEvent event) { //_CODE_:textfield4:748855:

} //_CODE_:textfield4:748855:

public void textfield5_change1(GTextField source, GEvent event) { //_CODE_:textfield5:415581:
  
} //_CODE_:textfield5:415581:

public void button11_click1(GButton source, GEvent event) { //_CODE_:button11:639246:

  //public Text(String t, int x, int y) {
   // public cardtype2(int type,String answer,Text n, Text m){
 String d=textfield4.getText();
  String t=textfield3.getText();
String  n=textfield5.getText();
String j=textfield7.getText();
println(t,n);


  //t.n.j
card lol2= new cardtype2(2,d,t,n,j);

 println(textfield3.getText(),textfield5.getText());


for(int i=0; i < All.getAllCardStorage().size(); i++){
All.getAllCardStorage().get(i).addCard(lol2);

}
 
 
} //_CODE_:button11:639246:

public void button12_click1(GButton source, GEvent event) { //_CODE_:button12:628247:
window=8;
} //_CODE_:button12:628247:

public void button13_click1(GButton source, GEvent event) { //_CODE_:button13:442109:
  CardOG.CycleCards();
  
  println(CardOG.getSide());
} //_CODE_:button13:442109:

public void button14_click1(GButton source, GEvent event) { //_CODE_:button14:401320:

 

for(int i=0; i < All.getAllCardStorage().size(); i++){
All.getAllCardStorage().get(i).addCard(CardOG);

}



} //_CODE_:button14:401320:

public void button15_click1(GButton source, GEvent event) { //_CODE_:button15:975894:
  Text t= new Text(textfield6.getText(),374,179,true);
  
  if(CardOG.getSide()==1){
  
 CardOG.addFrontT(t);
  }
  
  
   if(CardOG.getSide()==2){
  
 CardOG.addBackT(t);
  }
  
} //_CODE_:button15:975894:

public void textfield6_change1(GTextField source, GEvent event) { //_CODE_:textfield6:239853:
  println("textfield6 - GTextField >> GEvent." + event + " @ " + millis());
} //_CODE_:textfield6:239853:

public void button16_click1(GButton source, GEvent event) { //_CODE_:button16:651697:
  println("button16 - GButton >> GEvent." + event + " @ " + millis());
} //_CODE_:button16:651697:

public void button17_click1(GButton source, GEvent event) { //_CODE_:button17:521040:
 CardOG.clearAll();
} //_CODE_:button17:521040:

public void textfield7_change1(GTextField source, GEvent event) { //_CODE_:textfield7:572998:
  println("textfield7 - GTextField >> GEvent." + event + " @ " + millis());
} //_CODE_:textfield7:572998:



// Create all the GUI controls. 
// autogenerated do not edit
public void createGUI(){
  G4P.messagesEnabled(false);
  G4P.setGlobalColorScheme(GCScheme.BLUE_SCHEME);
  G4P.setMouseOverEnabled(false);
  surface.setTitle("Sketch Window");
  button1 = new GButton(this, 10, 30, 80, 30);
  button1.setText("Create New Card");
  button1.addEventHandler(this, "button1_click1");
  textfield1 = new GTextField(this, 118, 68, 270, 50, G4P.SCROLLBARS_NONE);
  textfield1.setOpaque(true);
  textfield1.addEventHandler(this, "textfield1_change1");
  textfield2 = new GTextField(this, 122, 148, 270, 50, G4P.SCROLLBARS_NONE);
  textfield2.setOpaque(true);
  textfield2.addEventHandler(this, "textfield2_change1");
  viewCards = new GButton(this, 8, 80, 80, 30);
  viewCards.setText("view Cards");
  viewCards.addEventHandler(this, "button2_click1");
  CardCreator = new GButton(this, 379, 230, 80, 30);
  CardCreator.setText("Create");
  CardCreator.addEventHandler(this, "button3_click1");
  button2 = new GButton(this, 224, 400, 80, 30);
  button2.setText("Flip");
  button2.addEventHandler(this, "button2_click2");
  button3 = new GButton(this, 576, 400, 80, 30);
  button3.setText("Next Card");
  button3.addEventHandler(this, "button3_click2");
  button4 = new GButton(this, 464, 400, 80, 30);
  button4.setText("Previous Card");
  button4.addEventHandler(this, "button4_click1");
  button5 = new GButton(this, 8, 364, 80, 30);
  button5.setText("Save Card Pack");
  button5.addEventHandler(this, "button5_click1");
  button7 = new GButton(this, 7, 304, 80, 30);
  button7.setText("Create Card Pack");
  button7.addEventHandler(this, "button7_click1");
  CreateCardPack = new GTextField(this, 236, 86, 270, 51, G4P.SCROLLBARS_NONE);
  CreateCardPack.setOpaque(true);
  CreateCardPack.addEventHandler(this, "textfield3_change1");
  CreateCardPackButton = new GButton(this, 409, 164, 80, 30);
  CreateCardPackButton.setText("Create");
  CreateCardPackButton.addEventHandler(this, "button8_click1");
  button6 = new GButton(this, 319, 402, 80, 30);
  button6.setText("View");
  button6.addEventHandler(this, "button6_click1");
  button8 = new GButton(this, 573, 261, 108, 52);
  button8.setText("Save Card Pack to folder");
  button8.addEventHandler(this, "button8_click2");
  button9 = new GButton(this, 191, 24, 80, 30);
  button9.setText("Create Normal Card");
  button9.addEventHandler(this, "button9_click1");
  button10 = new GButton(this, 288, 23, 106, 30);
  button10.setText("Create Fill In the Blank Card");
  button10.addEventHandler(this, "button10_click1");
  togGroup3 = new GToggleGroup();
  textfield3 = new GTextField(this, 121, 87, 367, 44, G4P.SCROLLBARS_NONE);
  textfield3.setOpaque(true);
  textfield3.addEventHandler(this, "textfield3_change2");
  textfield4 = new GTextField(this, 123, 185, 356, 33, G4P.SCROLLBARS_NONE);
  textfield4.setOpaque(true);
  textfield4.addEventHandler(this, "textfield4_change1");
  textfield5 = new GTextField(this, 121, 255, 341, 65, G4P.SCROLLBARS_NONE);
  textfield5.setOpaque(true);
  textfield5.addEventHandler(this, "textfield5_change1");
  button11 = new GButton(this, 687, 399, 80, 30);
  button11.setText("Create");
  button11.addEventHandler(this, "button11_click1");
  button12 = new GButton(this, 408, 24, 104, 30);
  button12.setText("Create Custom Card");
  button12.addEventHandler(this, "button12_click1");
  button13 = new GButton(this, 138, 400, 80, 29);
  button13.setText("Flip");
  button13.addEventHandler(this, "button13_click1");
  button14 = new GButton(this, 684, 362, 80, 30);
  button14.setText("Create");
  button14.addEventHandler(this, "button14_click1");
  button15 = new GButton(this, 677, 63, 80, 30);
  button15.setText("Create New Text");
  button15.addEventHandler(this, "button15_click1");
  textfield6 = new GTextField(this, 675, 103, 120, 30, G4P.SCROLLBARS_NONE);
  textfield6.setOpaque(true);
  textfield6.addEventHandler(this, "textfield6_change1");
  button16 = new GButton(this, 679, 143, 80, 30);
  button16.setText("Add Image");
  button16.addEventHandler(this, "button16_click1");
  button17 = new GButton(this, 678, 18, 80, 30);
  button17.setText("Undo");
  button17.addEventHandler(this, "button17_click1");
  textfield7 = new GTextField(this, 550, 259, 218, 59, G4P.SCROLLBARS_NONE);
  textfield7.setOpaque(true);
  textfield7.addEventHandler(this, "textfield7_change1");
}

// Variable declarations 
// autogenerated do not edit
GButton button1; 
GTextField textfield1; 
GTextField textfield2; 
GButton viewCards; 
GButton CardCreator; 
GButton button2; 
GButton button3; 
GButton button4; 
GButton button5; 
GButton button7; 
GTextField CreateCardPack; 
GButton CreateCardPackButton; 
GButton button6; 
GButton button8; 
GButton button9; 
GButton button10; 
GToggleGroup togGroup3; 
GTextField textfield3; 
GTextField textfield4; 
GTextField textfield5; 
GButton button11; 
GButton button12; 
GButton button13; 
GButton button14; 
GButton button15; 
GTextField textfield6; 
GButton button16; 
GButton button17; 
GTextField textfield7; 
