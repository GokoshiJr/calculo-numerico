linea  = ' -------------------------------------------';
clc;
salir = false;

do
  disp(linea);
  disp("  Evaluacion 3 - Metodo de Newton-Raphson");
  disp(linea);
  disp("  1) Cargar ecuacion");
  disp("  2) Iteraciones");
  disp("  3) Interpolar Punto");
  disp("  4) Grafica");
  disp("  5) Salir");
  disp(linea);
  opc = input("  Seleccione una opcion: ");  
  
  switch (opc)
    
    case 1        
      disp('caso 1')
      newton = cargarEcuacion();      
    case 2       
      disp('caso 2')
      iteraciones(newton);
    case 3      
      disp('caso 3')
      
    case 4
      disp('caso 4')
      
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
