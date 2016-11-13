function [x, y] = task4(o1, o2)

  x1 = o1(1, 1)
  y1 = o1(1, 2)
  r1 = o1(1, 3)
  
  x2 = o2(1, 1)
  y2 = o2(1, 2)
  r2 = o2(1, 3)
  
  #построим окружности
  x = linspace(-2 * pi, 2 * pi, 1000)
  z = (x1 - r1):0.01: (x1 + r1)
  plot(z, sqrt(r1^2 - (z - x1).^2) + y1, "r", z, -sqrt(r1^2 - (z - x1).^2) + y1,"r", x1, y1, "r")
  hold on
  e = (x2 - r2):0.01: (x2 + r2)
  plot(e, sqrt(r2^2 - (e - x2).^2) + y2, "g", e, -sqrt(r2^2 - (e - x2).^2) + y2, "g", x2, y2, "g")
  
  
  #вектор r1-r2
  a = [(y2 - y1), (x1 - x2)]
  
  #находим точки пересечения окружностей
  f = @(z)[(z(1) - x1)^2 + (z(2) - y1)^2 - r1^2; (z(1) - x2)^2 + (z(2) - y2)^2 - r2^2]
  res = [fsolve(f,o1(1:2)-a'); fsolve(f, o1(1:2) + a')]
  x = [res(1), res(3)]
  y = [res(2), res(4)]
  plot(x(1), x(2), "b")
  plot(y(1), y(2), "b")
  
endfunction