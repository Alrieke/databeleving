


//Ik heb er voor gekozen om de zonuren weer te geven, en hoe kan dat nou beter als in een figuur van de zon. 
// Daarna ben ik bezig geweest om met mouseOver de lijnen een andere kleur te geven, dit is nog niet helemaal gelukt. 
// Ik heb de code laten staan om te laten zien waar ik mee bezig ben geweest. 

//int numValues = 30;
// values;

int MOUSE_OVER_LINE_DISTANCE_THRESHOLD = 2;

CircularBarChart chart;  // figuur wat gemaakt wort.
float[][] coordinaten;
String[] tekst;

void setup()
{
    size( 600, 600 );
    String[] lines = loadStrings("april.txt");      //inladen van de data
    float[] values = new float[lines.length];
    tekst = new String[lines.length];
    //String[]pieces=split(lines[index],',);
    
    for ( int i = 0; i < lines.length; i++ ) {
      String[]pieces=split(lines[i],',');
        values[i] = Float.parseFloat(pieces[2]);
        tekst[i] = pieces[1];
    }
    
    chart = new CircularBarChart( values );
    
    noLoop();
}

void draw()
{
    background( 255 );
    smooth();
    translate( width/2, height/2);

    stroke( 0 );
    strokeWeight( 5 );
    strokeCap(SQUARE);
    
    coordinaten = chart.renderLines();
    
   //saveFrame("images/circular-bar-chart-"+numValues+".png");
}

void mouseMoved() {

  for ( int i = 0; i < coordinaten.length; i++ ) {

    if(mouseIsOverLine(coordinaten[i][0],coordinaten[i][1],coordinaten[i][2],coordinaten[i][3])){
      println(tekst[i]); 
      text(tekst[i],300,10);
      
//      fill(204,102,0);
//      stroke(255);
//      line(coordinaten[i][0],coordinaten[i][1],coordinaten[i][2],coordinaten[i][3]);
      break;
    }
  }
//  for (String) {
//  if (i > 50) {
//    fill(204, 102, 0);
//  } else {
//    fill(180, 50, 50);
//  }
//}
}

boolean mouseIsOverLine(float x1, float y1, float x2, float y2) {
  float d = dist(x1, y1, x2, y2);
  float d1 = dist(x1, y1, mouseX, mouseY);
  float d2 = dist(x2, y2, mouseX, mouseY);

  // distance between vertices must be similar to sum of distances from each vertex to mouse
  if (d1 + d2 < d + MOUSE_OVER_LINE_DISTANCE_THRESHOLD) {
    return true;
  }

  return false;
}

//boolean pointInsideLine(PVector thePoint,
//                        PVector theLineEndPoint1,
//                        PVector theLineEndPoint2,
//                        int theTolerance) {
//                          
//  PVector dir = new PVector(theLineEndPoint2.x,
//                            theLineEndPoint2.y,
//                            theLineEndPoint2.z);
//  dir.sub(theLineEndPoint1);
//  PVector diff = new PVector(thePoint.x, thePoint.y, 0);
//  diff.sub(theLineEndPoint1);
//
//  // inside distance determines the weighting
//  // between linePoint1 and linePoint2
//  float insideDistance = diff.dot(dir) / dir.dot(dir);
//
//  if(insideDistance>0 && insideDistance<1) {
//    // thePoint is inside/close to
//    // the line if insideDistance>0 or <1
////    println( ((insideDistance<0.5) ?
////            "closer to p1":"closer to p2" ) +
////            "\t p1:"+nf((1-insideDistance),1,2)+
////            " / p2:"+nf(insideDistance,1,2) );
//            
//    PVector closest = new PVector(theLineEndPoint1.x,
//                                  theLineEndPoint1.y,
//                                  theLineEndPoint1.z);
//    dir.mult(insideDistance);
//    closest.add(dir);
//    PVector d = new PVector(thePoint.x, thePoint.y, 0);
//    d.sub(closest);
//     // println((insideDistance>0.5) ? "b":"a");
//    float distsqr = d.dot(d);
//    
//    // check the distance of thePoint to the line against our tolerance.
//    return (distsqr < pow(theTolerance,2));
//  }
//  return false;
//}
