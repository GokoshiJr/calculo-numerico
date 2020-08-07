function r = defPositiva(m)
  
  # m de matriz
  subDet1 = det(m(1,1)) ;
  subDet2 = det(m(1:2,1:2));
  subDet3 = det(m);
    
  if((subDet1 > 0) && (subDet2 > 0) && (subDet3 > 0))
    r = true;
  else
    r = false;
  endif 
  
endfunction
