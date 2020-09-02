
function r = interpolacion(x, y)
   
  n1 = length(x);
  n = (n1 - 1);
  L = zeros(n1, n1);
  clc;
  fprintf('\nFormula para calcular Li(X): (X - Xj) / (Xi - Xj)\n')
  fprintf('Teniendo en cuenta que i != j, para seleccionar los valores de j\n\n')
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
  
  esperar = input('Presione enter para continuar');
  clc;
  
  
  disp('Tenemos');  
  disp('');
  
  for i = [1 : n1]
    
    fprintf( 'F(X%d)L%d = ', (i - 1), (i - 1) );
    fprintf( '(%5d) [', y(i) );
    
    aux = n1;
    for j = [1 : n1]
      
      fprintf( '(%9.5f)X^%d', L(i,j), (aux - 1) );
      if(j ~= (n1))    
        fprintf(" + ");
      endif
      aux--; 
      
    endfor
    
    fprintf(']');    
    disp('');    
  endfor
  
  fprintf('\nP(X)= ');
  
  
  for i = [1 : n1]    
    fprintf( 'F(X%d)L%d', (i - 1), (i - 1) );    
    if(i ~= (n1))    
      fprintf(" + ");
    endif
  endfor
  disp("");
  
  result = y * L;
  
  
  n1 = 5;
  fprintf('\nP(X)= ');
  
  aux = n1;
  for i = [1 : n1]
    aux--;
    fprintf('(%1.0f)X^%d', result(i), aux);
    if(i ~= n1)    
      fprintf(" + ");
    endif
    
  endfor
  
  disp('');
  num = input('Ingrese el numero a interpolar:');
  
  poli = 0;
  aux = n1;
  for i = [1 : n1]
    aux--;
    poli = poli + (result(i)) * (num ** (aux));
  endfor
  
  fprintf('Interpolacion para %d es: %d\n\n',num,poli);
  r = result;
  esperar = input("Presione Enter para continuar");
  clc;
  
endfunction

