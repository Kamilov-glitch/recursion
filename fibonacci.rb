def fibs(n)
  arr = [0, 1]
  for i in 2..n
    arr[i] = arr[i - 1] + arr[i - 2]
  end
  arr
end
# p fibs(10)

def fibs_rec(n, arr = [0, 1])
  arr[arr.length] = (arr[arr.length - 1] + arr[arr.length - 2])
  fibs_rec(n - 1, arr) unless n == 2
  arr
end

# p f1ibs_rec(10)

a_arr = []
b_arr = []

def merge_sort(arr, new_arr = [], a_arr = [], b_arr = [])
  if arr.length == 1
    arr
  elsif arr.length == 2
    a = arr[0]
    b = arr[-1]
    arr[0], arr[-1] = arr[-1], arr[0] if a > b
    arr
  else
    arr = a = merge_sort(arr.slice!(0, arr.length/2)) + b = merge_sort(arr)
  end

  arr
  
end

p merge_sort([1, 7, 2, 6, 5, 8])
