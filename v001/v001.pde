import controlP5.*;
import java.awt.Image;
import java.awt.Toolkit;
import java.awt.image.PixelGrabber;



ControlP5 controlP5;
int myColor = color(0,0,0);
PImage img;
String imagePath = "/Users/chrisspurgeon/Documents/Visible_Human/VHP_pngs/small/";
int imageNumber;

void setup() {
  size(800,600);
  background(0,0,0);
  controlP5 = new ControlP5(this);
  // add a vertical slider
  controlP5.addSlider("slider",0,500,500,20,50,10,500);
  Slider s1 = (Slider)controlP5.controller("slider");
  // use Slider.FIX or Slider.FLEXIBLE to change the slider handle
  // by default it is Slider.FIX
  s1.setSliderMode(Slider.FLEXIBLE);
  imageNumber = 1001;
  img = loadImagex(imagePath + "a_vm" + imageNumber + ".png");
}

void draw() {
  background(0,0,0);
  img = loadImage(imagePath + "a_vm" + imageNumber + ".png");
  image(img, 100,50);
}
void slider(float foo) {
  imageNumber = int(map(foo,0,500,2878,1001));
  println(imageNumber);
}










PImage loadImagex(String inFile) {
  Image image = Toolkit.getDefaultToolkit().getImage(inFile);   
  int [] data= new int [1];  
  PImage retval = createImage(1,1,ARGB);  
  try {    
    PixelGrabber grabber =       new PixelGrabber(image, 0, 0, -1, -1, false);    
    if (grabber.grabPixels()) {      
      int w = grabber.getWidth();      
      int h = grabber.getHeight();      
      retval = createImage(w,h,ARGB);      
      if (isGreyscaleImage(grabber)) {        
        byte[] datax = (byte[]) grabber.getPixels();                 
        arraycopy(datax,retval.pixels);                 // Process greyscale image ...      }      else {        data = (int[]) grabber.getPixels();        arraycopy(data,retval.pixels);        //arraycopy(data,pixels);        // Process Color image
      }
    }
  }  
  catch (InterruptedException e1) {    
    e1.printStackTrace();
  }  
  return retval;
}
public static final boolean isGreyscaleImage(PixelGrabber pg) {  
  return pg.getPixels() instanceof byte[];
}

