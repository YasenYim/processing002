//整个画面是用边长为2（像素）的小方块组合而成的。

PImage pic;  //声明图片变量
int unit=2;  //小方块的尺寸

size(1280, 720);
pic=loadImage("Night.jpg");
pic.resize(width, height);

for (int i=0; i<width; i+=unit) {  //横坐标每隔unit 取一次点
  for (int j=0; j<height; j+=unit) {  //纵坐标每隔unit 取一次点
    noStroke();
    color c=(pic.get(i, j));  //在图片上该点位置取色，并把颜色放在 c 里

    float r=map(i, 0, width, 0, 255);  //根据横坐标位置计算红色通道的值
    
    //用刚才计算的值作为红色通道值，
    //用原本颜色c的红色通道值作为绿色通道值（放在了括号里的第二个参数的位置,第二个参数表示绿色通道）
    //用原本颜色c的绿色通道值作为蓝色通道值（放在了括号里的第三个参数的位置,第三个参数表示蓝色通道）
    fill(r, red(c), green(c));  
    
    rect(i, j, unit, unit);//相同位置用刚刚计算好的颜色画一个尺寸为unit 的方块
  }
}
