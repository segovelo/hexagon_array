
Hexagon[][] hex;
Hexagon[] hex_array;
Polygon polygon;
int min = 3;
int max = 2*min - 1;
int num = 0;
float x_dist = 0;
float y_dist = 0;
int dist = 20;
int [] x;
int [] y;
int [] serie;
int x_array;
int y_array = 40;
int l;
float tg60 = 1.7320508075688772935274463415059;
void setup(){
  fullScreen();  
  for(int i=min ;i<max; i++){
    num += i; 
  }
  num *= 2;
  num += max;
  x_array = width/2;
  hex_array = new Hexagon[num];
  x = new int[num];
  y = new int[num];
  serie = new int[max];
  int acc = 0;
  l = (int)(height-80)/max;
  x_dist = -(l * (1-tg60/2)) + dist; // -(int)(l * (1-tg60/2))
  y_dist = (-(l * cos(radians(60))/2) + (2*dist/tg60));//  (int) (((x_dist + (int)(3*l * (1-tg60/2))))/tg60);
  for(int i=0; i<max ; i++){
    serie[i] = (min+i<=max)? min+i: serie[i-1]-1; 
  }
  
  for(int i=0; i<max; i++){
    for(int j=0; j<serie[i]; j++){
       x[j+acc] = (int)(x_array + j * (l+x_dist) - ((serie[i]/2.0)*l) - (x_dist *(((serie[i]-min)/2.0)+1)));
       y[j+acc] = (int)(y_array + i * (l+y_dist));
    }   
    acc += serie[i];
  }
  
  for(int i=0;i<num;i++){
    hex_array[i] = new Hexagon(x[i],y[i],l);
  }

  
}

void draw(){
     background(200,200,255);
     stroke(#00FF00);
     strokeWeight(1);
     line(0, height/2,width,height/2);
     line(width/2,0,width/2,height);
       //for(int i=0; i<max ; i++){
       //  textSize(15);
       //  fill(#0000FF);
       //   text(serie[i], 30+i*20, 40) ; 
       // }
       
      for(int i=0; i<num ; i++){
          hex_array[i].render();
      }
}
