public class texthitbox{
private int x, y;
private int nx1,nx2,ny1,ny2;
private String n;
private String Str;
public texthitbox(String str, int PosX, int PosY){
 nx1=PosX-(TextSize/2);
  ny1=PosY-TextSize;
  nx2=PosX+(TextSize/2);
  ny2=PosY+(TextSize/2);
this.n=str;
this.x=PosX;
this.y=PosY;

 }
public texthitbox(int PosX, int PosY, int PosX2, int PosY2){
 nx1=PosX;
  ny1=PosY;
  nx2=PosX2;
  ny2=PosY2;

this.x=PosX;
this.y=PosY;

 }
public texthitbox(String t){
  this.n=t;
  this.Str=t;
 int d=0;
 if(Str.length()<=4){
 d=(int)((double)TextSize*0.45);
 } else {
   
  d=(int)((double)TextSize*0.6);
   
 }
  
for(int i=0; i <n.length(); i++){
  texthitbox g=new texthitbox(n.substring(i,i+1),200+(i*d),300);
  all.addT(g); //(((double)(TextSize)/(0.5+((*n.length()))))
  println(i*(int)((double)TextSize*0.7));
}




all.get();
nx1=all.getStart();
ny1=all.y1();
nx2=all.getEnd();
ny2=all.y2();

//bounds.addTHB(this);



 }



public void show(){
  fill(255);
 rect(nx1,ny1,nx2,ny2); 
 fill(0);

 
 
 
}


public int getx1(){
  
  
 return this.nx1; 
}
public int getx2(){
  
  
 return this.nx2; 
}

public int gety1(){
  
  
 return this.ny1; 
}

public int gety2(){
  
  
 return this.ny2; 
}
public void printAll(){
  
  
  println(nx1,ny1,nx2,ny2);
  
  
  
}


public void setNew(int x, int y, int xx, int yy){
   
   nx1=x;
   nx2=xx;
   ny1=y;
   ny2=yy;
   
   
 }
 
 public int getSizeY(){
  return Math.abs(this.ny2 - this.ny1);
 }
  
 public int getSizeX(){
  return Math.abs(this.nx2 - this.nx1);
 } 


}
