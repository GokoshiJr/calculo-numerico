function raphson(fun, x0, tol)
  
  #clc;
  disp('');
  
  pkg load symbolic;
  syms x;  
  
  f = inline(fun)
  
  aux = diff(fun, x);
  aux2 = char(aux);
  
  df = inline(aux2)
  fprintf('%10s %12s %16s \n','iteracion','xi','error');
  
  n = 1;
  error = 100;
  # fprintf('\t %2d \t %3.6f \t %3.6f\n', n, x0, error);
  
  while (error >= tol)    
    
    a = x0 - f(x0) / df(x0);    
    error = abs(a - x0);
    
    fprintf('\t %2d \t %3.6f \t %3.6f\n', n, a, error);
    
    x0 = a;
    n = n + 1;
    
  endwhile
  
endfunction
