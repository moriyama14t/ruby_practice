# 【参考】https://qiita.com/jnchito/items/118cca7ac2f01e1ca6a0

p 'compact/compact!(nilの要素を取り除いた配列を新しく生成)'
a = [1, nil, 'abc', false]
b = a.compact
p b #=> [1, 'abc', false]

p 'flattenは入れ子になった配列を1つにまとめた新しい配列を返す'
c = [[1, 2], [3, 4], [5, 6]]
p c.flatten #=> [1, 2, 3, 4, 5, 6]

p 'indexメソッド引数と同じ値の添字を返す'
d = [10, 20, 30, 10, 20, 30]
p d.index(30) #=> 2

p 'include? 引数と等しい要素が配列に含まれている場合にtrue'
e = [10, 20, 30]
p e.include?(20) #=> true
p e.include?(50) #=> false

p 'join配列の各要素を1つに連結した文字列を返す'
words = ['apple', 'melon', 'orange']
p words.join #=> "applemelonorange"
words = ['apple', 'melon', 'orange']
p words.join(', ') #=> "apple, melon, orange"

p 'uniq 重複を取り除いた新しい配列を返す'
f = [1, 1, 2, 2, 3, 4]
p f.uniq #=> [1, 2, 3, 4]

p 'zip自身の要素と、引数で与えた配列の要素を同じインデックス同士で組み合わせた配列を返す'
# テストに回答した生徒の名前
names = ['Alice', 'Bob', 'Carol']
# 各生徒の点数
points = [80, 90, 60]
# 名前と点数を組み合わせる
p names.zip(points) #=> [["Alice", 80], ["Bob", 90], ["Carol", 60]]