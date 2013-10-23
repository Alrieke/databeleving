void setup(){
  size(600,600);
  colorMode(HSB, 360,100,100);  
  noStroke();
  
  int kleur =80;
  
  for(int i=0; i< 10; i++){
    fill(kleur, 100-10*i, 100);
    rect((50*i)+50,50,50, height-100);
  }
}
