# Объясните в комментариях, что и как делает функция sieve(n)

# Отбирает простые числа
# Работает как решето Эратосфена

function a = sieve(n)
  a = 1:n;
  i = 2;
  while i < length(a)
    a = filter_multiples(a, a(i));
    i++
  endwhile
endfunction

