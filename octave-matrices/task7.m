# Вспомните задачу 2. Там еще 1 и 0 в были в шахматном порядке. 
# Создайте теперь матрицу 20 на 20, только теперь «клеточки» должны быть два на два

function M = task7()
  A = zeros(2)
  B = ones(2)
  X = cat(2, A, B) 
  Y = cat(2, B, A)
  Z = cat(1, X, Y)
  M = repmat(Z, 5)
endfunction