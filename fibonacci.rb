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

def merge_sort(arr, new_arr = [])
  
  if arr.length == 1
    return arr
  elsif arr.length == 2
    a = arr[0]
    b = arr[-1]
    arr[0], arr[-1] = arr[-1], arr[0] if a > b
    return arr
  else
    a = merge_sort(arr.slice!(0, arr.length/2)) 
    b = merge_sort(arr)
  end

  until a.length == 0 || b.length == 0
    if a[0] < b[0]
      new_arr.push a[0] 
      a.delete_at(0)
    else
      new_arr.push b[0]
      b.delete_at(0)
    end
  end

  new_arr += (a.length > 0 ? a : b)

  arr = new_arr
  
end

p merge_sort([8, 1, 6, 2, 5, 9, 7, 6, 6, 6])
