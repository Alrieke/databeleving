size(400,400);
noStroke();
background(23,100,240);


float x = 0;
while(x < width){
  float y=0;
  while(y <height){
  fill(random(0,105)); 
  rect(x,y,38,38); // zorgt voor vierkant, cirkel of wat je wilt.
  y=y+40;
  }
  x=x+40; // zorgt voor de afstand tussen de vierkanten.
}

