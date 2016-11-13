
function [points, clusters] = generate_clusters(k, n)
  points = []
  clusters = []
  for i = 1:k
    a = rand(1, 2) * 10
    sigma = (1 + rand(1)) * 0.5
    points = vertcat(points, generate_spot(a, sigma, n))
    clusters = vertcat(clusters, ones(n, 1) * i)
  endfor
endfunction