function r = cargarEcuacion()
  
  linea  = ' -----------------------------------------';  
  
  salir = false;
  salir2 = false;
  clc;
  
  do
    try 
      opc = mostrarTitulo(linea);      
      if (opc == 1)        
        do
          fprintf('   Indique el valor de N (N > 0): ');
          n = input('');
          if (n > 0)
            fprintf('   Indique el valor del punto inicial x0: ');
            newton.x0 = input('');            
            fprintf('   Indique la tolerancia: ');
            newton.tol = input('');            
            disp(linea);
            fprintf('   %s%d\n','Funcion cargada f(x) = x * e^x - ', n)
            disp(linea);
            newton.fun = strcat('x * e^x -', mat2str(n));
            esperar = input('   Presione Enter para continuar');
            salir = true;
            salir2 = true;
          else
            disp(linea);
            fprintf('\n   N debe ser mayor a 0   \n\n');
            disp(linea);
          endif
        until (salir2 == true)        
      elseif (opc == 2)
        fprintf('   Introduzca la funcion f(x) = ');
        aux = input('','s');
        newton.fun = aux;
        fprintf('   Indique el valor del punto inicial x0: ');
        newton.x0 = input('');            
        fprintf('   Indique la tolerancia: ');
        newton.tol = input('');
        esperar = input('   Presione Enter para continuar');
        salir = true;        
      else        
        clc;
        disp(linea);
        fprintf('\n   Ingrese una opcion valida por favor  \n\n');        
      endif      
    catch      
      clc;
      disp(linea);
      fprintf('\n   %26s  \n\n','Caracter invalido');      
    end_try_catch
  until (salir == true);
  clc;
  r = newton; # return  
endfunction

function r = mostrarTitulo(linea)  
  disp(linea);
  fprintf('%28s \n','Cargar Ecuacion');
  disp(linea);   
  fprintf('   1) e^x = N / x \n   2) Otra ecuacion\n') ;
  disp(linea);
  fprintf('   Opcion: ');
  opc = input('');
  disp(linea);
  r = opc; # return
end
