function f = task1()
  x = 0:0.01:3
  Y = @(y, x) 2 * y + x
  y = lsode(Y, 1, x)
  res = (5 * exp(2 * x) - 2 * x - 1) / 4;
  plot(x, y, 'g', x, res + 5, 'r')
endfunction



