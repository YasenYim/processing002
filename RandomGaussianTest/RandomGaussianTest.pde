

PImage pic;
int yline=280;  //分界线，线上面的点不动，线下面的点坍塌


size(1030, 900);
background(255);
pic=loadImage("bw2.jpg");  //载入原始图片

pic.resize(500, 0);  //图片等比例缩放到 宽度500

image(pic, 0, 0);  //把原图片显示在左上角

strokeWeight(2);
translate(530, 0);  //坐标系向右偏移530

for (int y=pic.height-1; y>=0; y--) {  //反向循环，从下往上画，y是纵坐标

  if (y<yline) {    //分界线之上时，把图片里的像素点挨个誊抄过来
    for (int x=0; x<pic.width; x++) {
      if (alpha(pic.get(x, y))>0) {
        stroke(pic.get(x, y));
        point(x, y+0);
      }
    }
  } else {      //分界线之下时
    float factor=map(y, yline, pic.height, 0, 150);    //factor 是塌陷偏移的程度，越靠下，程度越甚
    
    for (int x=0; x<pic.width; x++) {
      if (alpha(pic.get(x, y))>0) {
        
        float offset=abs(randomGaussian())*factor;  //实际偏移量由factor 和高斯分布共同决定
        stroke(pic.get(x, y), 200);  //原图里未偏移位置的颜色
        
        //横坐标向左右随机少量偏移，纵坐标向下偏移
        point(x+random(-factor*0.1, factor*0.1), y+offset);  //把这个颜色点画在偏移后的位置上
      }
    }
  }
  
}
