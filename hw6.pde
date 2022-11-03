//creating an array
Cell[] myCells = new Cell[1500]; //No. of cells

Cell myCell;

//CIRCLE
float a;
float b;
float c;
float x;
float colred = 100;
float colgreen = 0;
float colblue= 100;

void setup (){
 background (0);
  size (500,500);
  frameRate(50);

  
  //populating the array
  for (int i=0; i<myCells.length; i++) {
    myCells[i] = new Cell();
  }
}

void draw (){
 
  
  
//for loop
  for (int i=0; i<myCells.length; i++) {
    myCells[i].display();
    myCells[i].update();
    
  }
  
  pushMatrix(); //The pushMatrix() function saves the current coordinate system to the stack and popMatrix() restores the prior coordinate system. 
  a=random(4);
  c=300;
  b=(c/2);
  x=random(500);
  
  translate(width/2, height/2);
rotate(PI/a);
noFill();

 if(mouseX>width/2){
   colred=colred+1;
 }else {colred=colred-1;
 }
 
  if(mouseX<width/2){
   colblue=colgreen+1;
 }else {colblue=colgreen-1;
 }
  
  
stroke(colred, colgreen, colblue);
strokeWeight(.1);
rect(-b, -b, c, c);

stroke(0);
line(b,b,c,c);
popMatrix();
  
  c=c+x;


  
}
