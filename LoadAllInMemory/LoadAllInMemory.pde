PImage[] images = new PImage[700];
String imagePath = "/Users/chrisspurgeon/Documents/Visible_Human/VHP_pngs/small/";
int imageCounter = 1001;
int arrayCounter = 0;

int slice, xPos, yPos;

PImage imgslice;


void setup() {
  for (imageCounter = 1001; imageCounter <= 1700; imageCounter++) {
    images[arrayCounter] = loadImage(imagePath + "a_vm" + imageCounter + ".png");
    arrayCounter++;
    println("Grabbed image " + imageCounter);
  }
}

void draw() {
}

