
linea  = ' -------------------------------------------';
clc;
salir  = false;
cargar = false;

do
  try
    disp(linea);
    disp("  Evaluacion 4 - Metodo de Simpson");
    disp(linea);
    disp("  1) Cargar Datos");
    disp("  2) Resultado");    
    disp("  3) Salir");
    disp(linea);
    opc = input("  Seleccione una opcion: ");    
    switch (opc)
      case 1        
        data = cargarDatos(); 
        cargar = true;
      case 2
        if(cargar)
          simpson(data);
        else
          clc;
          disp(linea);
          disp("\n  Cargue los datos primero\n");
        endif
      case 3  
        disp(linea);
        disp("  Fin del Programa..."); 
        salir = true;
      otherwise
        clc;
        disp('');
        disp("  Ingrese una opcion valida\n");
    endswitch    
  catch 
    clc;
    disp(linea);
    disp("\n  Error(Caracter Invalido)\n");
  end_try_catch
  
until(salir == true);
