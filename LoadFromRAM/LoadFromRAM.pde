PImage[] images = new PImage[700];
String imagePath = "/Users/chrisspurgeon/Documents/Visible_Human/VHP_pngs/small/";
int imageCounter = 1001;
int arrayCounter = 0;

PImage imgslice;

int xPos = 100;
int yPos = 50;



void setup() {
  size(1000, 600);
  background(0);
  for (imageCounter = 1001; imageCounter <= 1700; imageCounter++) {
    images[arrayCounter] = loadImage(imagePath + "a_vm" + imageCounter + ".png");
    arrayCounter++;
    println("Grabbed image " + imageCounter);
  }
  imageCounter = 0;
  println("Here we go!");
}

void draw() {

  if (imageCounter > 699) {
    println("Done!");
    noLoop();
  } 
  else {

    imgslice = images[imageCounter].get(308, 0, 1, 364);
    set(xPos, yPos, imgslice);
    xPos++;
    imageCounter++;
//    println("Getting image " + imageCounter);
  }
}

