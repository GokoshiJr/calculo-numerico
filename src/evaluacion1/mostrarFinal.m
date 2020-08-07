function mostrarFinal(m,e,r,nombre)
  
  fprintf("%6s1 %4s2 %4s3\n",nombre,nombre,nombre);
  for i = [1:3]
  printf(" |")
    for j = [1:3]
      fprintf(" %4d ",m(i,j));
    endfor
  fprintf("| %4d |  %s%d = %3d\n",e(i),nombre,i,r(i));
endfor

endfunction