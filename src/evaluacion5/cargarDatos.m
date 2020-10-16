function r = cargarDatos()  
  
  clc;
  linea  = ' -------------------------------------------';
  salir  = false;
  
  do
    try      
      disp(linea);
      fprintf('%28s \n', 'Cargar Datos');
      disp(linea);
      fprintf('   %s\n', 'Ecuacion: dy/dx = x * sqrt(y)');
      fprintf('   %s\n', 'Punto Inicial: y(1) = 4');
      fprintf('   %s\n', 'Es decir: x = 1, y = 4');
      disp(linea); 
      data.a  = 1;
      data.ya = 4;
      data.f  = 'x * sqrt(y)';   
      fprintf('   %s\n','Solucion aproximada de (y) en:');
      data.b  = input('   x = ');
      fprintf('   %s\n', 'Numero de subdivisiones:');
      data.n  = input('   n = ');        
      disp(linea);
      fprintf('   Los datos son correctos? \n   1) Si \n   2) No \n');
      disp(linea);
      
      opc = input('   Opc = ');
      clc;
      
      if (opc == 1)
        salir   = true;
      endif      
      
    catch      
      clc;
      disp(linea);
      fprintf('\n   %26s  \n\n','Caracter invalido');
    end_try_catch
  until (salir == true);
  
  clc;
  r = data; # return
  
endfunction # fin cargarDatos()
