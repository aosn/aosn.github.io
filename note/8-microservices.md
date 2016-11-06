---
layout: subpage
title: 読書ノート - マイクロサービスアーキテクチャ
---

[マイクロサービスアーキテクチャ](/workshop/8-microservices)の読書ノートです。

## 正誤表

討議事項が正誤表に記載されていることがあります。確認してください。

正誤表 (原著): [http://www.oreilly.com/catalog/errata.csp?isbn=0636920033158](http://www.oreilly.com/catalog/errata.csp?isbn=0636920033158)

## ノート

### 第1章

* マイクロサービスやってる？
  * HTTP で分けるというのはやっている (LagunaPresa)
  * Spring Boot 使ってる (mikan)

* OSGi・・・
  * 結局モジュール間は結合する (mikan)

* Netflex すごいよね
  * Chaos Monkey, Circuit Breaker...

### 第2章

* Heroku 12 factor 日本語版 [https://12factor.net/ja/](https://12factor.net/ja/)
  * 参考になる

* Graphite ・・・ログ収集
  * Graphana と組み合わせて使うと良い

* Nagios ・・・監視システム
* Dropwizard, Karyon ・・・マイクロコンテナ
* Hystrix ・・・サーキットブレーカー

### 第3章

* 完全に分離するか入れ子するか → 組織構造に基づいて設計
 * コンウェイの法則

* 最初はモノリシックに作って、ドメイン境界が安定してから切るべき
 * なんでもマイクロサービスで最初から設計すればいいというものではない


### 参考情報
