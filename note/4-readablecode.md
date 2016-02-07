読書ノート: リーダブルコード
============================

[リーダブルコード](/workshop/4-readablecode.md)の読書ノートです。

## 正誤表

討議事項が正誤表に記載されていることがあります。確認してください。

* 入手元: http://www.oreilly.co.jp/books/9784873115658/

## ノート

### 第1章

* 理解しやすさと一言で言っても、読む人のレベルを想定するのが難しいよね。
* 研修とか、教育でフォローして欲しいところ。
* OSS は、ある程度できる人が集まるから、ちょっと違うかも。
* でも、クソいと読んでコミットしようとは思わない。

- - -

* 本にも書いてあるけど、読みやすい、読みやすくないは言語には依存しない概念。
* 環境とかはあるかも。コンパイラが扱える変数の長さとか、名前空間とかの制約がある。

- - -

* 三項演算子のネストはたまに書きたい衝動にかられる。
* Apple は長い名前が好き。MPMusicPlayerControllerNowPlayingItemDidChangeNotification とか。

- - -

* [IOCCC](https://ja.wikipedia.org/wiki/IOCCC) とか[汚コードグランプリ](https://codeiq.jp/magazine/2015/02/21347/)とか。
* 手本となるような美しいコードをたくさん読みたい。
* ffmpeg のコードが美しいと言われている。

### 第2章

* retval ではないけど、result とか書いちゃう。意味ある変数にかえると、すごい明快になる。
* 再帰関数とかDBの結果とか、すごい result 使っちゃう。

- - -

* TextMate の ESC で補完ってどうなのよ。
* そんなことより Excel の補完がうざすぎる。

- - -

* イテレーター二文字とか _ms とかは目からうろこ。

- - -

* InputStreamReader isr とか良くないと思う。
* StringBuilder を sBuilder, strBuilder とか。
* arg0 はやめような・・・

- - -

* 本当にあった怖い話 (newNavigationControllerWrappingViewControllerForDataSourceOfClass) [GinkoTempoAppDelegate.m](http://iginkotempo.googlecode.com/svn-history/r47/trunk/GinkoTempo/Classes/GinkoTempoAppDelegate.m)

### 第3章

* filter() は現実世界でいっぱいある・・・ Java 8 の Streeam API とか、Gradle の FileCollection とか。

- - -

* truncate ってあまり馴染みがない: http://eow.alc.co.jp/search?q=truncate
* SQL にはあるみたい。

- - -

* [Off-by-one エラー](https://ja.wikipedia.org/wiki/Off-by-one%E3%82%A8%E3%83%A9%E3%83%BC)なんて名前があったのか。

- - -

* start - end はよく見る。
* head - tail

- - -

* bool 変数名とメソッドの関係・・・ is○○() で is○○ 返却に違和感。

- - -

* size と length 混ざってるのいやだ。
* C++11 で O(1) にするのは揉めたらしい
  ([C++0x標準コンテナのsize()の計算量を規定](http://faithandbrave.hateblo.jp/entry/20090902/1251879571))。


### 第4章

* 配列の中身とか、変数と等号の間とかスペース入れて揃えるか？
* C だとやることが多い
* フォーマッターが対応してくれないとちょっと辛い
* 定義と仕様書を突き合わせるときとか


### 第5章

* 毎回 Javadoc コマンドで怒られる

- - -

* TODO や XXX が残ってるとよくないよね
* TODO つけるだけまだましだよ
* XXX ってどういうときにつける？
 * FIXME > TODO > XXX (mikan)
 * FIXME > XXX > TODO (MrBearing)
 * TODO > FIXME (XXX 使わない) (aruga, s-hosoai, intptr-t)
 * 全部つかわない (YuichiroSato)
 * リーダブルコード的には、XXX > FIXME > TODO > HACK か？
 * つまり、**事前に認識合わせが必要** だよね

- - -

* 基本的には Javadoc を充実させたい。
* 行コメントがあると逆に怖い。コメントが必要なほど注意を要するってことで。
* 例外とかちゃんと書きたい。

- - -

以後、代表が書いたプロダクトコードのコードレビュー大会。

### 第6章

* インラインコメントは是非実践したい。
* インラインコメントできない言語もあるよね。
 * アセンブラ
 * BASIC

- - -

* コミットメッセージにも言えるよね。
 * No Ticket, No Commit も大事。
 * 1 Issue 1 Branch も。
 * Mylyn いいよ～

### 第7章

* ヨーダ記法社内のレガシーコードにうじゃんこあるわ。
* こんなのもよくある。

```java
if ("hoge".equalsIgnoreCase(hoge)) {
    // ...
}
```

* これ昔流行った。
* Groovy の [Safe Navigation Operator](http://docs.groovy-lang.org/latest/html/documentation/index.html#_safe_navigation_operator) (`hoge?.equals`) なんてのもある。知っていれば便利。知らないとなにこれって感じ。

- - -

* 状態遷移図をコードに起こすとき goto あると実装がすごい楽だったり・・・。
* メンテを考慮しない自動生成コードならありかも。

- - -

* ネストが多いほうがいいケースってないよね。
* switch 文のネストはキモい。

- - -

* どっかの偉い先生が return 1 個主義だった。
* 確かに構造化プログラミングの考えに則ると goto に近いが、フローは簡単になるんだからいいよね。

- - -

* 3項演算子、覚えたてのころめっちゃ使った。
* どうでもいいけど、新人の若さゆえの過ち集とか作ってみたいかも。

- - -

* そういえば、オブジェクト指向を dis ってる偉い先生 (COBOL 使い) もいた。
* ダイクストラ先生は COBOL を大変 dis っている。

> ダイクストラ先生「COBOLを使っていると人は無能になってしまう。COBOLの教育は犯罪とみなすべきである。」
> http://itpro.nikkeibp.co.jp/article/NEWS/20110701/361974/

- - -

* 自分は条件式はかならず `x < y` で書いている。
* 数値計算では統一性のためにそのほうが良いこともある。
* 例えば `x > 0 || x < 10` より `0 < x || x < 10` のが良かったり。

### 参考情報

