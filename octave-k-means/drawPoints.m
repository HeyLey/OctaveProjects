
function drawPoints(points, clusters)
  k = length(unique(clusters))
  if (k == 0)
    k = 1
    clusters = ones(length(points), 1) 
  endif
  x = points(:,1)
  y = points(:,2)

  markers = "+o*.xsd^<>vph"; # список из всех возможных маркеров, их 13 штук
  colors = "krgbmckrgbmck"; # список из 13 цветов, их 6 штук, поэтому повторяем
  
  hold on;
  
  for i = 1:k
    plot(x(clusters==i), y(clusters==i), [markers(i) colors(i)]);
  endfor
  
  hold off;
endfunction