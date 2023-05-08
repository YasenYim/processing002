
size(512, 256);
colorMode(HSB);  //先调整颜色模式
for (int i=0; i<width; i++) {  
  stroke(i/2, 127, 255);  //现在是以HSB模式设定颜色
  line(i, 0, i, height);  //屏幕上一共画了512根线，每根线颜色不同
}
