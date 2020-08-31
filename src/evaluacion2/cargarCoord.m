clc;
disp("1) Cargar Coordenadas");
## num = input("Ingrese la cantidad de puntos ");
x = (0);
y = (0);
x = [-3, -2, 5, -1, 0];
y = [45, 10, -235, -1, 0];
##for i = [1 : num]  
##  fprintf("\nCoordenada x%d = ", i); 
##  x(i) = input("");
##  fprintf("Coordenada y%d = ", i);
##  y(i) = input("");
##endfor

disp("\nPuntos Cargados")

for i = [1 : num]  
  fprintf("(x%d, y%d) = (%d, %d)\n", i-1, i-1, x(i), y(i));
endfor

disp("");

esperar = input("Presione Enter para continuar");
clc;


##x
##y

##L = interpolacion(x,y)