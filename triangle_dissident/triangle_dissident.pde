size(600,800);
noStroke();
background(255);
for(int i=0;i<width;i=i+20){  
  for(int j=0;j<height;j=j+20){
    if(i==260 && j==240){  //最中心红色三角形
      fill(200,0,0);
      triangle(i+2,j+2,i+6,j+18,i+18,j+11);
    }else if(i<480 && i>100 && j<280 && j>80){  //中部整齐的蓝色三角形阵列
      fill(0,150,255);
      triangle(i+10,j+2,i+2,j+18,i+18,j+18);     
    }else{        //外围灰色不规则三角形
      fill(200,0,0,50);
      triangle(random(i,i+20),random(j,j+20),random(i,i+20),random(j,j+20),random(i,i+20),random(j,j+20));
    }
  }
}
    
/*主要知识点为：
1. 用 if...else if...else 分出了三种不同情况
2. 用 i,j 确定了一个三角形中心点的尺寸之后，用简单的加减法围绕着中心计算三角形三个点的坐标

*/
  
