class CircularBarChart
{
    float maxRadius;
    float minRadius;
    
    float values[];
    
    float angle;
    float[][] coordinaten;
    
    CircularBarChart(float[] _values)
    {
        minRadius = 50;
        maxRadius = 200;
        
        values = _values;
        
        angle = TWO_PI / float( values.length );
        coordinaten = new float[values.length][4];
    }

    float[][] renderLines()
    {
        for (int i = 0; i < values.length; i++) {
            
            float x1 = cos( i * angle ) * ( minRadius / 2 );
            float y1 = sin( i * angle ) * ( minRadius / 2 );
            
            float r = map(values[i], 0, 100, minRadius, maxRadius);
            
            float x2 = cos( i * angle ) * r;
            float y2 = sin( i * angle ) * r;
            
            //append(coordinaten,{x1,y1,x2,y2});
            coordinaten[i][0] = x1 + 300;
            coordinaten[i][1] = y1+300;
            coordinaten[i][2] = x2+300;
            coordinaten[i][3] = y2+300;
            
            line(x1, y1, x2, y2);
        }
        
        return coordinaten;
        
    } 

}
