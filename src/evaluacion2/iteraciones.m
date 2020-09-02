
function r = iteraciones(x, y)
  
  n1 = length(x);
  n  = (n1 - 1);
  L  = zeros(n1, n1);
  clc;
  fprintf('\n Formula para calcular Li(X): (X - Xj) / (Xi - Xj)\n')
  fprintf(' Teniendo en cuenta que i != j, para seleccionar los valores de j\n\n')
  
  for i = [1 : n1]    
    V = 1;    
    for j = [1 : n1]      
      if (i ~= j);
        V = conv( V, poly(x(j)) ) / ( x(i) - x(j) );
      endif
    endfor   
    
    L(i,:) = V;
    mostrar(V, n, x, i);
    
  endfor
  
  esperar = input(' Presione enter para continuar');
  clc;
  
# return
  r = L;
  
endfunction
