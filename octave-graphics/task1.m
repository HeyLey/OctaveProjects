# Нарисуйте график функции sin(x) + sin(3x) в диапазоне от -2pi до 2pi. 
# Функция должна не только нарисовать график, но и вернуть два значения: 
# x с абсциссами и y с ординатами точек, это те же значения, 
# которые вы передадите в функцию plot(x,y)


function [x, y] = task1()
   x = [-2 *pi : 0.1 : 2*pi]
   y = sin(x) + cos(3 * x) 
   plot(x, y) 
endfunction