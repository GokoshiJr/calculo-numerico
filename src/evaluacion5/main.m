linea  = ' ------------------------------------------------';
clc;
salir  = false;
cargar = false;

do
#  try
    disp(linea);
    disp("  Evaluacion 5 - Metodo de Euler");
    disp(linea);
    disp("  1) Cargar Datos");
    disp("  2) Resultado");    
    disp("  3) Salir");
    disp(linea);
    opc = input("  Seleccione una opcion: ");    
    switch (opc)
      case 1   
        data = cargarDatos()
      case 2
        # f = inline("y-x^2+1")
        # euler(f, 0, 2, 0.5, 10)
        # f = inline("x * sqrt(y)")
        euler(data);
      case 3
        salir = true;
      otherwise
        clc;
        disp('');
        disp("  Ingrese una opcion valida\n");
    endswitch    
#  catch 
#    clc;
#    disp(linea);
#    disp("\n  Error(Caracter Invalido)\n");
#  end_try_catch
  
until(salir == true);