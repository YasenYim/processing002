PImage pic;  //声明，要一个盛装PImage 类型数据的小篮子

size(900, 520);

pic=loadImage("world map BW.png");//把图片载入篮子里
pic.resize(width, height);  //调整尺寸，和窗口等大

int spacing=10;//间距为10

for (int x=spacing; x<width; x+=spacing) {  //从左到右遍历横坐标，每隔spacing取一个点
  for (int y=spacing; y<height; y+=spacing) {  //从上到下遍历纵坐标，每隔spacing取一个点
    color c=pic.get(x, y);  //从图片相同位置取一个颜色
    fill(c);  //使用这个颜色在此位置画一个圆
    noStroke();  //去掉边框
    ellipse(x, y, spacing*0.7, spacing*0.7);
  }
}
