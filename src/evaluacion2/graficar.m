
function graficar(L)
  
  
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

  hola = mat2str(L)
  f = "";
  n = length(L)
  for i = [1:length(L)]
    n--;
    if (i != length(L))
      f = strcat(f , strcat('(',mat2str(L(i)),strcat('*x.^',mat2str(n),')+')))
    else
      f = strcat(f , strcat('(',mat2str(L(i)),strcat('*x.^',mat2str(n),')')))
    endif
  endfor
  
##  f = '3*x.^4 + 2*x -1';
  symvar x;
  x = -5:0.01:5;
  y = eval(f);
  plot(x,y);
  grid on;
  hold on;
  alpha = [-3, -2, 5, -1, 0];
  beta = [45, 10, -235, -1, 0];
  plot(alpha,beta,'*');
  plot(x, zeros(size(x)), 'r');
  plot(zeros(size(x)), y , 'r');
  
endfunction
