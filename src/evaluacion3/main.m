linea  = ' -------------------------------------------';
clc;
salir = false;
do
  disp(linea);
  disp("  Evaluacion 3 - Metodo de Newton-Raphson");
  disp(linea);
  disp("  1) Cargar Funcion");
  disp("  2) Cargar Datos");
  disp("  3) Iteraciones");
  disp("  4) Grafica");
  disp("  5) Salir");
  disp(linea);
  opc = input("  Seleccione una opcion: ");
  switch (opc)    
    case 1        
      disp('caso 1')
      newton = cargarEcuacion(); 
      newton
    case 2
      newton = cargarDatos(newton);
      newton
    case 3      
      newton = raphson(newton); 
      newton
    case 4      
      graficar(newton);     
    case 5  
      disp(linea);
      disp("  Fin del Programa");
      salir = true;      
    otherwise
      clc;
      disp('');
      disp("  Ingrese una opcion valida\n");      
  endswitch  
until(salir == true);
