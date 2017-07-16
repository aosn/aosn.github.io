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

### 第5章

**P43** `length/1` とかの `/1` は引数1つの関数を指すリテラルのようなもの (次章 P45 参照)

### 第6章

**ModulesAndFunctions-4** フォーラムの答えのこじらせっぷりぱない [Exercise: ModulesAndFunctions-4](https://forums.pragprog.com/forums/322/topics/11925)

**P53** 「答えば」は「答えは」の typo では

→ 要 Errata 報告

**P57** `only` や `except` 使いまくると追いづらくなるよね。

**P57** `except` のはずが `expect` になっている。

→ 要 Errata 報告

### 第7章

**ListsAndRecursion-2** 空リストははじいておきたい。初期値 0 で reduce する処理を書いてしまうと list がマイナスだけの場合に対応できないので注意。

**ListsAndRecursion-3** (P13) 問題文のほう `ceasar(list, n)` になっている。正しくは `caesar`。

→ 要 Errata 報告

### 第8章

**P80** 第一段落 `(heihgt)` とあるが `(height)` の typo。

→ 要 Errata 報告

### 第10章

**ListsAndRecursion-5**

リスト内包表記はfor式を使ったものという意味として解釈する

Enumモジュールの関数はリスト以外も引数にとれるようだが、今回の演習ではリスト以外考えなくて良い

Enum.eachは戻り値として `:ok` を返す

**ListsAndRecursion-6**

→ 難問とあるので解答は任意とする

**ListsAndRecursion-5** そういえば Elixir って末尾再起最適化あるのかな？

→ ある (P166)

→ (こぼれ話) JVM は最適化がない。C# は 64bit かつリリースビルドの場合だけ最適化される (特にオプション指定していない場合)

→ (もっとこぼれ話) Java でやろうとするとこんな感じ (CPS変換) https://gist.github.com/backpaper0/1e7c22d4223a864719e5

**P97** なぜ `File.stream!` は `File.open!` + `IO.stream` の 2 倍遅いのか？

→ 不明・・・

**P97** 関数に `!` ついてるやつは？

→ 失敗時にエラーが `raise` される関数の命名慣例に従っている

**P103** `Enum.into IO.stream(:stdio, :line), IO.stream(:stdio, :line)` 終わらない。Ctrl+C するしかない？

→ かも。

### 第12章

**P124** 「FizzBuz」は「FizzBuzz」の間違いと思われる。

→ 要 Errata 報告

**P124** 第一段落「対応するFizzBuzzの丹豪に変更に変換するのに」は「変更に」が不要に思える。

→ 要 Errata 報告

**P125** case1 の `%{state: some_state} = person` は、`person` にマッチした後 `some_state` にマッチするが、case2 の `person = %{age: age}` は `age` にマッチしたあと `person `にマッチする

**ControlFlow-2**

- ([intptr-t の回答](https://github.com/aosn/elixir/blob/master/intptr-t/ControlFlow-2/ControlFlow-2.md)) 表現: cond, メンテ: 関数分け, 喚起: 行数が多いものは書き直す等
- ([kzt.ysmr の回答](https://github.com/aosn/elixir/blob/master/kzt.ysmr/control_flow/ControlFlow-2.md)) 表現: case, メンテ: case, 喚起: テストコード縛り、naming convention 整備等
- ([mikan の回答](https://github.com/mikan/elixir-practice/blob/master/lib/control_flow_2/answer.exs)) 表現: case, メンテ: case, 喚起: 静的解析等

### 第13章

**P131** 脚注2のURLはリンク切れの模様。おそらくこちら: [https://elixir-lang.org/getting-started/mix-otp/introduction-to-mix.html](https://elixir-lang.org/getting-started/mix-otp/introduction-to-mix.html)

## 参考情報

* [The Pragmatic Bookshelf - Programming Elixir](https://forums.pragprog.com/forums/322) - 原書のフォーラム
* [Let it crash が生んだ誤解 - Qiita](http://qiita.com/soranoba/items/fce095f25c851dd34a6b) - 例外の話のディスカッションの紹介
