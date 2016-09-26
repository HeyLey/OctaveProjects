# Создайте матрицу 10 на 10 с подряд идущими числами от 1 до 100

function M = task4()
  a = [1 : 100]
  M = (reshape(a, 10, 10))'
endfunction