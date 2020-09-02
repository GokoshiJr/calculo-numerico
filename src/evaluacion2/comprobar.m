# Grafica
  
##  x = -10:0.01:10;
##  y = -2*x.^3 + 3*x;
##  z = zeros(size(x));
##  plot(x, y)
##  grid on;
##  hold on;
##  plot(x, z, 'r');
  
##  f = '3*x.^4 + 2*x -1';
##  symvar x;
##  x = -3:0.02:7;
##  y = eval(f);
##  plot(x,y);
##  grid on;
##  hold on;
##  plot(x, zeros(size(x)), 'r');
##  plot(zeros(size(x)), y , 'r');