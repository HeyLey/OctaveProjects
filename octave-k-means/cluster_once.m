 function clusters = cluster_once(points, k)
  n = length(points)
  first = randperm(n)(1:k)
  centers = points(first,:)
  
  dist = zeros(n, k)
  for j = 1:10
    for i = 1:k
      dist(:,i) = sum((centers(i, :) .- points) .^ 2, 2)
    endfor
    [_ clusters] = min(dist, [], 2)
    
    for i = 1:k
      centers(i, :) = mean(points(clusters==i,:), 1)
    endfor
    
  endfor
 endfunction