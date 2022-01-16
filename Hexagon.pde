class Hexagon {
  
  int x;
  int y;
  int xc;
  int yc;
  int l;
  Polygon polygon;

  Hexagon(int x, int y, int l){
    this.x = x;
    this.y = y;
    this.l = l;
    this.xc = x+l/2;
    this.yc = y+l/2;
    
    polygon = new Polygon(xc,yc,l/2,6,90);
  }
  
  void render(){
     stroke(#0000FF);
     strokeWeight(3);
     polygon.render();
     noFill();
     strokeWeight(1);
     stroke(#FF0000);
     square(x,y,l);
  }
    
}
