function r = cargarEcuacion()
  
  linea  = ' -----------------------------------------';
  clc;
  
  disp(linea);
  fprintf('%29s \n','Cargar Ecuacion');
  disp(linea);
  
  fprintf('   1) Ecuacion --> e^x = N / X \n   2) Otra ecuacion\n') ;
  disp(linea);
  fprintf('   Opcion: ');
  opc = input('');
  disp(linea);
  
  if (opc == 1) 
    
    fprintf('  Indique el valor de N: ');
    n = input('');
    fprintf('  Indique el valor del punto inicial x0: ');
    xi = input('');
    fprintf('  Indique la tolerancia: ');
    tol = input('');
    disp(linea);    
    fprintf('   Se ha cargado correctamente\n');
    disp(linea);
    esperar = input('   Presione Enter para continuar');
    
  elseif (opc == 2)
    fprintf('   Indique la ecuacion');
    esperar = input('   Presione Enter para continuar');
  else
    fprintf('   Ingrese una opcion valida por favor');
  endif
  
  
  
  
#  ecuacion.symbolic = strcat('(x*e^x)/', mat2str(n));
#  ecuacion.N = n;
#  ecuacion.xi = xi;
  
  # return
#  r = ecuacion;
endfunction
