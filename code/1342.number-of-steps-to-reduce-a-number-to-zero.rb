# @param {Integer} num
# @return {Integer}
def number_of_steps(num)
  count = 0
  while !num.zero?
    if num % 2 == 0
      num /= 2
    else
      num -= 1
    end
    count += 1
  end
  count
end
# result 
# 84ms, 211.2MB
