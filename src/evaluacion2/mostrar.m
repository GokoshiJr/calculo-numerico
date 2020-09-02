
function mostrar(L, n, x, k)  
  
  limit = length(L); 
  numeros = [0];
  i = k - 1;
  fprintf(' Iteracion #%d\n\n', i);  
  fprintf(' L%d(X) = ', i)
  
  for j = [1 : limit]    
    if (k ~= j)
      numeros(k, j) = (j - 1);
      fprintf('(X-X%d)', numeros(k, j));              
    endif
  endfor
  
  fprintf(' / ')
  
  for j = [1 : limit]    
    if (k ~= j)           
      fprintf('(X%d-X%d)', i ,(j - 1));        
    endif    
  endfor
  
  disp("")  
  fprintf(' L%d(X) = ', i)
  
  for j = [1 : limit]
    if (k ~= j)      
      fprintf('(X-(%d))', x(j))             
    endif
  endfor
  
  fprintf(' / ')
  
  for j = [1 : limit]
    if (k ~= j)     
      fprintf('(%d-(%d))', x(k) ,x(j));        
    endif
  endfor
  
  fprintf('\n L%d(X) = ', i)  
  aux = limit;
  
  for j = [1 : limit]      
    fprintf('(%d)X^%d ', L(j), aux - 1);        
    aux--;  
    if(j ~= limit)    
      fprintf(" + ");
    endif  
  endfor

  fprintf('\n\n')
 
endfunction
