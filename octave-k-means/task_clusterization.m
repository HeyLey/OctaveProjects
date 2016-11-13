function task_clusterization(k)
  [points clusters] = generate_clusters(k, 50)
  drawPoints(points, clusters)
  
  pause(0.5)
  
  cla
  drawPoints(points, [])
  pause(0.5)
  
  
  best_clusters = []
  best_score = +Inf
  for j = 1:10
    clusters = cluster_once(points, k)
    score = clusterization_quality(points, k, clusters)
    
    cla
    drawPoints(points, clusters)
    pause(0.5)
    
    if (score < best_score)
      best_score = score
      best_clusters = clusters
    endif
  endfor
  
  cla
  drawPoints(points, best_clusters)
endfunction
