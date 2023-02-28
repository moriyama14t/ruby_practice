# ぼっち演算子(https://qiita.com/yoshi_4/items/e987b698c1978d248cfc)
# 注意点
# レシーバが nil ではない時は NoMethodError が発生するので注意
pp 10&.to_s
pp nil&.to_s