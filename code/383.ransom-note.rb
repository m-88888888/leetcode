# @param {String} ransom_note
# @param {String} magazine
# @return {Boolean}
def can_construct(ransom_note, magazine)
  # 各文字の出現回数をカウントしたハッシュテーブルを持つ
  hash = {}
  ransom_note.chars.each do |char|
    if hash.key?(char)
      hash[char] += 1
    else
      hash[char] = 1
    end
  end

  # ハッシュテーブルのkeyごとにmagazineの文字数と比較し、>= なら何もせずループを抜けてtrueを返し、未満なら文字を含んでいないのでfalseを返す
  hash.each do |char, count|
    return false unless magazine.count(char) >= count
  end
  true
end
