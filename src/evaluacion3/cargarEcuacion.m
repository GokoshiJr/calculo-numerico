function r = cargarEcuacion()
  
  linea  = ' -----------------------------------------';
  clc;
  
  disp(linea);
  fprintf('%29s \n','Cargar Ecuacion');
  disp(linea);
  
  fprintf('   1) Ecuacion --> e^x = N / x \n   2) Otra ecuacion\n') ;
  disp(linea);
  fprintf('   Opcion: ');
  opc = input('');
  disp(linea);
  
  if (opc == 1) 
    
    fprintf('  Indique el valor de N (N > 0): ');
    n = input('');
    fprintf('  Indique el valor del punto inicial x0: ');
    newton.xi = input('');
    fprintf('  Indique la tolerancia: ');
    newton.tol = input('');
    
    disp(linea);
    fprintf('  %s%d\n','Ecuacion Cargada: y = (x * e^x) / ',n )
    disp(linea);    
    
    newton.ecu = strcat('(x*e^x)/',mat2str(n));
    
    esperar = input('   Presione Enter para continuar');
    
  elseif (opc == 2)
    fprintf('   Indique la ecuacion');
    esperar = input('   Presione Enter para continuar');
  else
    fprintf('   Ingrese una opcion valida por favor');
  endif
  
  clc;
  # return
  r = newton;
  
endfunction
