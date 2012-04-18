import controlP5.*;
import java.awt.Image;
import java.awt.Toolkit;
import java.awt.image.PixelGrabber;


PImage[] images = new PImage[700];
String imagePath = "/Users/chrisspurgeon/Documents/Visible_Human/VHP_pngs/small/";
int imageCounter = 1001;
int arrayCounter = 0;


int xPos = 100;
int yPos = 50;

int slice = 200;


ControlP5 controlP5;
int myColor = color(0, 0, 0);


void setup() {
  size(1000, 600);
  background(0);

  controlP5 = new ControlP5(this);
  // add a vertical slider
  controlP5.addSlider("slider", 0, 500, 500, 20, 50, 10, 500);
  Slider s1 = (Slider)controlP5.controller("slider");
  // use Slider.FIX or Slider.FLEXIBLE to change the slider handle
  // by default it is Slider.FIX
  s1.setSliderMode(Slider.FLEXIBLE);
  s1.setLabelVisible(false);


  for (imageCounter = 1001; imageCounter <= 1700; imageCounter++) {
    images[arrayCounter] = loadImage(imagePath + "a_vm" + imageCounter + ".png");
    arrayCounter++;
    println("Grabbed image " + imageCounter);
  }
  imageCounter = 0;
  println("Here we go!");
}

void draw() {
}

void slider(float foo) {
  slice = int(map(foo, 0, 500, 30, 565));
  println("foo is " + foo + ", slice is " + slice);

  PImage imgslice = createImage(364, 364, RGB);
  imageCounter = 1;
  while (imageCounter < 700) {
    imgslice = images[imageCounter].get(slice, 0, 1, 364);
    set(xPos, yPos, imgslice);
    xPos++;
    imageCounter++;
  }
  xPos = 100;
  imgslice.updatePixels();
  
}

