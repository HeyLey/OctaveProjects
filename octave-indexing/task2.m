# Дана матрица с четным числом строк. 
# Поменяйте местами верхнюю половину строк матрицы и нижнюю половину.

function M = task2(Z)
  n = length(Z) / 2
  X = Z(1:n, :)
  Y = Z((n+1):length(Z), :)
  M = cat(1, Y, X)
endfunction