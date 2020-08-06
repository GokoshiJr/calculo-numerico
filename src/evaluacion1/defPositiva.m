function r = defPositiva(m)
  
  # m de matriz, lluvia de sarrus 3x3 
  # sarrusDer, diagonal derecha
  # sarrusIzq, diagonal izquierda   
  
  sarrusDer = (m(1,1) * m(2,2) * m(3,3)) + (m(2,1) * m(3,2) * m(1,3)) + (m(3,1) * m(1,2) * m(2,3));              
  sarrusIzq = (m(1,3) * m(2,2) * m(3,1)) + (m(2,3) * m(3,2) * m(1,1)) + (m(3,3) * m(1,2) * m(2,1));
  
  subDet1 = m(1,1);
  subDet2 =(m(1,1) * m(2,2)) - (m(1,2) * m(2,1));
  subDet3 =  sarrusDer - sarrusIzq;
  
  if((subDet1 > 0) && (subDet2 > 0) && (subDet3 > 0))
    r = true;
  else
    r = false;
  endif
 
endfunction
