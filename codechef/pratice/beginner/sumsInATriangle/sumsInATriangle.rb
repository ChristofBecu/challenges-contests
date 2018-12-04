require 'matrix'
require 'pp'
n = 5
ArrSize = n-1

def mini(x, y, z)
  [x, y, z].min
end

def minCost(cost, m, n)
  i, j = 0, 0
  tc = Array.new(ArrSize) { Array.new(ArrSize, 0) }
  tc[0][0] = cost[0][0]
  (1..m).each do |i|
    tc[i][0] = tc[i-1][0] + cost[i][0]
  end
  (1..n).each do |i|
    tc[0][i] = tc[0][i-1] + cost[0][i]
  end
  (1..m).each do |i|
    (1..n).each do |j|
      tc[i][j] = [ tc[i-1][j-1],
                   tc[i-1][j],
                   tc[i][j-1]
                  ].min + cost[i][j]
    end
  end
  tc[m][n]
end

p mini(5, 8, 2)

a = [1,2], [3,4]
p minCost(a, 1, 1)

def fillArr(arr)
  pos = arr.size-1
  pos.times do |col|
    pos.times do |row|
      arr[row][col] = gets.chomp.to_i
    end
  end
  
  
  
end

gets.chomp.to_i.times do # N
  ((gets.chomp.to_i) -1).times do |pyramidBase|
    matrix = Array.new(pyramidBase) { Array.new(pyramidBase, 0) }
    fillArr(matrix)
    # pyramidBase.times do |col|
    #   # rowArr = gets.chomp.split().map(&:to_i)
    #   # pyramidBase.times do |row|
    #   #   matrix[col][row] = rowArr[row]
    #   end
    # end
    # print "__"
  #print matrix.flatten.compact.max.to_s.split().map(&:to_i).inject(:+)
  end
end



