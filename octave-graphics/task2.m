# Нарисуйте график функции sin(x) + sin(2x) + sin(3x) + ... + sin(100x),  
# обойдитесь без циклов. Верните результат как в прошлой задаче.

function [x, y] = task2()
   x = [-2*pi : 0.001 : 2*pi]
   v = (1:100)
   M = sin((x') * v)
   y = sum(M, 2)
   plot(x, y) 
endfunction