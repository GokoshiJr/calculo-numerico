function iteraciones(newton)
  
  newton
  symvar x
  f = inline(newton.ecu)
  dfun = diff(newton.ecu,x)
  df = inline(dfuncion)
  
  
endfunction
