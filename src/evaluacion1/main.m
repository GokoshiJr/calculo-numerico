# Evaluacion 1 - Metodo de factorizacion Cholesky

clc;

#{

disp("Indique los valores de la matriz");

for i = [1:3]
  
  for j = [1:3]
    fprintf("M[%d][%d]: ",i,j);
    m(i,j) = input(''); 
  endfor
  
endfor

#}

#{

disp("Indique los valores de la matriz igualdad");

for i = [1:3]
  
  fprintf("E[%d]: ",i);
  aux(i) = input('');  
  
endfor

e = [aux(1); aux(2); aux(3)];

#}

a = [16, -12, 8; -12, 18, -6; 8, -6, 8];
b = [76; -66; 46];

# c = a \ b;

l = [0,0,0; 0,0,0; 0,0,0];

l(1,1) = sqrt(a(1,1));
l(2,1) = a(2,1) / l(1,1);
l(3,1) = a(3,1) / l(1,1);
l(2,2) = sqrt(a(2,2)-(l(2,1)^2));
l(3,2) = (a(3,2) - (l(3,1)*l(2,1))) / l(2,2);
l(3,3) = sqrt(a(3,3) - (l(3,1)^2) - (l(3,2)^2));

y = l \ b;

lTras = l'

x = lTras \ y


