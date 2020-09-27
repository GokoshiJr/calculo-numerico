function r = cargarDatos()
  
  clc;
  linea = ' -------------------------------------------';
  salir = false;
  salir2 = false;
  
  do
    try 
      do
        disp(linea);
        fprintf('%28s \n','Cargar Datos');
        disp(linea);
        fprintf('   %s\n','Funcion cargada f(x) = x * ln(x)'); 
        fprintf('   %s\n','Limite inferior a = 1');
        fprintf('   %s\n','Limite superior b = 2');
        disp(linea); 
        data.a = 1;   
        data.b = 2;
        data.fun = 'x * log(x)';        
        data.n = input('   Numero de subdivisiones (n): ');
        if ((data.n > 0) && (mod(data.n, 2) == 0)) 
          disp(linea); 
          esperar = input('   Presione Enter para continuar'); 
          salir  = true;  
          salir2 = true;
        else
          clc;
          disp(linea);
          fprintf('\n   n debe ser > 0 y par   \n\n');          
        endif
      until (salir2 == true);
    catch      
      clc;
      disp(linea);
      fprintf('\n   %26s  \n\n','Caracter invalido');
    end_try_catch
  until (salir == true);
  
  clc;
  r = data; # return
  
endfunction # fin cargarDatos()
