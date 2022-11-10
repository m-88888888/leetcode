# @param {Integer[][]} mat
# @param {Integer} k
# @return {Integer[]}
def k_weakest_rows(mat, k)
  # hashに各indexとsoldiersのcountを格納
  hash = {}
  mat.each_with_index do |row, i|
    hash[i] = row.count(1)
  end
  # countの昇順にsort
  sort_hash = hash.sort do |a, b|
    a[1] <=> b[1]
  end.to_h
  # k個のindexを取り出す
  sort_hash.take(k).to_h.map { |k| k[0] }
end
# Result -> 163 ms, 212.5 MB
