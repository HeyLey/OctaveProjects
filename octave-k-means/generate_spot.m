
function ans = generate_spot(a, sigma, n)
  ans = randn(n, 2) * sigma + a
endfunction