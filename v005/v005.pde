
int imgWidth = 410;
int imgHeight = 410;
//PImage img;
PImage imgslice;

int xPos = 100;
int yPos = 50;

String imagePath = "/Users/chrisspurgeon/Documents/Visible_Human/VHP_pngs/small/";
int imageNumber = 1001;

int slice;




void setup() {
  size(800,600);
  background(0,0,0);
}

void draw() {
slice = floor(random(400));
xPos = 100;

for (imageNumber = 1001; imageNumber <=1700; imageNumber++) {

    PImage img = loadImage(imagePath + "a_vm" + imageNumber + ".png");
    imgslice = img.get(slice,0,1,364);  // was 308,
    //    image(imgslice,xPos,yPos);
    set(xPos,yPos,imgslice);
    xPos++;
    imageNumber++;
    println("Getting image " + imageNumber);
  }
}

