# Увеличьте все нечетные числа матрицы-строки в два раза.
# А если это не матрица строка, а прямоугольная матрица? 
# Будет работать ваше решение?  (БУДЕТ)


function M = task6(X)
  M = X
  I = (mod(X, 2) == 1)
  M(I) = M(I) * 2 
endfunction