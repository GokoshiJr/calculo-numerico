  
salir  = false; 
cargar = false;
iterar = false;
inter  = false;
linea  = ' -------------------------------------------';
clc;

do
  disp(linea);
  disp("  Evaluacion 2 - Interpolacion de Lagrange");
  disp(linea);
  disp("  1) Cargar coordenadas");
  disp("  2) Iteraciones");
  disp("  3) Interpolar Punto");
  disp("  4) Grafica");
  disp("  5) Salir");
  disp(linea);
  opc = input("  Seleccione una opcion: ");
  
  
  switch (opc)
    
    case 1        
      coords = cargarCoord();        
      cargar = true;
      
    case 2       
      if(cargar == true);        
        poli   = iteraciones(coords.x, coords.y); 
        iterar = true;       
      else
        clc;
        disp("")
        disp("  Cargue las coordenadas primero");
        disp("")
      endif 
      
    case 3      
      if(cargar == true && iterar == true);                
        ecuacion = interpolar(poli, coords.y, coords.x);
        inter    = true;        
      else
        clc;
        disp("")
        disp("  Cargue las coordenadas y realice las iteraciones");
        disp("")
      endif 
      
    case 4
      if(cargar == true && iterar == true && inter == true);
        graficar(ecuacion, coords.x, coords.y);        
      else
        clc;
        disp("")
        disp("  Primero cargue las coordenadas, realice las iteraciones y obtenga el polinomio de interpolacion");
        disp("")
      endif
      
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
