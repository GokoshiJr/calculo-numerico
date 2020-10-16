function euler(data)
  
  clc;
  linea = ' ------------------------------------------------'; 
  
  f  = inline(data.f);
  a  = data.a;
  b  = data.b;
  ya = data.ya;
  n  = data.n;
  
  h = (b - a) / n; # h = variacion de x
  t = zeros(1, n + 1);
  w = zeros(1, n + 1);
  
  t(1) = a; # t = x(n - 1)
  w(1) = ya; # w = y(n - 1)
  
  # y = y(n-1) + v(x) * f(x(n-1), y(n-1))
  for i = [1:n]
    w(i + 1) = w(i) + (h * feval(f, t(i), w(i)));
    t(i + 1) = a + (h * i);
  endfor
  
  disp(linea);
  fprintf('%28s \n', 'Metodo de Euler');
  disp(linea);
  
  fprintf('  %7s %4s \n', 'x', 'y');
  fprintf('  a -> %1.1f  %1.1f \n', a, ya);
  fprintf('  b -> %1.1f   ? \n', b);
  fprintf('  %s \n', 'Ecuacion: dx/dy = x * sqrt(y)');
  fprintf('  %s (%d - %d) / %d = %d\n', 'Variacion(x):', b, a, n, h);
  disp(linea);
  
  fprintf('  %s \n', 'Calculando las X para las iteraciones:');
  disp(linea);
  
  fprintf('  %s   %s \n', 'n', 'x(n) = a + n * variacion(x)');
  disp(linea);
  
  for i = [1:n+1]
    fprintf(' %2d   %d + (%d * %d) = %d \n', i - 1, a, i - 1, h, (t(i)));
  endfor
  
  disp(linea);
  fprintf('%3s %3s %39s \n', 'n', 'x', 'y = y(n-1) + v(x) * f(x(n-1),y(n-1))');
  disp(linea);
  fprintf('%3d %3d    y(%d) = %d (valor inicial)\n', 
  0, t(1), 0, w(1));
  
  for i = [2:n]
    fprintf('%3d   %-4d y(%d) = %1.2f + %1.2f * %1.2f = %1.2f \n', 
    i - 1, t(i), i - 1, w(i - 1),h, (feval(f, t(i - 1), w(i - 1))) , w(i));
  endfor
  
  fprintf('%3d %5d  y(%d) = %1.2f + %1.2f * %1.2f = %1.2f\n',
  n , t(n + 1), n, w(n), h, (feval(f, t(n), w(n))), w(n + 1));
  disp(linea);
  
  fprintf('%17s \n', 'f = x * sqrt(y)');
  disp(linea);
  fprintf('%6.2f * sqrt(%1.2f) = %1.2f\n', t(1), w(1) , (feval(f, t(1), w(1))));
  
  for i = [2:n]
    fprintf('%6.2f * sqrt(%1.2f) = %1.2f \n', t(i), w(i), (feval(f, t(i), w(i))));
  endfor
  
  disp(linea);
  fprintf("  %10s%.2f \n", "Resultado Final = ", w(length(w)))  ;
  disp(linea); 
  
  esperar = input('  Presione Enter para continuar');
  clc;
  
endfunction
