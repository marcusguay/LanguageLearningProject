import java.util.Scanner; 
import java.io.*;
import java.io.PrintWriter;
import g4p_controls.*;
boolean createCard=false;
import java.util.ArrayList; 
int TextSize=15;
boolean isPressed=false;
PImage img;
int CardCounter=0;
PApplet pa=this;
Text text1= new Text("Front side", 225, 50, false);
Text text2= new Text("Back side", 225, 140, false);
card card1= new card(1);
Text tFront;
Text tBack;
cardtype3 CardOG;
GDropList testing;
card c;
add_hitboxes all;
ImageList Allimages= new ImageList();
CardStorageList All= new CardStorageList();
CardStorage cards;
CardStorage viewed; 
cardtype3 lols= new cardtype3();
keyRec FRec= new keyRec();
keyRec BRec= new keyRec();
Text text3= new Text("Back side", 225, 140, false);
int window=0;
int YCardStoragePosition=85;
int YCardStoragePosition2=189;
int RandomCard=0;
int lol1=0;
int lol2=0;
int sizeX=0;
int sizeY=0;

int timer=0;
CardPackFileWriter test; 
void setup() {


  size(800, 450, JAVA2D);
  println(System.getProperty("java.version"));
  createGUI();
  textfield1.setVisible(false); 
  textfield2.setVisible(false);
  CardCreator.setVisible(false);
  button2.setVisible(false);
  button3.setVisible(false);
  all = new add_hitboxes(); 
  button4.setVisible(false);

  CardStorage cards=new CardStorage("Default CardPack");
  cards.select();
  CardOG=new cardtype3();
  imageMode(CORNERS);
  textSize(TextSize);
  rectMode(CORNERS);  
  String [] pathname;
  File f= new File("C:\\Users\\Awake\\Documents\\Processing\\sketch_210307a\\CardPack\\");
  pathname=f.list();
  for (String pathnames : pathname) {
    parseFile(pathnames);
  }


  String [] ImagePathname;
  File g= new File("C:\\Users\\Awake\\Documents\\Processing\\sketch_210307a\\data");
  ImagePathname=g.list();
  for (String pathnames : ImagePathname) {

    img=loadImage(pathnames);
    parseImageFile(img, pathnames);
  }




  println(sketchPath());
}


public void hi(GButton source, GEvent event) { //_CODE_:button7:466897:
  println("test");
} 
void draw() {

  background(255);
  stroke(0);
  fill(0);

  if (window==0) {

    All.hideAll();
  }


  if (window==8) {
    All.showGCBox();
    CardOG.showCard();
    Allimages.showGCBox();
   button17.setVisible(true);
    button15.setVisible(true);
    button13.setVisible(true);
    textfield6.setVisible(true);
    button16.setVisible(true);
    button14.setVisible(true);
  } else {
     Allimages.hideGCBox();
    button15.setVisible(false);
    textfield6.setVisible(false);
    button16.setVisible(false);
    button14.setVisible(false); 
    button13.setVisible(false);
    button17.setVisible(false);
  }







  if (window==7) {
      All.showGCBox(); 
    text("First Part", 250, 80);
    textfield3.setVisible(true);
    button11.setVisible(true);
    text("Blank", 250, 180);
    textfield4.setVisible(true); 
    text("Second Part", 250, 245);
    textfield5.setVisible(true); 
    text("Answer",613,245);
    textfield7.setVisible(true);
    All.hideAll();
  } else {

    textfield3.setVisible(false);
    textfield4.setVisible(false); 
    textfield5.setVisible(false); 
    textfield7.setVisible(false);
    button11.setVisible(false);
  }





  if (window==6) {
    button9.setVisible(true);
    button10.setVisible(true);    
    button12.setVisible(true);
    All.hideAll();
  } else {

    button9.setVisible(false);
    button10.setVisible(false);  
    button12.setVisible(false);
  }






  if (window==3) {
    button8.setVisible(true);
    All.showGCBox();
    All.hideAll();
  } else {
    button8.setVisible(false);
  }


  if (window==4) {
    text("Create New Card Pack", 300, 75, 100); 
    All.showGCBox(); 
    CreateCardPack.setVisible(true);
    CreateCardPackButton.setVisible(true);
    All.hideAll();
  } else {

    CreateCardPack.setVisible(false);
    CreateCardPackButton.setVisible(false);
  }

  if (window==5) {

  All.hideGCBox(); 

    All.getCardStorage().showCard(CardCounter);
    button2.setVisible(true);
    button3.setVisible(true);
    button4.setVisible(true);
  } else {

    button2.setVisible(false);
    button3.setVisible(false);
    button4.setVisible(false);
  }


  if (window==2) {
    All.hideAll();
    textSize(10); 
    text("Select Card Pack to view", 300, 75, 100); 
    All.showGCBox(); 
    button6.setVisible(true);
  } else {

    button6.setVisible(false);
  }


  if (window==1) {
    textSize(15); 
    All.hideAll();
    All.showGCBox(); 
    text1.show();
    text2.show();


    textfield1.setVisible(true); 
    textfield2.setVisible(true);
    CardCreator.setVisible(true);
  } else {
    textfield2.setText("");
    textfield1.setText("");
    textfield1.setVisible(false); 
    textfield2.setVisible(false);
    CardCreator.setVisible(false);
  }

  //println(window);

  //button(String t, int x, int y, int SX,int SY){
}

void parseImageFile(PImage n, String m) {

  image i= new image(n, m, 8, 146, 115, 195,true);
  Allimages.add(i);
}



void parseFile(String n) {



  int c=0;
  CardStorage s=cards;
  BufferedReader reader = createReader("\\CardPack\\"+n+"\\");
  String line = null;
  try {
    while ((line = reader.readLine()) != null) {
      String[] nice=line.split("\\|");
      println(nice);
      if (c==0) {

        s= new CardStorage(nice[0]);
      }

      if (c > 0) { 
        // tBack= new Text(textfield2.getText(),325,225,false);


        if (nice[0].equals("1")) {

          tFront= new Text(nice[1], Integer.parseInt(nice[2]), Integer.parseInt(nice[3]), false);
          tBack= new Text(nice[5], Integer.parseInt(nice[6]), Integer.parseInt(nice[7]), false);
          card cards= new card(Integer.parseInt(nice[0]));

          cards.addFront(tFront);
          cards.addBack(tBack);

          s.addCard(cards);
        }

        if (nice[0].equals("2")) {
          String t=nice[2];
          String  k=nice[3];
          card d= new cardtype2(2, nice[1], t, k,nice[4]);
          // c= new cardtype2(2,textfield4.getText(),t,n);
          println(textfield3.getText(), textfield5.getText());


          s.addCard(d);
        }

        if (nice[0].equals("3")) {
          card d1=new cardtype3();
        boolean front=false;
boolean back=false;
         for(int i=0; i < nice.length; i++){
        
            if (nice[i].equals("Front")) {
             front=true;
              
            }
            if(front==true){
              while(nice[i].equals("Text")){
              
                // new Text(nice[j+1],Integer.parseInt(nice[j+1]),Integer.parseInt(nice[j+2]),true);
               
                 Text t= new Text(nice[i+1],Integer.parseInt(nice[i+2]),Integer.parseInt(nice[i+3]),true);
                
              d1.addFrontT(t);
           
                i=i+4;
              }
             
              while(nice[i].equals("Image")){
              //(PImage n, String m, int x, int y, int xx, int yy)
              
  image g = new image(loadImage(nice[i+2]),nice[i+2],Integer.parseInt(nice[i+3]),Integer.parseInt(nice[i+4]),Integer.parseInt(nice[i+5]),Integer.parseInt(nice[i+6]),false);
                
                 d1.addFrontI(g);
               
                i=i+6;
              }
              
              
              
            }
            

            if (nice[i].equals("Back")) {
             back=true; 
             front=false;
            }
            if(back==true){
                while(nice[i].equals("Text")){
              
            Text t= new Text(nice[i+1],Integer.parseInt(nice[i+2]),Integer.parseInt(nice[i+3]),true);
                
              d1.addBackT(t);
                
                
              
                i=i+4;
              }
             
              while(nice[i].equals("Image")){
           image g = new image(loadImage(nice[i+2]),nice[i+2],Integer.parseInt(nice[i+3]),Integer.parseInt(nice[i+4]),Integer.parseInt(nice[i+5]),Integer.parseInt(nice[i+6]),false);
                
                 d1.addBackI(g);
               
            
                
                

                i=i+6;
              }
              
              
              
              
            }
            
            
          }
             s.addCard(d1);
        }
        
      }
      c++;
    }
    reader.close();
  }
  catch (IOException e) {
    e.printStackTrace();
  }
} 


void mouseReleased() {

  println(mouseX, mouseY); 

  isPressed=false;
}

void mousePressed() {

  isPressed=true;
}
