function r = cargarCoord()
  
  linea = ' --------------------------------------------';
# num = 5;
# coords.x = [-3, -2, 5, -1, 0];
# coords.y = [45, 10, -235, -1, 0];
  clc;
  
  disp(linea);
  disp(' 1) Cargar Coordenadas');
  disp(linea);
  
  do
    continuar = false;
    num = input(' Ingrese la cantidad de puntos (Minimo 3): ');
    coords.x = (0);
    coords.y = (0);
    
    if (num >= 3)
    
      for i = [1 : num]  
        fprintf('\n Coordenada x%d = ', (i-1)); 
        coords.x(i) = input('');
        fprintf(' Coordenada y%d = ', (i-1));
        coords.y(i) = input('');
      endfor
      
      disp(linea);
      printf(' Puntos Cargados\n\n');
      
      for i = [1 : num]  
        fprintf(' (x%d, y%d) = (%d, %d)\n', (i-1), (i-1), coords.x(i), coords.y(i));
      endfor  
      
      disp(linea);
      esperar = input(' Presione Enter para continuar');
      clc; 
      continuar = true;
      
      # return  
      r = coords;      
      
    else
      
      clc;
      disp('');
      disp('Por favor, ingrese 3 puntos o mas.');
      disp(linea);
      
    endif    
  
  until(continuar == true);
  
endfunction 
