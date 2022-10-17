PImage picture_1;//宣告一個影像類別(class)的變數，其名稱為picture_1。
PImage picture_2;//宣告一個影像類別(class)的變數，其名稱為picture_2。
float t;//宣告一個浮點類型的變數，其名稱為t。

void setup() {
  size(400,400);
  imageMode(CENTER);
  picture_1 = loadImage("a.jpg");//載入影像1(傘與杯)
  picture_2 = loadImage("M.png");//載入影像2(垂直線)
  t = 0.0;//變數t其初始值為0.0。
} 

void draw() {
  t = t+0.005;//隨著時間以微小(0.005)的數值來遞增
  image(picture_1, 200, 160);//顯示影像1的表現方式 
  image(picture_2, cos(t)*160, 160);//顯示影像2的表現方式，但注意X軸用了三角函數sin(t)，表示左右移動。
}
