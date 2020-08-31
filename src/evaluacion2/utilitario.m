  
salir = false, cargar = false;
clc;
do
  disp("Evaluacion 2 - Interpolacion de Lagrange\n");
  disp("1) Cargar coordenadas");
  disp("2) Interpolacion")
  disp("3) Salir");
  opc = input("Seleccione una opcion: ");
  disp("")
  
  switch (opc)
    
    case 1
      if (cargar == false);        
        cargarCoord();
        cargar = true;
      endif
    case 2      
      if(cargar == true);        
        interpolacion();
      else
        disp("Cargue las coordenadas primero");
      endif      
      
    case 3      
      disp("Fin del Programa");
      salir = true;
      
    otherwise
      disp("Ingrese una opcion valida\n");
  endswitch
  
until(salir == true);


