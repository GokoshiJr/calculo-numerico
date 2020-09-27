function r = simpson(data)
  
  clc;
  linea = ' -------------------------------------------';   
  
  a = data.a;
  b = data.b;
  n = data.n;
  f = data.fun;  

  h = (b - a) / n;
  fun = inline(f);
  
  s1 = 0;
  s2 = 0;
  
  disp(linea);
  fprintf('%28s \n', 'Metodo Simpson');
  disp(linea);
  
  fprintf('   %s%1.4f \n', 'Variacion de x: ', h);
  fprintf('   %s \n', 'F(x) = x * ln(x)');
  disp(linea);
  fprintf('   x(0) = %d\n', a);
  
  for i = [1 : (n - 1)]
    x(i) = a + i * h;
    fprintf('   x(%d) = %d\n', i, x(i));
  endfor
  
  fprintf('   x(%d) = %d\n',n,b);
  disp(linea);
  
  for i = [1 : 2 : (n - 1)]
    s1 = s1 + fun(x(i));
  endfor
  
  for i = [2 : 2 : (n - 2)]
    s2 = s2 + fun(x(i));
  endfor
  
  if (n > 2 && mod(n, 2) == 0)
    fprintf('      [f(%1.2f) =    (%1.2f)* %s(%1.2f)] \n',a, a,'ln', a);    
    for i = [1 : n - 1]
      if (mod(i, 2) == 0)
        fprintf('    + [f(%1.2f) = 2 *(%1.2f)*%s(%1.2f)] \n', x(i), x(i),' ln', x(i));       
      else      
        fprintf('    + [f(%1.2f) = 4 *(%1.2f)*%s(%1.2f)] \n', x(i), x(i),' ln', x(i));
      endif
    endfor
    fprintf('    + [f(%1.2f) =    (%1.2f)* %s(%1.2f)] \n',b, b, 'ln', b);
  elseif (n <= 2)
    fprintf('     f(1.2f) = (%1.2f) * %s(%1.2f) \n', a, 'ln', a);
    fprintf('   +  4 * (%1.2f) * %s(%1.2f) \n', x(1), 'ln', x(1));
    fprintf('     f(1.2f) = (%1.2f) * %s(%1.2f) \n', b, 'ln', b);
  endif
  
  i = (h * (fun(a) + 4 * s1 + 2 * s2 + fun(b))) / 3;
  
  disp(linea);
  fprintf('   A = (%1.4f * (f(%d) + 4 * (%1.4f) + 2 * (%1.4f) + f(%d))) / 3 \n', h, a, s1, s2, b);
  fprintf('   A = (%1.4f * ([%d * ln(%d)] + 4 * (%1.4f) + 2 * (%1.4f) + [%d * ln(%d)])) / 3 \n', h, a, a, s1, s2, b, b);
  fprintf('   %s%1.4f\n', 'A = ', i);  
  disp(linea);
  
  esperar = input('   Presione Enter para continuar'); 
  clc;
  
endfunction # fin simpson()
