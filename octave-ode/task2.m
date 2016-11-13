function task2(a, y, Y)

  x = linspace(0.1, 12, 100)
  G = gamma(a + (1/2))
  F = @(u,x) [u(2), ((4 * ((x / 2)^(a + 1)) / (sqrt(pi) * G)) - (x^2 - a^2) * u(1) - x * u(2)) / x^2]
  u = lsode(F, [y;Y], x)
  plot(x, u(:,1), "r", x, u(:,2), "b")
  
endfunction