//cicloides

int sizex = 700, sizey = 700;

float x0, y0, x1, y1, x2, y2, x3, y3, x4, y4; 
float X0, Y0, X1, Y1, X2, Y2, X3, Y3, X4, Y4; 

float t=0;

boolean terminar = false;

fasor fundamental = new fasor (0, 1, 0);
fasor armonico1 = new fasor (150, 100, 1);
fasor armonico2 = new fasor (100, 251, 2);
fasor armonico3 = new fasor (80, 302, 3);
fasor armonico4 = new fasor (20, 403, 4);

int i = 1;
int r = 0, g = 0, b = 0;


void setup()
{
  size(700, 700);
  background(0);
  stroke(0, 250, 250);
  strokeWeight(.5);
}

void draw()
{
  if (!terminar)
  {
    fundamental.dibujar();
    armonico1.dibujar();
    armonico2.dibujar();
    armonico3.dibujar();
    armonico4.dibujar();

    if (i >2) {

      stroke(0, 250, 250);

        line(

        x0+X1+X2+X3, 
        y0+Y2+Y3+Y4, 
        x0+x1+x2+x3, 
        y0+y2+y3+y4

        );

      stroke(150);

        line(

        x0+X1+X2, 
        y0+Y3+Y4, 
        x0+x1+x2, 
        y0+y3+y4

        );
    }

    X1 = x1;
    Y1 = y1;
    X2 = x2;
    Y2 = y2;
    X3 = x3;
    Y3 = y3;
    X4 = x4;
    Y4 = y4;

    t+=.0001;
    i++;
  }
}