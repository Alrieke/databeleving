void setup(){ size(200, 680); String lines[] = loadStrings("http://www.databeleving.nl/processing/presentielijst.txt");
int gemiddeldeLeeftijd = 0; 
for (int i = 0; i < lines.length; i++) { 
float[] list = float(split(lines[i], ';')); 
line(0, (20*i), list[3], (20*i)); } }
