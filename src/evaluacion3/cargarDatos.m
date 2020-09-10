function r = cargarDatos(newton)
  
  linea  = ' -----------------------------------------';
  clc;
  disp(linea);
  fprintf('%28s \n','Cargar Datos');
  disp(linea); 
  fprintf('   Indique los siguientes datos \n');
  disp(linea);  
  fprintf('   Punto inicial x1: ');
  newton.x0 = input('');            
  fprintf('   Tolerancia (n de decimales): ');
  aux = input('');
  tol = 1*10**-aux;
  newton.tol = tol;
  disp(linea);
  esperar = input('   Presione Enter para continuar');
  clc;
  
  # return
  r = newton;
  
endfunction # fin cargarDatos()
