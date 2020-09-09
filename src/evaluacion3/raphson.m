function raphson(newton)
  
  linea  = ' -----------------------------------------';
  clc;
  
  fun = newton.fun;
  x0  = newton.x0;
  tol = newton.tol;
  
  disp(linea);
  fprintf('%25s \n','Iteraciones');
  disp(linea);
  
  pkg load symbolic;
  syms x;  
  
  f = inline(fun);  
  aux = diff(fun, x);
  aux2 = char(aux);  
  df = inline(aux2);  
  
  n = 1;
  error = 1;  
  
  fprintf('   %s \n   tolerancia = %1.6f \n', 'Datos:', tol);
  fprintf('   f(x) = %s \n   df(x) = %s \n', fun, aux2)
  fprintf('   x%d = %d \n\n', n, x0);
  
  while (error >= tol)    
    
    a = x0 - f(x0) / df(x0);    
    error = abs(a - x0);
    
    fprintf('\t x%d = x%d - f(x%d) / df(x%d) \n', (n + 1), n, n, n);
    fprintf('\t x%d = %1.6f\n', (n + 1), a);
    fprintf('\t error = %1.6f\n\n', error);
    

    #fprintf('\t %2d \t %3.6f \t %3.6f\n', n, a, error); bien
    
    
    
    
    x0 = a;
    n = n + 1;
    
  endwhile
  disp(linea);
  esperar = input('   Presione Enter para continuar');
  clc;
endfunction
