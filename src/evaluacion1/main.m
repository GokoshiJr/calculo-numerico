# Evaluacion 1 - Metodo de factorizacion Cholesky 3x3
# m -> matriz, e -> matriz igualdad

clc;
printf("Metodo de Factorizacion Cholesky\n\n");

printf("Indique los valores de la matriz\n\n");
m = [16, -12, 8; -12, 18, -6; 8, -6, 8]
#{
for i = [1:3]
  
  for j = [1:3]
    fprintf("M[%d][%d]: ",i,j);
    m(i,j) = input(''); 
  endfor
  
endfor
printf("\nMatriz, ")
m

printf("\nIndique los valores de la matriz igualdad\n\n");

for i = [1:3]
  
  fprintf("E[%d]: ",i);
  aux(i) = input('');  
  
endfor
#}
printf("\nMatriz igualdad, ")
# e = [aux(1); aux(2); aux(3)]
e = [76; -66; 46]

input('presione enter para continuar');
clc;
  
if(simetria(m) && defPositiva(m))

  disp("Se puede realizar el metodo cholesky\n");
  r = cholesky(m,e);
  printf("Finalmente su resultado es: \n\n");
  mostrarFinal(m,e,r,"x");  
  
else
  disp("No puede realizar el metodo cholesky");
endif
