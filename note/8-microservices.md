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

### 第4章

**P45** 「全体とは独立して変更やりリリースを」は「全体とは独立して変更やリリースを」誤り。

→ 要 Errata 報告

* コレオグラフィって日本語ですると何なんだ？
  * 振付師？？

* 分散トランザクション的なことをコレオグラフィで保証するのは難しそう

* サービスを跨ぐ DRY をどこまで寛大になるか
  * 本当に寛大になるべきなのか？投資対効果が悪い気がする
  * 依存性を複雑にするぐらいなら、だぶっててもいいという考え方だね
  * ドメインに依存しないものは積極的にライブラリ化したい

* CMS からプレゼンテーションを分離するのは面白い
  * CMS がどれだけ使いやすい API 提供いているかが鍵になりそう
  * CRM をファサードで隠すのも面白い

**P83** 6行目 「設計言語」は (デザイナー用語の)「デザイン言語」の誤訳ではないだろうか。

* バージョニング
  * 複数モジュールを変更するときに、無停止でやるのが難しい。v1/v2 とか分けるのは参考なる。

### 第5章

* DB 統合を避けるの、オーバーヘッドはどうするのか
  * レポートを出したいとき、メモリで Join するの限界がある

* Java の package がかなり劣っているとは・・・
  * public がパブリックすぎる問題、Java 9 の module である程度解消されるかな

* コードが取り残されるとは
  * リファクタリングしていくとドメインに収まらないコードが具現化される感じかな

* そもそもモノリス分割するってプロジェクトで決定するって相当なものだ
  * DB 分割の話重い・・・

* リードレプリカ (図5-12) このアーキテクチャ、経験ある

* トランザクションも難しい、レポーティングはスキーマ結合必至、マイクロサービスやるの心折れそうになる・・・
  * ドメイン境界が安定するまでモノリシックに作れという助言があるけど、トランザクション境界も安定するまで待ちたい

### 第6章

* CI してる？
  * 1日に１度はメインラインにチェックインしていますか？ :x::o::x::x::o::x:
  * 変更を検証するテストスイートはありますか？ :x::o::x::x::o::x:
  * ビルドが壊れたときに、それを修正するのがチームの最優先事項でしょうか？ :x::o::x::x::o::x:

* リポジトリキリすぎるデメリットもあるような
  * リポジトリ跨ぐ Issue が置いづらくなる (GitHub Isssues 使う場合とか)

* OS成果物がピンとこない
  * [Packger.io](https://packager.io/) とか使って成果物履き分けている OSS もある

* CoreOS は Container OS に名前を変えることが発表された
  * CentOS と見間違えるから良くないとは思っていた

* CaaS (Container as a Service) って言葉流行ってないな・・・

### 第7章

* エンドツーエンドテストの必要性って、サービスの切り方とかI/Fの複雑さにも依存する？

* ジャーニーってなんだろう・・・
  * [ユーザーストーリーマッピング](https://www.oreilly.co.jp/books/9784873117324/)によると「作業工程」とあるが、言葉自体の開設はなくピンとこない。

* ブルーグリーンデプロイメント、カナリアリリース、MTBF < MTTR
  * クラウドならではのプラクティスかな、オンプレには合わない
  * 製造業 (リペアコストが高い場合) では MTBF 重視にならざるをえない

* 性能テスト
  * 開発終盤で取り掛かって大慌てにならないように・・・
  * 早い段階から、かつ短い周期で継続的にやらないといけない

# 第8章

* 8.6第5段落「最後にどのデータが役に立つか」全くわからないこともあります。」がよくわからない
  * 1文目と2文目、逆のことを言っているような？
  * すべてを公開し、とは、サービスの公開 (リリース) を指している？先にしこんでおけということ？

* 合成監視
  * 作った経験ある

* 本番環境うっかり話面白い

# 第9章

* 混乱した代理の問題 (Confused Deputy Problem) は本当に難しい
  * if 文だらけの代理ユーザー認証制御を扱ったことが・・・(ウッ・・・)
 
* 暗号化は既存のしっかりした実装を選ぼう
  * パスワードをシステム連携のために (ハッシュ化ではなく) 暗号化して保存している場合は神経を使う
  * カード番号とかも
  * 秘密の合言葉ダメゼッタイ
 
* OpenID Connect 期待

* OSのセキュリティパッチ適用どう監視・運用しているか
  * 結構人手

* 静的解析でセキュリティ検査は積極的にやりたい
 
* 脆弱性診断ツールに脆弱性が発見され話題に
  * http://forest.watch.impress.co.jp/docs/news/1043501.html

# 第10章

* 10.4 コミュニケーション経路・構造に合わせた設計大事、あるいは組織をアーキテクチャに合わせる
  * オフショアのリスクとか

# 第11章

* サーキットブレーカー、(業務で) 自作したことあるけど、作ってるときはサーキットブレーカーって単語知らずに作ってたなぁ

* P1 のアンチフラジャイルの説明結構投げやり感ある・・・。

* デグレード能力、入れまくるとコードが複雑になるので抵抗ある。でもその犠牲を払っても得られる価値は大きいということか。

* 垂直スケーリング・・・スケールアップとも言うよね。

* SSLターミネーション・・・SSLアクセラレータとか言ったりもする。

* 人間同士でもまともに協調できないのだから分散システムの整合性担保の設計が難しいのは仕方がないな

* 分散トランザクション難しい
  * Google がなんか出してたな → [Spanner](https://cloud.google.com/spanner/docs/)
  * トランザクションではないけど、送信と完了を分けて送って整合性破壊を困難にするとか

* Consul, HashiCorp って会社がすごい！Vagrant, Packer, Trraform, Vault, Nomad なども作っている

# 第12章

* 太字の部分、結構忘れてる・・・。

* バックグラウンドになっているドメイン駆動をまずはしっかりおさえることが大事

* 相関ID入れときたい
  * Twitter の ID 生成とか面白い (参考: (https://www.slideshare.net/moaikids/20130901-snowflake))
  * MongoDB の ObjectId の生成規則も (参考: [mongodbのObjectIdの生成規則 - としたにあんの左脳](http://toshitanian.hatenablog.com/entry/2014/02/14/015314))

## 参考情報
