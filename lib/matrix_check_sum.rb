require 'pry'
# Checks that for the given matrix, where number of rows are equal to number of columns
# whether the sum of each row matches the sum of corresponding column i.e. sum
# of numbers in row i is the same as the sum of numbers in column i for i = 0 to row.length-1
# If this is the case, return true. Otherwise, return false.

# Time complexity: O(n*m) quadratic due to nested while loops.
# Space complexity: Constant, negligible space needed to return result.

def matrix_check_sum(matrix)
  r = 0
  while r < matrix.length
  c = 0
  row_total = 0
  col_total = 0
  while c < matrix.length
    row_total += matrix[r][c]
    col_total += matrix[c][r]
    c += 1
  end
  if row_total != col_total
    return false
  end
  r += 1
end
return true
end


