---
layout: subpage
title: 読書ノート - プログラミングRust
---

[プログラミングRust](/workshop/15-rust)の読書ノートです。

## 正誤表

- [O'Reilly Japan - プログラミングRust](https://www.oreilly.co.jp/books/9784873118550/)

## ノート

### 第1章

* **P3** セミコロン必要な言語久々だ・・・

* **P7** Mac での rust の入れ方・・・
  * rustup.rs (書籍で紹介されているやり方)
  * brew install rust
  * brew install rustup-init

### 第2章

* **P15** 文字列テンプレート意味不・・・
  * ➝ P403, P405

* **P17** `Cargo.toml` 手で編集するんだ・・・
  * バージョンとかは crates.io で調べて記入するかんじ？
  * `package` セクションの `authors` は勝手に入る模様、おそらく git の `user.name`, `user.email` かな

* **P23** 「プログラムがコンパイルできたのなら、データ競合は起きない。」まじか。
  * データ競合 (data race) は起きないが、競合状態 (race condition) は起こりうる。そりゃそうだ。 (参考: [Data Races and Race Conditions](https://doc.rust-lang.org/nomicon/races.html))

* **P26** 第4段落4行目「原点近辺の起動を永遠に回り続けるのかを判断し、」の「起動」は「軌道」かも
  * ➝ 要 Errata 報告？

* **P34** `?` は普通のフローで例外を再現した感じ？
  * Go のような冗長なコードにならない良さはあるけど、所見の人には分かりづらさがあるかも。

### 第3章

* **P44** `v` の定義で型引数を省略できるのは戻り値に使ってるからか！
  * コンパイラは関数のお尻まで見て推論するわけね、優秀すぎ
  * こんなことやってるからコンパイル遅いのでは :innocent:

* **P51** i8 -> i16 とか完全に互換でも暗黙的型変換が行われないのはつらいかも
  * 言語仕様の一貫性を重視しているといえる
  * P50 でほとんどといっているのは気になる

* **P55** `&String` がレフストリングと読むのはわかった。わかったけど、もっと早く書いてくれ！
  * どうせ `*String` も適切な読み方があるのだろうけど、書いてくれていない
  

## 参考リンク

- Rust トピックがついた GitHub のスター数 https://github.com/topics/rust?o=desc&s=stars

