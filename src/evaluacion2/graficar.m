function graficar(L, alpha, beta)
  
  clc;
  f = "";
  n = length(L);
  aux = n;
  
  for i = [1 : n]    
    aux--;
    if (i != n)
      f = strcat(f , strcat('(', mat2str(L(i)), strcat('*x.^', mat2str(aux), ')+')));
    else
      f = strcat(f , strcat('(', mat2str(L(i)), strcat('*x.^', mat2str(aux), ')')));
    endif    
  endfor  
  
  symvar x;
  x = -5:0.01:5;
  y = eval(f);
  plot(x, y);
  grid on;
  hold on;   
  plot(alpha, beta, '*');
  plot(x, zeros(size(x)), 'r');
  plot(zeros(size(x)), y , 'r');  
  clc;
  
endfunction
