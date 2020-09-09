linea  = ' -------------------------------------------';
clc;
salir = false;
do
  disp(linea);
  disp("  Evaluacion 3 - Metodo de Newton-Raphson");
  disp(linea);
  disp("  1) Cargar funcion");
  disp("  2) Iteraciones");
  disp("  3) Grafica");
  disp("  4) Salir");
  disp(linea);
  opc = input("  Seleccione una opcion: ");
  switch (opc)    
    case 1        
      disp('caso 1')
      newton = cargarEcuacion(); 
      newton
    case 2
      raphson(newton);
    case 3      
      disp('caso 3');      
    case 4  
      disp(linea);
      disp("  Fin del Programa");
      salir = true;      
    otherwise
      clc;
      disp('');
      disp("  Ingrese una opcion valida\n");      
  endswitch  
until(salir == true);
