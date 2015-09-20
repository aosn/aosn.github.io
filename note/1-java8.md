読書ノート: Java SE 8 実践プログラミング
========================================

[Java SE 8 実践プログラミング読書会](/workshop/1-java8.md)の読書ノートです。

ページ数、内容等は特に記載ない場合和訳本ベースです。

## 正誤表

討議事項が正誤表に記載されていることがあります。確認してください。

* (原書正誤表) http://www.horstmann.com/java8/bugs.html
* (訳書正誤表) http://www001.upp.so-net.ne.jp/yshibata/myhomepage/errata/js8rierrata.html

(本勉強会も正誤表に貢献しています)

## ノート

m: [mikan](/mikan), M: [MrBearing](/MrBearing), Y: [YuichiroSato](/YuichiroSato), n: [namichan0801](/namichan0801), L:[LagunaPresa](/LagunaPresa), i: [intptr-t](/intptr-t), s: [s-hosoai](/s-hosoai)

### 第1章

* **[p7]** (Y) ラムダ計算のドットと Java のドットが混ざってるのでこの例はややこしい。`λ first . λ second .` までがラムダ式 (`<expr> ::= (λ<identifier>. <expr>)`) 、その後はただの Java の式。 (参考: [Wikipedia](http://ja.wikipedia.org/wiki/%E3%83%A9%E3%83%A0%E3%83%80%E8%A8%88%E7%AE%97))
* **[p15]** (m) Thread.yield() は実装によっては全く何もしないので注意 (JPL より)。
* **[p16]** (m) これって ConcurrentModificationException は出ないんだっけ？あとで検証してみよう。
* **[p20]** (m) 多重継承になるので、両方の意味や契約に矛盾がないか、リスコフの置換原則に従えるかにも気を付けないといけないね。

### 第2章

* [p31] Stream.close は close が必要ないときは呼ばなくてもよい。JavaDoc にはこうかいてある「ほとんどすべてのストリーム・インスタンスは、実際には使用後にクローズする必要はありません。一般に、クローズが必要になるのは、入出力チャネルをソースに持つストリーム(Files.lines(Path, Charset)から返されるものなど)だけです。」 (参考: [JavaDoc](http://docs.oracle.com/javase/jp/8/api/java/util/stream/Stream.html))。

### 第7章

* **[ex1]** これはシンタックスエラーですね: https://twitter.com/Sh1bumi/status/562008866322677761

### 第9章

* **[p212]**
 * (m) `java.io.Closable` が昔からあったやつで `java.lang.AutoCloseable` が Java 7 で追加されたやつ。
* **[p216]**
 * (M) `Paths` の読み方は pǽðz 。 (参考: [Weblio](http://ejje.weblio.jp/content/paths))
* **[p221]**
 * (m) `Files.copy(...)` は signature が 3 つあるけど、1 つだけ `Path` を返す不思議 (参考: [JavaDoc](https://docs.oracle.com/javase/jp/8/api/java/nio/file/Files.html))。 (L) メソッドチェーンが出来て便利だけど、確かに腑に落ちない。
* **[p222]**
 * (M) `FileVisitor` に型変数 T 付いてるのどういうこと？なんでもいいの？ (m) 上限境界すらついてないね。
 * (M) `FileVisitor` の実装 `SimpleFileVisitor` の中身がショボすぎる件 (参考: [OpenJDK Source](http://hg.openjdk.java.net/jdk8/jdk8/jdk/file/687fd7c7986d/src/share/classes/java/nio/file/SimpleFileVisitor.java))。Adapter パターン的に使う？ (L) 確かに、コンストラクタも protected だね。そのまま new できない。
 * (Y) なんか使ってる例みつけたよ (参考: [倭マン's BLOG](http://waman.hatenablog.com/entry/20120816/1345150695))。
* **[p226]**
 * (m) 再目的化攻撃 (repurposing attack) がわからん。 (Y) 解説してるブログ発見 (参考: [AUT DISCE, AUT DISCEDE](http://heasman.blogspot.nl/2008/02/repurposing-attacks-against-java.html))。
* **[p228]**
 * (m) ~~`BitInteger` は `BigInteger` の誤植と思われる。~~ → 訳者に報告済。正誤表参照。
* **[Ex.9-3]**
 * (L) 複数の例外をキャッチするときの実際の型はどうなるのか?
 * (m) javap で調べたら `FileNotFoundException | UnknownHostException` の型は `IOException` になったので、共通のスーパークラスがあてがわれると推測 (検証コード: [MultiCatchAndThrow.java](/Java8Workshop/Exercises/blob/master/src/com/tasktoys/java8ws/mikan/ch9/ex03/MultiCatchAndThrow.java))。
 * (L) ならば、なぜ throws には `IOException` ではなく `FileNotFoundException` と `UnknownHostException` を別々に書けるのか?
 * (m) クラスファイル上は `IOException` だとしても、そうしたときのコンパイラは `FileNotFoundException` と `UnknownHostException` を扱っていることを知ってるから問題ない。
* **[Ex.9-8]**
 * (L) この問題は `Integer.compareTo` だけ禁止しているが、`Integer.compare` も禁止しないといけないのでは・・・
* **[Ex.9-10]**
 * (L) label を順序付けに含めるか否かは議論になる。そもそも (Point ではなく) LabeledPoint に対して Comparable を実装させるのは意味的におかしいのでは。
 * (m) Integer.compare(int, int) がやっているのはたったこれだけだった `return (x < y) ? -1 : ((x == y) ? 0 : 1);`
* **[Ex.9-11]**
 * Windows の場合、findstr が利用できる。ただし使える正規表現が大幅に限られるなど grep と比べて制約が多い。

### その他

雑談とかで挙がったキーワードなど

* (M) 大阪締めのやり方 (参考: [Wikipedia](http://ja.wikipedia.org/wiki/%E6%89%8B%E7%B7%A0%E3%82%81#.E5.A4.A7.E9.98.AA.E7.B7.A0.E3.82.81))
* (m) StackOverflow 日本語版 [リンク](https://ja.stackoverflow.com/)
* (L) BDD (振る舞い駆動開発) F/W: Spock (Groovy), Specs2 (Scala)
