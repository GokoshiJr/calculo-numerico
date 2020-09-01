
function mostrar(L, n, x, k)
  
  limit = length(L); 
  numeros = [0];
  
  fprintf('Iteracion #%d\n\n', k);
    
  fprintf('L%d(X) = ', k-1)
  for j = [1:limit]
    if (k ~= j)
      numeros(k,j) = (j-1);
      fprintf('(X-X%d)',numeros(k,j))
      #fprintf('(X%d - X%d)',(i-1),j-1 );        
    endif
  endfor
  
  fprintf(' / ')
  
  for j = [1:limit]
    if (k ~= j)
      numeros(k,j) = (j-1);
      #fprintf('(X-X%d)',numeros(i,j))
      fprintf('(X%d-X%d)', (k-1), j-1 );        
    endif
  endfor
  
  disp("")
  
  fprintf('L%d(X) = ', k-1)
  for j = [1:limit]
    if (k ~= j)
      numeros(k,j) = (j-1);
      fprintf('(X-(%d))', x(j))
      #fprintf('(X%d - X%d)',(i-1),j-1 );        
    endif
  endfor
  
  fprintf(' / ')
  
  for j = [1:limit]
    if (k ~= j)
      numeros(k,j) = (j-1);
      #fprintf('(X-X%d)',numeros(i,j))
      fprintf('(%d-(%d))', x(k), x(j));        
    endif
  endfor
  
  L(1)
  disp("");
  aux = limit;
  for j = [1:limit]
      #fprintf('(X-X%d)',numeros(i,j))
      fprintf(' (%d)X^%d ', L(j),aux-1);        
      aux--;  
      if(j ~= limit)    
        fprintf(" + ");
      endif  
  endfor
  
  
##    fprintf('entre (X%d-X%d)',numeros(i,j))
##  esperar = input("\nPresione Enter para continuar");
##  clc;
  fprintf('\n\n')
  
  
  numeros;
endfunction
