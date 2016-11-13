function task3(a = 2, b = 3, g = 2, d = 2, step = 2)

  global alfa = a
  global beta = b
  global gamma = g
  global delta = d
  
  t = [0:0.01:25]
  hold on
  
  for i = 0:6
    s = [gamma/delta, alfa/beta + i*step]
    y = lsode(@f, s, t)
    plot(t, y(:, 1), 'r', t, y(:,2),'k')
  endfor
endfunction

function y = f(d, x)
  global alfa
  global beta
  global gamma
  global delta
  y = [(alfa - beta*d(2))*d(1), (-gamma+delta*d(1))*d(2)]
endfunction