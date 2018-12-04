def check_exam(arr1,arr2)
    result = 0
    (0..arr1.size-1).each {|i| arr2[i] == '' ? next : arr1[i] == arr2[i] ? result += 4 : result -= 1}
    result < 0 ? 0 : result
end