# Первая filter_multiples(a, k) 
# удаляет из вектора a все числа, которые строго больше k и делятся на k. 



function f = filter_multiples(a, k) 
  f = a((mod(a, k) != 0) | (a <= k))
endfunction


