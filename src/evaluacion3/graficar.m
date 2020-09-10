function graficar(newton)
  clc;
  newton
  
  symvar x;
  x = -5:0.01:5;
  
  if (newton.default == true)
    ec1 = strrep(newton.ec1, '^', '.^')
    ec2 = strrep(newton.ec2, '^', '.^')
    
    y1 = eval(ec1);
    y2 = eval(ec2);
    
    plot(x, y1);  
    grid on;
    hold on;
    plot(x, y2);
    
  endif
  
endfunction # fin graficar()
