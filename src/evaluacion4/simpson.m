function r = simpson(data)
  
  clc;
  linea = ' -------------------------------------------';   
  
  a = data.a;
  b = data.b;
  n = data.n;
  f = data.fun;  

  h   = (b - a) / n;
  fun = inline(f);
  
  s1 = 0;
  s2 = 0;
  
  disp(linea);
  fprintf('    %28s \n', 'Metodo Simpson Compuesto 1/3');
  disp(linea);
  fprintf('   %s \n', 'F(x) = x * ln(x)');
  fprintf('   a = %d, b = %d, subdivisiones = %d \n', a, b, n);
  fprintf('   %s \n', 'Variacion de x: (b - a) / n');
  fprintf('   %s (%d - %d) / %d \n', '=', b, a, n);
  fprintf('   %s%1.4f \n', '= ', h);
  
  disp(linea);
  fprintf('   %s \n', 'Valores de los indices de x:');
  fprintf('   Indice inferior x(0) = %d\n', a);
  
  for i = [1 : (n - 1)]
    
    x(i) = a + i * h;
    fprintf('   x(%d) = %1.2f', i, x(i));
    
    if(mod(i, 2) == 0)
      fprintf('\n');
    elseif (i == (n - 1))
      fprintf('\n');
    endif
    
  endfor
  
  fprintf('   Indice superior x(%d) = %d\n', n, b);
  disp(linea);
  
  for i = [1 : 2 : (n - 1)]
    s1 = s1 + fun(x(i));
  endfor
  
  for i = [2 : 2 : (n - 2)]
    s2 = s2 + fun(x(i));
  endfor
  
  if (n > 2 && mod(n, 2) == 0)
    fprintf('   %s\n', 'Formula:');
    fprintf('   %1.2f * \n      (%d * [f(%d)] \n', h, a, a);    
    for i = [1 : n - 1]
      if (mod(i, 2) == 0)
        fprintf('    + [2 * f(%1.2f)] \n', x(i));       
      else      
        fprintf('    + [4 * f(%1.2f)] \n', x(i));
      endif
    endfor
    fprintf('    + [1 * f(%d)) / 3 \n', b);
  elseif (n == 2)
    fprintf('   %s\n', 'Formula:');
    fprintf('   (%1.2f * \n      (1 * f(%d) \n', h, a);
    fprintf('    +  4 * f(%1.2f) \n', x(1));
    fprintf('    +  1 * f(%1.2f))) / 3 \n', b);
  endif
  disp(linea);
  
  if (n > 2 && mod(n, 2) == 0)
    fprintf('(%1.2f * ([1 * (%1.2f)* %s(%1.2f)] \n', h, a, 'ln', a);    
    for i = [1 : n - 1]
      if (mod(i, 2) == 0)
        fprintf('       + [2 * (%1.2f)*%s(%1.2f)] \n', x(i), ' ln', x(i));       
      else      
        fprintf('       + [4 * (%1.2f)*%s(%1.2f)] \n', x(i), ' ln', x(i));
      endif
    endfor
    fprintf('       + [1 * (%1.2f)* %s(%1.2f)])) / 3 \n', b, 'ln', b);
  elseif (n == 2)
    fprintf('   (%1.2f * (1 * (%d) * %s(%d) \n', h, a, 'ln', a);
    fprintf('    +  4 * (%1.2f) * %s(%1.2f) \n', x(1), 'ln', x(1));
    fprintf('    +  1 * (%1.2f) * %s(%1.2f)) / 3 \n', b,'ln', b);
  endif
  
  i = (h * (fun(a) + 4 * s1 + 2 * s2 + fun(b))) / 3;
  
  disp(linea);
  fprintf('   A = (%1.4f * (f(%d) + 4 * (sumatoria f(xi impar)) + 2 * (sumatoria f(xi par)) + f(%d))) / 3 \n', h, a, b);
  fprintf('   A = (%1.4f * (f(%d) + 4 * (%1.4f) + 2 * (%1.4f) + f(%d))) / 3 \n', h, a, s1, s2, b);
  fprintf('   A = (%1.4f * ([%d * ln(%d)] + 4 * (%1.4f) + 2 * (%1.4f) + [%d * ln(%d)])) / 3 \n', h, a, a, s1, s2, b, b);
  fprintf('   %s%1.4f\n', 'A = ', i);  
  disp(linea);
  
  esperar = input('   Presione Enter para continuar'); 
  clc;
  
endfunction # fin simpson()
