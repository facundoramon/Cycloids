class fasor
{
  int amplitud;
  float vel_ang;
  int orden;
  

  fasor(int c_amplitud, float c_frecuencia, int c_orden)
  {
    amplitud = c_amplitud;
    vel_ang = c_frecuencia*2*PI;
    orden = c_orden;
  }

  void dibujar()
  {
    
    switch (orden)
    {
    case 0:
      x0=sizex/2+amplitud*cos(vel_ang*t);
      y0=sizey/2+amplitud*sin(vel_ang*t);

      if(vel_ang*t> 2*PI)
      {
       r--; g--;
       //if(vel_ang*t> 2*PI)
      //{
        terminar = true;
        println(terminar);
      //}
      }
      else
      {
        r++; g++;
      }
      
      //stroke(250);
      //ine(sizex/2, sizey/2, x0, y0);
      break;
      
    case 1:
      x1=amplitud*cos(vel_ang*t);
      y1=amplitud*sin(vel_ang*t);
      //stroke(200);
      //line(x0, y0, x1, y1);
      break;
      
    case 2:
      x2=amplitud*cos(vel_ang*t);
      y2=amplitud*sin(vel_ang*t);
      //stroke(150);
      //line(x1, y1, x2, y2);
      break;
      
      case 3:
      x3=amplitud*cos(vel_ang*t);
      y3=amplitud*sin(vel_ang*t);
      
      case 4:
      x4=amplitud*cos(vel_ang*t);
      y4=amplitud*sin(vel_ang*t);
      //stroke(100);
      //line(x2, y2, x3, y3);
     
      break;
    }
  }
}