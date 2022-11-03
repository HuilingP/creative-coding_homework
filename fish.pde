
class Cell {

  float xlocation;
  float ylocation;
  float dia;
  boolean issed;
  float cellred, cellgreen, cellblue;
  float lineweight;

  //then we construct it- using a constructor

  Cell() {

    xlocation=250; //origin of cells
    ylocation=250;
    dia=random(1); // diameter of cells
    issed=false;
    cellgreen=random(230);    //random prefix to change colour randomly
    cellblue=random(220);    
    //lineweight=0.1;
  }

  void display() {
    noStroke();
    fill(220, cellgreen, cellblue);
    ellipse(xlocation, ylocation, dia, dia);
  }
  
  void update(){
    xlocation = xlocation + random(-5,5); //increase speed/ direction
    ylocation = ylocation + random(-5,5); //increase speed/ direction
  }


}
