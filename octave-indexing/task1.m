# Дана квадратная матрица четного размера. 
# Поделите ее пополам по вертикали и горизонтали 
# и верните матрицу, соответствующую верхнему левому квадрату.

function M = task1(X)
  n = length(X) / 2
  M = X(1:n, 1:n)
endfunction