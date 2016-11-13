function f = task3(k, a)
  y = @(x)(polyval(k, x) * exp(x) - a)
  f = fzero(y, 0)
endfunction