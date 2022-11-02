# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
# 二重ループが O(n2) なのでNG
# def two_sum(nums, target)
#   i = 0
#   while i < nums.length
#     j = 1
#     while j < nums.length
#       if nums[i] + nums[j] == target && i != j
#         return [i, j]
#       end
#       j += 1
#     end
#     i += 1
#   end
# end

# ボツ
# def two_sum(nums, target)
#   nums.product(Array(1..2)).each_index do |i, j|
#     p [i,j]
#   end
# end

# ボツ
# def two_sum(nums, target)
#   (0 ... nums.length - 1).to_a.combination(2) do |i, j|
#     if nums[i] + nums[j] == target && i != j
#       return [i, j]
#     end
#   end
# end

def two_sum(nums, target)
  dict = {}
  nums.each_with_index do |n, i|
    # target と減算した値が hash にあるならば、その値の index と今の index の組み合わせが正しい結果となる
    if dict[target - n]
      puts dict
      return dict[target - n], i
    end
    dict[n] = i
  end
end
