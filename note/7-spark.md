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

**P19** ソースコード中の `var textFile = sc.textFile("$SPARK_HOME/README.md")` は、このままでは動かない。対策:

```
val textFile = sc.textFile(sys.env("SPARK_HOME") + "/README.md")
```

**P20** sbt とあるが、typesafe-activator のほうがお勧め。sbt も含まれている。

### 第3章

**P24** 図3.1 これって HDFS の機能？

→ HDFS でもできるし、それ以外でもできる (→ P)

**P27** ノードとあるが、これは何？

→ 1ノードで複数パーティションなら、通信は発生しないよね。

→ P17 の 図2.4 にあるような、ワーカーノードのことでは。

**P28** 永続化ってどういうコードになるのだろう？

→ P47 に説明があるようだ。

### 参考情報
