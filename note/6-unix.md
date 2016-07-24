---
layout: subpage
title: 読書ノート - Unix考古学
---

[Unix考古学 Truth of the Legend](/workshop/6-unix)の読書ノートです。

## 正誤表

討議事項が正誤表に記載されていることがあります。確認してください。

* 入手元: [http://asciidwango.jp/support/TruthOfTheLegend](http://asciidwango.jp/support/TruthOfTheLegend)

## ノート

### まえがき

**P4** 第5段落 3行目 `Windows は本書の最後に登場するるが、` とあるが、`登場するる` となっており、「る」が1個多い。

→ Errata 報告済 (mikan)

**P4** 第5段落 4行目と5行目の間に `も` が抜けている。

→ Errata 報告します (mikan)

### 第1章

**P12** 第2段落 `対話型コンピューティングを実現を狙った` とあるが、`対話型コンピューティングの実現を狙った` の誤りと思われる。

→ Errata 報告します (mikan)

**P12** Whirlwind ってなんて読むんだろう？

→ ホワールウィンド [Whirlwind - Wikipedia](https://ja.wikipedia.org/wiki/Whirlwind)

**P32** 脚注14 `dc` 実行結果 3 行目 `3    ← 計算結果「5」が表示される` とあるが、計算結果は 3 なので見間違いと思われる。

→ Errata 報告済 (mikan)

### 第2章

**P23** 成功者にはコンビが多い・・・個性が異なる二人が組むと化学反応的なことが起きるって感じかな。

→ Sergey Brin と Larry Page は両方エンジニアじゃね？William Hewlett と David Packard も。ただ Paul Allen と Bill Gates は両方ともエンジニア・プロモーション共に鬼才な感じ。

→ オラクルの Larry Ellison とかはコンビじゃない。

**P28** a.out はアセンブラ・アウトの略だったのでした。

**P28** PDP-7 Unix の Project X 感 (もうないけど) いいよね。

♪ 風の中のすばる～砂の中の銀河～

**P31** B言語、Cとほとんど違いが変わらない。

→ `auto` : C でもあるが、自動変数 (要は普通の変数)

→ C++ の `auto` は型推論の意味で使われる。

→ BCPL, ブロックのカッコにある `$` マークはどういう意味だろう。関数呼び出しと区別？`{` 使えなかったとか？

→ C で `//` コメント使えるようになったのはだいぶ後になってから (C99 から)。

### 第3章

**P40** ed 使い方わっかんねー(笑

**P42** CTSS → Mutics の文脈で、セカンドシステム症候群が引用されている。人月の神話の第5章参照。

**P43** roff って Linux に入ってる groff (使ったことない) の元か～

**P44** jfo = Joseph F. Ossanna, dmr = Dennis MacAlistair Ritchie, ken = Ken Tompson

### 第4章

**P47** Unix の精神、よく vi 陣営が Emacs 陣営を批判する根拠になってるよね [エディタ戦争 - Wikipedia](https://ja.wikipedia.org/wiki/%E3%82%A8%E3%83%87%E3%82%A3%E3%82%BF%E6%88%A6%E4%BA%89), Emacs 叩きのネタとしてはこんなものもあったね [Emacsは忘れた方がいい（Gosling）：2008年の名言 - builder by ZDNet Japan](http://builder.japan.zdnet.com/tool/20370436/)

**P48** パイプは大発明だよね。grep とか find とかで日頃当たり前のように使っているけれど、こんな熱い背景があるとは。

**P56** B言語を型付きにしたのがC言語だったという。生きてる言語で型なしはあるんだろうか・・・古い BASIC 系？

**P58** エミュレーター動かせなかった・・・32bit OS じゃないとだめ？

### 第5章

**P60** 対外的に発表したときには UNIX になっていると。

**P63** ELIZA - イライザ https://ja.wikipedia.org/wiki/ELIZA

**P67** 仮想メモリ、今は逆にメモリをディスクとして使う技術(RAM ディスク) とかあるよね。

### 第6章

**P75** V5 でなくなった speak コマンドってなんだ！？

→ 英語の文字列を音素に分けるコマンドらしい。参考: [speak (Unix) - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Speak_(Unix))

**P75** clri は clear i-node。参考: [ファイルシステム管理コマンド (Solaris のシステム管理 (第 1 巻))](https://docs.oracle.com/cd/E19455-01/806-2717/6jbtqlegm/index.html)

**P75** quiz ってなんだ・・・

→ [Man page of QUIZ](https://linuxjm.osdn.jp/html/bsd-games/man6/quiz.6.html)

**P81** みんな bash が多い。

### 第7章

**P88** lint の語源 (糸くず取り) にびっくり。ていうかリントストラップじゃなくてリントトラップ (lint trap) では？

### 第8章

**P97** ken のバックドアすげー！

**P101** `fseel` は `fseek` の typo？

**P101** `ungetc` の V7 版が `unge` となっているがこれも typo？

**P101** V4～V6 先頭に c がついている関数が多いのはなぜだろう？

→ B言語の関数と区別するとか？

### 第9章

**P120** vi が VIsual mode の略だったとは・・・。

**P112** 今生き残っている Pascal 系言語は Delphi ぐらいか。

**P114** [本物のプログラマ](http://www.genpaku.org/realprogrammerj.html)大爆笑。

**P114** disk と disc の違い [https://support.apple.com/ja-jp/HT201697](https://support.apple.com/ja-jp/HT201697)

### 第10章

**P125** 8080 とか胸熱。Z80 アセンブラ、大学時代にやったなぁ。

**P127** VAX-11/780、タンスにしか見えない ([Wikipedia 画像](https://ja.wikipedia.org/wiki/VAX#/media/File:VAX_11-780_intero.jpg))

**P129** adb ってコマンドなんだ？Android Debug Bridge なわけないし。

→ これだ！ [Advanced Debugger](https://en.wikipedia.org/wiki/Advanced_Debugger)
