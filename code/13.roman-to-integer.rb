# @param {String} s
# @return {Integer}
def roman_to_int(s)
  symbol_map = {
    I: 1,
    V: 5,
    X: 10,
    L: 50,
    C: 100,
    D: 500,
    M: 1000
  }.to_h

  sum = 0
  before_char = ''
  s.chars.each do |c|
    sum += symbol_map[c.to_sym]
    sum -= 1 * 2 if (c.to_sym == :V || c.to_sym == :X) && before_char == :I
    sum -= 10 * 2 if (c.to_sym == :L || c.to_sym == :C) && before_char == :X
    sum -= 100 * 2 if (c.to_sym == :D || c.to_sym == :M) && before_char == :C
    before_char = c.to_sym
    p sum
  end
  sum
end

# 他の人の解答
def roman_to_int(s)
  hash = {
    'I' => 1,
    'V' => 5,
    'X' => 10,
    'L' => 50,
    'C' => 100,
    'D' => 500,
    'M' => 1000
  }

  total = 0
  i = 0

  # 線形探索
  while i < s.length
    # 数字が大きいものから小さいものの順で並んでいる（ここを見落としてしまっていた）
    # 4,9などのケースのみ、小さいもの→大きいものの並びになるので、その差分を加算すればいい
    if i + 1 < s.length && hash[s[i]] < hash[s[i + 1]]
      total += hash[s[i + 1]] - hash[s[i]]
      i += 1
    else
      total += hash[s[i]]
    end
    i += 1
  end

  total
end
