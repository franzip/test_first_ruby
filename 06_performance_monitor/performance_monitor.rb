def measure n = 1
  start = Time.now.to_f
  n.times { yield }
  (Time.now.to_f - start) / n
end
