function result = simetria(A)  
   
  if (A == A')
    printf 'Es simetrica la matriz \n';
    result = true;
  else
    printf 'No es simetrica la matriz \n';
    result = false;
  endif  
  
endfunction
