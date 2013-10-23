import processing.pdf.*;

void setup() {
  // Variabelen voor de canvas.
  int w = 600;
  int h = 600;
  
  // Variabelen voor de kleur.
  int hue = int(random(1, 360));
  int saturation = 100;
  int brightness = 100-15;
  
  size(w, h, PDF, "vierkant.pdf");
  colorMode(HSB, 360, 100, 100);
  background(hue, saturation, brightness);
  noStroke();
  
  // Vierkanten.
  for(int i = 1; i <= 3; i++) {
    if(i == 1) {
      hue = hue+10;
      //saturation = saturation-10;
      brightness = brightness-7;
    }
    
    if(i == 2) {
      hue = hue+15;
      //saturation = saturation-20;
      brightness = brightness-14;
    }
    
    if(i == 3) {
      hue = hue+20;
      //saturation = saturation-30;
      brightness = brightness-21;
    }
    fill(hue, saturation, brightness);
    rect(i*50, i*75, width-(i*50*2), height-(i*75)-(i*25));
  }
  
  println("Finished.");
  exit();
}
