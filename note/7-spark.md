---
layout: subpage
title: 読書ノート - 詳解 Apache Spark
---

[詳解 Apache Spark](/workshop/7-spark)の読書ノートです。

## 正誤表

討議事項が正誤表に記載されていることがあります。確認してください。

正誤表: (未公開)

## ノート

### 第1章

**P2** MapReduce は Google の論文または「Google を支える技術」という本が詳しいですね ([論文リンク](http://static.googleusercontent.com/media/research.google.com/ja//archive/mapreduce-osdi04.pdf))

### 第2章

**P14** カレントディレクトリどこ？

→ `System.getProperty("user.dir")`

**P19** ソースコード中の `var textFile = sc.textFile("$SPARK_HOME/README.md")` は、このままでは動かないので、以下のように環境変数を自分で取得するように修正する:

```scala
val textFile = sc.textFile(sys.env("SPARK_HOME") + "/README.md")
```

**P20** sbt とあるが、typesafe-activator のほうがお勧め。sbt も含まれている。

### 第3章

**P24** 図3.1 これって HDFS の機能？

→ HDFS でもできるし、それ以外でもできる (→ P)

**P27** ノードとあるが、これは何？

→ 1ノードで複数パーティションなら、通信は発生しないよね。

→ P17 の 図2.4 にあるような、ワーカーノードのことでは。

**P27** `まとめて処理できる理由は、Spark が処理の実行計画を RDD の変換による有向グラフとして持つことに由来します。 (中略) アクションの実行からさかのぼって、基本的に処理は一本道となります。` とあるが、一本道になるための条件は「有向グラフ」だけでは不足。「有向非巡回グラフ」(Directed Acyclic Graph) である必要がある。

→ Errata 報告？

**P28** 永続化ってどういうコードになるのだろう？

→ P47 に説明があるようだ。

**P37** Scala の fold メソッド: [リファレンス](http://www.scala-lang.org/api/2.11.7/index.html#scala.collection.TraversableOnce@fold[A1>:A](z:A1)(op:(A1,A1)=>A1):A1)

→ 初期値の適用は 1 回だけ、Spark だとそれがパーティション毎。

**P38** aggregate は Java 8 の collect に似ているね: [Javadoc](https://docs.oracle.com/javase/jp/8/docs/api/java/util/stream/Stream.html#collect-java.util.function.Supplier-java.util.function.BiConsumer-java.util.function.BiConsumer-)

**P41** `PaiRDDFunctions` は `PairRDDFunctions` の typo と思われる。

→ 要 Errata 報告

**P46** Iterable って具体的に何が入る？

→ Scala のコレクションの型階層を把握しておく必要がある: [リファレンス](http://docs.scala-lang.org/ja/overviews/collections/overview.html)

**P48** Spark の管理画面ってどこ？

→ `spark-shell` 立上げ時に表示されているアドレスにアクセスする。

```
Spark context Web UI available at http://XXX.XXX.XXX.XXX:XXXX
```

**P50** 注3 の参考資料 ([リンク](https://spark-summit.org/2014/wp-content/uploads/2014/07/A-Deeper-Understanding-of-Spark-Internals-Aaron-Davidson.pdf)) では、p.36 "Importance of Partition Tuning" にこのあたりが記載されている。

### 第4章

**P62** こののコード、なんか雰囲気違う・・・。

→ コメントの先頭にスペースがなかったり、変数の置き方が独特だったり。今までとは別の人が書いたコードかな。

**P69** Akka フレームワークは様々なライブラリがある (actor, agent, camel, cluster, etc...) ([リンク](http://akka.io/docs/)) が、どれのことを指しているのか？

**P72** 「単一のプロセス内でで」とあるが、「で」が２つある。

→ 要 Errata 報告

**P76** `--executore-cores` と `--executore-memory` はそれぞれ `--executor-cores` と `executor-memory` の typo と思われる。

→ 要 Errata 報告

**P76** `yarn-site.xml` が等幅フォントになっていない。

→ Errata?

**P76** `spark.dynamicAllocation.schedulerBAcklogTimeout` の `BAcklog` の部分、A が大文字になっている。

→ 要 Errata 報告

**P76** `spark.` 系の設定値はどこに書くのだろう？

→ P96 に (SparkConf) 記述あり。

**P76** executor 数に対して task 数がすごく多い状況ならわかるが、task 数が少ない場合に無尽蔵に executor 増やしても分散しない気が・・・？

→ task 数よりも多くの executor が作られない仕組みがある？文章からは読めない。

**P77** Spark Mesos Framework とあるが、Apache Mesos Framework の間違いと思われる。

→ 要 Errata 報告

**P78** `MesosClusterDispather` の `Dispather` は `Dispatcher` の typo と思われる。

→ 要 Errata 報告

**P78** `--deploy-mode` が `client` になっている。`clustor` じゃないんだ？

→ Mesos だとそういう扱いになるのかもしれない。

**P79** `conf.set("spark.mesos.corse", "true")` の `corse` は `coarse` の typo と思われる。

→ 要 Errata 報告

**P71** リストの 5 項目目に Apache Ambari が挙げられているが、解説は最後 (4.2.6 の最後) になっている。

**P80** 「Spark のディストリビューションには spark-ec2 というスクリプトが含まれており、」とあるが、少なくともビルド済ディストリビューションにはなく、公式ドキュメントを読む限りでは [github.com/amplab/spark-ec2](https://github.com/amplab/spark-ec2) が案内されている。

**P81** `--key-pair yimai-pregon` とあるが、`yimai-oregon` の typo と思われる。yimai は著者の Yuta Imai を示していると思われる。

**P81** EMR の Scala が古くハマることがあるので注意。

**P93** データローカリティとは[参照の局所性](https://ja.wikipedia.org/wiki/%E5%8F%82%E7%85%A7%E3%81%AE%E5%B1%80%E6%89%80%E6%80%A7)のこと？

→ Hadoop 用語。

> http://oss.nttdata.co.jp/hadoop/hadoop.html
>
> JobTrackerが、TaskTrackerにタスク(mapタスク)を割り当てる際には、そのTaskTrackerが動作しているサーバと同居しているDataNodeが管理しているデータを 極力利用するように割り当てます。これをデータのローカリティと呼びます。TaskTrackerと同居しているDataNodeのデータを利用することで、サーバ間の通信量を極力抑えることが可能となり、オーバヘッドを抑えます。一方、reduceタスクは複数のTaskTrackerからデータを取得する必要があるため、mapタスクのようなデータのローカリティを考慮できません。

### 第5章

**P100** 3行目「データブレーム」は「データフレーム」の typo と思われる

→ 要 Errata 報告

**P108** `toInto` は `toInt` の typo と思われる

→ 要 Errata 報告

**P109** 長い行の改行位置が他の章と一貫性がない (Scala では普通、.map と続く時 .(改行)map とは書かない)

**P109** `RDD[Row]` とあるが、`Row` を使うには `import org.apache.spark.sql.Row` が必要

**P129** 突然登場した値 6371000 は地球の半径。地球は正確な球ではないので、だいたいの値 (参考: [Haversine formula - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Haversine_formula))。

**P132** 「// ageカラムがnullかNaNのレコーとを除外」とあるが、age カラムは Integer なので実質 NaN はありえない。

**P133** 第1段落、1個目の fill が「flll」になっている。

→ 要 Errata 報告

**P133** 第2段落、「fill(value: Double, Array[String])」、「fill(value: String, Array[String])」の２つについて、引数名 cols: が抜けている。

→ 要 Errata 報告

**P151** 第2段落「Spark SQL CIL」とあるが、「Spark SQL CLI」の typo と思われる。

→ 要 Errata 報告

**P152** 第2段落「さまざまな機能を追加されていくと思いますが」とあるが、「さまざまな機能**が**追加されていくと思いますが」の誤りと思われる。

→ 要 Errata 報告

**P156** 第1段落3行目「`as[U: Encode]`」は「`as[U: Encoder]`」と思われる。

→ 要 Errata 報告

**P165** 第1段落1～2行目「実践的な分析の説明しました」は「実践的な分析を説明しました」と思われる。

→ 要 Errata 報告

### 第6章

**P159** 第3段落3行目「ストリームデータを取り扱う方法ををサンプルを」で「を」がダブっている。

→ 要 Errata 報告

**P178** spark-submit のパッケージ名が `jp.gihyo.spark.ch06.gihyo_6_2_1` となっているが、 **P176** のソースコードは `com.gihyo.streaming` となっており、異なっている。

→ 要 Errata 報告

**P180** `ExampGroups` は `ExampleGroups` の誤りと思われる。

→ 要 Errata 報告

**P187** `updateStateByKeyFunction _` は関数を渡す Scala の構文。

**P188** countByWindow の説明に `Dstream` とあるが、`DStream` の誤りと思われる。

→ 要 Errata 報告

**P197** `baseStreamPerTirty` の Tirty は Thirty の typo と思われる。P198 にも同様の typo がある。

→ 要 Errata 報告

### 第7章

**P207** 図 7.1 の 1 つ目のプロセス「特徴変換」は、前後の説明では「特徴抽出」となっており、誤記の可能性が高い。P208 の図 7.2 も同様。

→ 要 Errata 報告

**P215** 「機械学習アルゴリズムアルゴリズム」と、「アルゴリズム」が2個続く誤植がある。

→ 要 Errata 報告

**P221** 「ラベルは `double` の値で、」とあるが、`Double` の間違いと思われる。

→ 要 Errata 報告

**P224** LDA, PIC の略語のカッコ内の単語で大文字小文字が統一されていない。

→ 要 Errata 報告

**P225** Regex ってなんて読む？Regular Expression の略だからレグイーエックス？ → [yomikata.org](http://yomikata.org/word/regex) レジェックスが多数派だと・・・

**P239** 「2つの方法提供されています。」とあるが、「2つの方法が提供されています。」の誤りと思われる。

→ 要 Errata 報告

**P240** RFormula、演算子のオーバーロードで実現して欲しいなぁ・・・

**P252** 図7.9 の X 軸、-4 から 4 となるべきところが -4 から -4 になっている。

→ 要 Errata 報告

### 参考情報
