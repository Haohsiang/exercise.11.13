boolean [][] grid = new boolean [10][10];
boolean on = true;
boolean off = false;

void setup(){
  size(200, 200);
  for(int i=0; i<10; i++){
    for(int j=0; j<10; j++){
      grid[i][j]= false;
      rect(i*20, j*20, 20, 20);
    }
  }
}

void draw(){
  for(int i=0; i<10; i++){
    for(int j=0; j<10; j++){
      if(grid[i][j]==true){
        fill(255);
        stroke(0);
        rect(i*20, j*20, 20, 20);
      }else{
        fill(100); //gray
        stroke(0);
        rect(i*20, j*20, 20, 20);
      }
    }
  }
  
}

void mousePressed(){
  int col = mouseX/20;
  int row = mouseY/20;
  
  if(col==0&&row==0){ //corner control, [0][0]
    grid[0][0] = (grid[0][0]) ? false : true;
    grid[0][1] = (grid[0][1]) ? false : true;
    grid[1][0] = (grid[1][0]) ? false : true;
  }else if(col==0&&row==9){ //corner control, [0][9]
    grid[0][9] = (grid[0][9]) ? false : true;
    grid[0][8] = (grid[0][8]) ? false : true;
    grid[1][9] = (grid[1][9]) ? false : true;
  }else if(col==9&&row==0){ //corner control, [9][0]
    grid[9][0] = (grid[9][0]) ? false : true;
    grid[9][1] = (grid[9][1]) ? false : true;
    grid[8][0] = (grid[8][0]) ? false : true; 
  }else if(col==9&&row==9){ //corner control, [9][9]
    grid[9][9] = (grid[9][9]) ? false : true;
    grid[9][8] = (grid[9][8]) ? false : true;
    grid[8][9] = (grid[8][9]) ? false : true;
  }else if(col==0 && row>=1 && row<=8){ //side control, [0][1-8]
    grid[0][row] = (grid[0][row]) ? false : true;
    grid[0][row+1] = (grid[0][row+1]) ? false : true;
    grid[0][row-1] = (grid[0][row-1]) ? false : true;
    grid[1][row] = (grid[1][row]) ? false : true;
  }else if(col ==9 && row>=1 && row<=8){ //side control, [9][1-8]
    grid[9][row] = (grid[9][row]) ? false : true;
    grid[9][row+1] = (grid[9][row+1]) ? false : true;
    grid[9][row-1] = (grid[9][row-1]) ? false : true;
    grid[8][row] = (grid[8][row]) ? false : true;
  }else if(row==0 && col>=1 && col<=8){ //side control, [1-8][0]
    grid[col][0] = (grid[col][0]) ? false : true;
    grid[col+1][0] = (grid[col+1][0]) ? false : true;
    grid[col-1][0] = (grid[col-1][0]) ? false : true;
    grid[col][1] = (grid[col][1]) ? false : true;
  }else if(row==9 && col>=1 && col<=8){ //side control, [1-8][9]
    grid[col][9] = (grid[col][9]) ? false : true;
    grid[col+1][9] = (grid[col+1][9]) ? false : true;
    grid[col-1][9] = (grid[col-1][9]) ? false : true;
    grid[col][8] = (grid[col][8]) ? false : true;
  }else if(grid[col][row]==false){ // inside control 
    grid[col][row] = true; 
    grid[col][row+1] = (grid[col][row+1]) ? false : true;
    grid[col][row-1] = (grid[col][row-1]) ? false : true;
    grid[col+1][row] = (grid[col+1][row]) ? false : true;
    grid[col-1][row] = (grid[col-1][row]) ? false : true;
  }else { // is true
    grid[col][row]=false; 
    grid[col][row+1] = (grid[col][row+1]) ? false : true;
    grid[col][row-1] = (grid[col][row-1]) ? false : true;
    grid[col+1][row] = (grid[col+1][row]) ? false : true;
    grid[col-1][row] = (grid[col-1][row]) ? false : true;
  }
   
}
