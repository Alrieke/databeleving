void setup()
{
size(480, 480); //Setting width, height
background(#9badaf); //Background color gray
}

void draw ()
{
//1st rect
stroke(#c6d7de);
fill(#d4a00d);
rect(23,23, 433,433); //x1, y1, width, height

//2nd rect
noStroke(); //No stroke for this and the next rectangles
fill(#ddb834);
rect(68,88, 343,343); //x1, y1, width, height

//3rd rect
fill(#dec83e);
rect(112,142, 257,257); //x1, y1, width, height

//4th rect
fill(#d7d05e);
rect(155,195, 170,170); //x1, y1, width, height
} 
