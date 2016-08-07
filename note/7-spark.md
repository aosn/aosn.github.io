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

### 参考情報
