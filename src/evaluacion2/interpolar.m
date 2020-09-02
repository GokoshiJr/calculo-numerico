function r = interpolar(L,y,x)
  
  clc;
  n1 = length(y);
  linea = ' --------------------------------------------';
  disp(linea);  
  printf(' Puntos Cargados\n\n');
  
  for i = [1 : n1]    
    fprintf(' (x%d, y%d) = (%4d, %4d)\n', (i-1), (i-1), x(i), y(i));    
  endfor  
  
  disp(linea);
  disp(' Tenemos');  
  disp('');
  
  for i = [1 : n1]
    
    fprintf(' F(X%d)L%d = ', (i - 1), (i - 1));
    fprintf('(%5d) [', y(i));    
    aux = n1;
    
    for j = [1 : n1]      
      fprintf('(%9.5f)X^%d', L(i,j), (aux - 1));      
      if(j ~= (n1))    
        fprintf(" + ");
      endif      
      aux--;      
    endfor 
    
    fprintf(']');    
    disp('');
    
  endfor
  
  fprintf('\n P(X)= ');  
  
  for i = [1 : n1]
    fprintf( ' F(X%d)L%d', (i - 1), (i - 1) );
    if(i ~= (n1))
      fprintf(" + ");
    endif
  endfor
  
  disp("");  
  result = y * L;
  n1 = length(y);
  fprintf('\n P(X)= ');  
  aux = n1;
  
  for i = [1 : n1]
    aux--;
    fprintf('(%1.0f)X^%d', result(i) ,aux);
    if(i ~= n1)
      fprintf(" + ");
    endif    
  endfor
  
  fprintf('\n\n');
  disp(linea); 
  num  = input(' Ingrese el numero a interpolar: ');  
  poli = 0;
  aux  = n1; 
  
  for i = [1 : n1]    
    aux--;
    poli = poli + (result(i)) * (num ** (aux));    
  endfor
  
  fprintf('\n Interpolarizacion para %d es: %d\n\n' ,num ,poli);
  r = result;
  esperar = input(" Presione Enter para continuar");
  clc;
  
endfunction
