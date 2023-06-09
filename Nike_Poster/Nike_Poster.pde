

size(500,750);

PImage pic=loadImage("bw4.jpg");
pic.resize(width,height);


background(255);

noStroke();

float threshold=110;  //亮度值高于110的地方，将不显示任何图案

for(int x=0;x<width;x+=2){
  for(int y=0;y<height;y+=10){
    color c=pic.get(x,y);
    if(brightness(c)<threshold){
      
      fill(50);      
      float diameter=map(brightness(c),threshold,0,2,12); //亮度为110的时候，直径为2；亮度为0时直径12。线性映射     
      ellipse(x,y,diameter,diameter);
    }
  }
}
