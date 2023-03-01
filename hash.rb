# frozen_string_literal: true

# ハッシュ周りについて学習(https://docs.ruby-lang.org/ja/latest/class/Hash.html)

p '基本操作'
menu = { udon: '300円', ramen: '500円', pasta: '800円' }
p menu
p menu[:udon]

p 'fetch(例外処理を起こせる)'
p menu.fetch(:udon)
p menu[:tukemen]
# ↓例外
# p menu.fetch(:tukemen)

p '追加'
menu[:soba] = '600円'
p menu
p '更新'
menu[:udon] = '1000円'
p menu

p '削除'
menu.delete(:udon)
p menu

p 'each(name=key,value=price)'
menu.each { |name, price| p "#{name}は#{price}です。" }

p 'length(カウント)'
p menu.length

p 'empty(空チェック)'
p menu.empty?

p 'store'
store_hash = {}
store_hash[:key] = 'value'
store_hash.store(:key2, { child1: '子供１', child2: '子供２' })
pp store_hash

p 'delete_if,reject(条件設定して要素を削除)'
p menu
menu.delete_if { |key, value| value == '600円' }
p menu
menu.reject! { |key, value| value == '800円' }
p menu

p 'merge(結合)'
merged_hash = menu.merge(store_hash)
pp merged_hash

p 'find(検索)'
p merged_hash.find { |key, value| key == :key2 }
p merged_hash.find { |key, value| value == '500円' }
