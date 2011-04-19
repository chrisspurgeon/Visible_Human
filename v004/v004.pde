
int imgWidth = 410;
int imgHeight = 410;
//PImage img;
PImage imgslice;

int xPos = 100;
int yPos = 50;

String imagePath = "/Users/chrisspurgeon/Desktop/VHP_pngs/small/";
int imageNumber = 1001;




void setup() {
  size(800,600);
  background(0,0,0);
}

void draw() {
  // 1001 to 1377

  if (imageNumber > 1600) {
    noLoop();
  } 
  else {

    PImage img = loadImage(imagePath + "a_vm" + imageNumber + ".png");
    imgslice = img.get(308,0,1,364);
    //    image(imgslice,xPos,yPos);
    set(xPos,yPos,imgslice);
    xPos++;
    imageNumber++;
    println("Getting image " + imageNumber);
  }
}

