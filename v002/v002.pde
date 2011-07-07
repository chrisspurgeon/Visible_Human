
int imgWidth = 410;
int imgHeight = 410;
//PImage img;
PImage imgslice;


void setup() {
  size(800,600);
  background(0,0,0);
  int xPos = 100;
  int yPos = 50;

  String imagePath = "/Users/chrisspurgeon/Documents/Visible_Human/VHP_pngs/small/";
  int imageNumber;
  // 1001 to 1377

  for (imageNumber = 1001; imageNumber <= 1577; imageNumber = imageNumber + 1) {
   PImage img = loadImage(imagePath + "a_vm" + imageNumber + ".png");
    imgslice = img.get(0,150,610,1);
//    image(imgslice,xPos,yPos);
    set(xPos,yPos,imgslice);
    yPos++;
    println("Getting image " + imageNumber);
  }
  noLoop();
  //PImage img = loadImage("tower.jpg");
  //background(img);
  //PImage b = img.get(50, 0, 50, 100); 
  //image(b, 0, 0);
}

