---
layout: subpage
title: 読書ノート - ベタープログラマ
---

[ベタープログラマ](/workshop/14-betterprog)の読書ノートです。

## 正誤表

- [『ベタープログラマ』正誤表](http://www001.upp.so-net.ne.jp/yshibata/#ERRATA)

## ノート

### 第1章

* **P3** 質問4の答えは難しい。
  * 優れた人でも一人でカッとなって作ったコードは優れてないかもしれない
  * そもそも優れたプログラマとは
  * クソコードだけど生産性高い人とかたまにいる
  * 2000行ある switch 文とか、region で頑張る C# コードとか

### 第2章

* **P8** この章は[リーダブルコード](/workshop/4-readablecode/)感
* **P16** 質問5は結論を出す質問じゃなくて戦争を勃発させたいだけの質問って感じ
  * Java だったらどうする？ → 全員スペースとの回答
  * Python の `pep8` とか Go の `gofmt` や Rust の `rustfmt` とかは偉大
* **P17** 折句のコード、never do this (笑)

### 第3章

* **P20** たるんだロジックは今の IDE ならだいたい見つけてくれる
  * モダンな IDE を使おう
  * JavaScript なら linter ちゃんといれよう
  * Pre-commit hook や CI も
* **P23** 共通化は依存関係を生むが、それに対して「責任を持ってコードに DRY を行ってください」だけはちょっと投げやり感
* **P25** デッドコードも IDE でだいたいわかる
  * テストコードが参照している気づかなかったり・・・
  * 参照調べてテストコードだけだったら消す等の綿密な調査が必要
  * 動的型付けだとわからないことも多い
  * 静的型付け言語もリフレクション使われると気づけない
* **P30** Q1、例えば null チェックを省いている理由とかはコードには現れない
  * assert やドキュメンテーションコメント等で示したい
* **P30** Q2 3 項演算子は使っていこう
  * でもネストはやめよう
  * 必要によっては説明変数を置こう (リーダブルコードにあるように)
  * Go には 3 項演算子ないけどね・・・
* **P30** Q3 共通な部分だけ関数にくくり出すとか
* **P30** Q5 チームで開発したり API として公開するときは有益かと
  * ただメンテしづらいアスキーアートはやめよう

### 第4章

* **P33** YAGNI 違反、最初にコードを書き始めるときには結構やっちゃうかも
* **P37** 機能追加したついでにおまけリファクタリングしちゃうことあるよね
  * diff が汚くなるし
  * test 落ちるとか conflict とかの可能性も増える
  * いつリファクタリングするのか結構悩ましい
  * 「年末」の大掃除は実践してみたいかも
  * 年末は比喩表現かも、実際は仕事が一区切りついたところとかかな