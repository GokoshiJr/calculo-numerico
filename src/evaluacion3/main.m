
linea  = ' -------------------------------------------';
clc;
salir = false;
cgFun = false;
cgDatos = false;
cgIteracion = false;

do
  try      
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
        newton = cargarFuncion();
        cgFun = true;  
      case 2
        if(cgFun == true)
          newton = cargarDatos(newton); 
          cgDatos = true;
        else
          clc;
          disp(linea);
          disp("\n  Cargue la funcion primero\n");
        endif  
      case 3  
        if((cgFun == true) && (cgDatos == true))
          newton = raphson(newton);
          cgIteracion = true;
        else
          clc;
          disp(linea);
          disp("\n  Cargue la funcion primero y los datos\n");
        endif
      case 4   
        if((cgFun == true) && (cgDatos == true) && (cgIteracion == true))
          graficar(newton);
        else
          clc;
          disp(linea);
          disp("\n  Cargue la funcion, datos e iteraciones\n");
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
    
  catch 
    clc;
    disp(linea);
    disp("\n  Error(Caracter Invalido)\n");
  end_try_catch
  
until(salir == true);
