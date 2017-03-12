---
layout: subpage
title: 読書ノート - プログラミングElixir
---

[プログラミングElixir](/workshop/10-elixir/)の読書ノートです。

## ノート

### はじめに

**Pix** OTPオプションって何？

OTP は Open telecom Platform の略 (P193 より)。ライブラリ集？

→ [Wikipedia](https://en.wikipedia.org/wiki/Open_Telecom_Platform) を見ると、ミドルウェアであり、ライブラリ、そしてツールらしい。

で、そのオプションとは何を指しているのだろう？

→ 不明。

### 第1章

**P4** OTP のダウンロードにすごい時間かかるので注意・・・。

### 第3章

**P21** `[ head | tail ]` に直接 `1,2,3` は書けないようだ。逆にカッコの二十につけると入れ子を連結できる。

```elixir
[ 4 | [[1,2,3]] ]
```
↓
```elixir
[4, [1, 2, 3]]
```

### 第4章

**P31** 最後の `!a` の説明、「そうでなければ b」とあるが、「そうでなければ true」では？

→ 要 Errata 報告

**P33** Haskell の `do` とはだいぶ違うな・・・ 参考: [Haskellのモナドdo記法での混乱 - iLog](https://www.ishiy.xyz/posts/2015-10-16-haskell-monad.html)

**P33** with-do-end みたいな書き方って ruby みたいな言語では普通なの？

→ あまり・・・

→ `let` に近い気がする

**P34** end は do に対応するキーワード？

→ 省略できるところを見るとそんな感じがする

→ Ruby と同じとも言える

