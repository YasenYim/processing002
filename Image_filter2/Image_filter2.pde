

PImage pic;

size(1280, 720);
pic=loadImage("Night.jpg");
pic.resize(width, height);


for (int i=0; i<95000; i++) {  //屏幕上一共戳了95000个小圆
  
  float x=randomGaussian()*200+width/2;  //以屏幕中心为中心，横坐标偏移一个随机值
  float y=randomGaussian()*100+height/2;
  
  color c=(pic.get(int(x), int(y)));  //从图片上的相同位置取色
  fill(c);
  noStroke();
  
  float diameter=random(6);  //每个小圆的直径随机
  
  ellipse(x, y, diameter, diameter);
}
