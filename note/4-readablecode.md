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
* Excel の補完はうざすぎる。

- - -

* イテレーター二文字とか _ms とかは目からうろこ。

- - -

* InputStreamReader isr とか良くないと思う。
* StringBuilder を sBuilder, strBuilder とか。
* arg0 はやめような・・・

- - -

* 本当にあった怖い話 (newNavigationControllerWrappingViewControllerForDataSourceOfClass) [GinkoTempoAppDelegate.m](http://iginkotempo.googlecode.com/svn-history/r47/trunk/GinkoTempo/Classes/GinkoTempoAppDelegate.m)

### 参考情報

