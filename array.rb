# frozen_string_literal: true

# 【参考】https://qiita.com/jnchito/items/118cca7ac2f01e1ca6a0
#       https://qiita.com/yyykms123/items/e1bcb838f56100d12025
#       https://qiita.com/may88seiji/items/ce9396a4c267a3d449ae

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
words = %w[apple melon orange]
p words.join #=> "applemelonorange"
words = %w[apple melon orange]
p words.join(', ') #=> "apple, melon, orange"

p 'uniq 重複を取り除いた新しい配列を返す'
f = [1, 1, 2, 2, 3, 4]
p f.uniq #=> [1, 2, 3, 4]

p 'zip自身の要素と、引数で与えた配列の要素を同じインデックス同士で組み合わせた配列を返す'
# テストに回答した生徒の名前
names = %w[Alice Bob Carol]
# 各生徒の点数
points = [80, 90, 60]
# 名前と点数を組み合わせる
p names.zip(points) #=> [["Alice", 80], ["Bob", 90], ["Carol", 60]]

p 'mapメソッドは配列の各要素へ処理を行い、結果を新しい配列にして返す。'
numbers = [1, 2, 3, 4, 5]
new_numbers = []
# 小なり２つ（<<）の意味 pushと同じ　https://prograshi.com/framework/rails/two-less-than-is-push/
# メモ「arr << 6 << 8 << 10　」も可能
numbers.map { |n| new_numbers << n * 10 }

p new_numbers #=> [10, 20, 30, 40, 50]

p 'selectメソッドはブロックの戻り値が真（true）の要素を返し、新しい配列を作成'
numbers = [1, 2, 3, 4, 5, 6]
# ブロックの戻り値が真になった要素だけが集められる
even_numbers = numbers.select { |n| n.even? }

p even_numbers #=> [2, 4, 6]

p 'rejectメソッドはselectメソッドの反対で、ブロックの戻り値が偽（false）の要素を返し、新しい配列を作成'
numbers = [1, 2, 3, 4, 5, 6]
# 3の倍数を除外する（3の倍数以外を集める）
non_multiples_of_three = numbers.reject { |n| n % 3 === 0 }
p non_multiples_of_three #=> [1, 2, 4, 5]

p 'ブロックを簡潔に書く(&:)'
# このコードは、
%w[ruby, java, perl].map { |s| s.upcase }
#=> ['RUBY', 'JAVA', 'PERL']
# こう書き換えられる
%w[ruby java perl].map(&:upcase)
#=> ['RUBY', 'JAVA', 'PERL']
# このコードは、
[1, 2, 3, 4, 5, 6].select { |n| n.odd? }
#=> [1, 3, 5]
# こう書き換えられる
[1, 2, 3, 4, 5, 6].select(&:odd?)
#=> [1, 3, 5]

p '.to_a で配列(Array)にできる'
p (1..5).to_a
# [1,2,3,4,5]

p '引数に削除した要素を指定 indexを指定、空の配列を代入することで削除も可能'
array = %w[a b c d f]

# [index番号, 削除する個数]で指定
array[0, 4] = []
p array
# ["f"]

# concat 配列の結合
arrayA  = %w[a b c]
arrayB  = %w[d e f]
arrayA.concat(arrayB)
p arrayA
# ["a", "b", "c", "d", "e", "f"]
