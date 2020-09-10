function r = raphson(newton)
  
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
  
  f    = inline(fun);  
  aux  = diff(fun, x);
  aux2 = char(aux);  
  df   = inline(aux2);  
  
  n = 1;
  error = 1;  
  
  fprintf('   %s \n', 'Datos Cargados');
  disp(linea); 
  fprintf('   Tolerancia = %1.6f \n', tol);
  fprintf('   Punto Inicial: x1 = %d \n', x0);  
  fprintf('   %s \n', 'Formula: x(n+1) = x(n) - f(xn) / df(xn)');
  fprintf('   f(x)  = %s \n   df(x) = %s \n', fun, aux2);
  disp(linea);
  fprintf('\n   %s \n', 'Punto de Inicio');
  fprintf('   x%d = %d \n\n', n, x0);
  
  while (error >= tol)    
    
    a = x0 - f(x0) / df(x0);    
    error = abs(a - x0);
    
    fprintf('   %s #%d \n', 'Iteracion', n);
    fprintf('   x%d = x%d - f(x%d) / df(x%d) \n', (n + 1), n, n, n);
    fprintf('   x%d = %.6f - %.6f / %.6f \n', (n + 1), x0, f(x0), df(x0));
    fprintf('   x%d = %1.6f\n', (n + 1), a);
    fprintf('   error = %1.6f\n\n', error);  
    
    x0 = a;
    n = n + 1;  
    
  endwhile
  
  fprintf('   Total de Iteraciones: %d\n', (n - 1));
  fprintf('   Solucion: %d\n', x0);
  disp(linea);
  esperar = input('   Presione Enter para continuar');
  clc;
  
  newton.solucion = x0;
  r = newton; # return
  
endfunction
