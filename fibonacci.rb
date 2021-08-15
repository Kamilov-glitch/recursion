def fibs(n)
  arr = [0, 1]
  for i in 2..n
    arr[i] = arr[i - 1] + arr[i - 2]
  end
  arr
end
p fibs(10)

def fibs_rec(n, arr = [0, 1])
  arr[arr.length] = (arr[arr.length - 1] + arr[arr.length - 2])
  fibs_rec(n - 1, arr) unless n == 2
  arr
end

p fibs_rec(10)