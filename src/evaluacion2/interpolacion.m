
function r = interpolacion(x,y)
  n1 = length(x);
  n = n1-1;
  L = zeros(n1,n1);
  for k = 1:n + 1
    V = 1;
    for j = 1:n + 1
        if k~=j;
            V = conv(V,poly(x(j)))/(x(k)-x(j));            
        endif  
    endfor
    V; # mostrar()
    # mostrar(V,n)
    L(k,:) = V;
    mostrar(V,n,x,k);
  endfor
 # mostrar(V,n,x)
  clc;
  L
  
  
  disp('Tenemos');
  
 
  
  disp('');
  for i = [1:5]
    
    fprintf('F(X%d)L%d = ',i-1,i-1);
    fprintf('(%5d) [',y(i))
    for j = [1:5]
      
      #fprintf('(X-X%d)',numeros(i,j))
      fprintf('(%9.5f)X^%d', L(i,j),n1-1);        
       
      if(j ~= n+1)    
        fprintf(" + ");
      endif  
      n1--; 
    endfor
    fprintf(']');
    n1=5;
    disp("");
  endfor
  
  fprintf('\nP(X)= ');
  for i = [1:5];
    fprintf('F(X%d)L%d',i-1,i-1);
    if(i ~= n+1)    
      fprintf(" + ");
    endif  
    n1--;     
  endfor
  disp("");
  
  result = y*L;
  
  
  n1 = 5;
  fprintf('\nP(X)= ');
  for i = [1:5]
    fprintf('(%1.0f)X^%d',result(i),n1-1);
    if(i ~= n+1)    
      fprintf(" + ");
    endif
    n1--;
  endfor
  disp('');
  num = input('Ingrese el numero a interpolar:');
  n1 = 5;
  poli = 0;
  for i = [1:5]
    n1--;
    poli = poli + (result(i))*(num**(n1));
    # fprintf('%d ',result(i));
    # disp(6-i);
    
  endfor
  fprintf('Interpolacion para %d es: %d\n\n',num,poli);
  r = result;
  esperar = input("Presione Enter para continuar");
  clc;
endfunction

