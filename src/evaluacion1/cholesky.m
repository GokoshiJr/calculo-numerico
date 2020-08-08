function r = cholesky(m,e) 
  
  # ---------------- Paso 1 ----------------
  
  l = [0,0,0; 0,0,0; 0,0,0];
  printf("1. Procedemos a calcular la matriz L y L'\nmediante las formulas, tenemos: \n\n")
  l(1,1) = sqrt(m(1,1));
  l(2,1) = m(2,1) / l(1,1);
  l(3,1) = m(3,1) / l(1,1);
  l(2,2) = sqrt(m(2,2) - (l(2,1)^2));
  l(3,2) = (m(3,2) - (l(3,1)*l(2,1))) / l(2,2);
  l(3,3) = sqrt(m(3,3) - (l(3,1)^2) - (l(3,2)^2));
  
  printf("Triangular inferior, ");
  l
  printf("Triangular superior, ");
  lTras = l'  
  input("Presione Enter para continuar");
  clc
  
  # ---------------- Paso 2 ----------------
  
  printf("2. Se procede a resolver la matriz t. inferior\ncon la m. igualdad para calcular las Y \n\n"); 
  printf("Triangular inferior, ");
  l
  printf("Matriz Igualdad, ");
  e
  printf("Haciendo [l / e] tenemos\n\n")
  y = l \ e;
  mostrarFinal(l,e,y,"y");  
  input("\nPresione Enter para continuar");
  clc
  
  # ---------------- Paso 3 ----------------
  
  printf("3. Una vez calculadas las Y, procedemos a realizar el sistema\nde L traspuesta con esas Y que obtuvimos antes\nel resultado sera las X finales del sistema original\n\n");
  printf("Triangular superior, ");
  lTras
  printf("Y obtenidas en el paso 2, ");
  y
  printf("Haciendo [lTras / y] tenemos\n\n");  
  x = lTras \ y; 
  mostrarFinal(lTras,y,x,"x");
  input("\nPresione Enter para continuar");
  clc
  
  # Return   
  r = x;
  
endfunction # fin chelosky()
