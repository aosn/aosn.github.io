---
layout: subpage
title: 読書ノート - Real World HTTP
---

[Real World HTTP](/workshop/13-http)の読書ノートです。

## 正誤表

- [書籍『Real World HTTP』のサポートリポジトリ](https://github.com/oreilly-japan/real-world-http)

## ノート

### まえがき

* **v** curl はなんて読む？
  * FAQ によると /kɝl/ or /kə:l/ みたい (参考: [Wikipedia](https://en.wikipedia.org/wiki/CURL))

* **vi** WebAssembly は本書の対象外か...

* **xi** Gogrand は GoLand として正式リリースされた

### 第1章

* **P11** `Bearer` OAuth でよくみる (参考: [RFC6750](https://tools.ietf.org/html/rfc6750#section-6.1.1))
  * JWT でも見る
* **P14** 脚注に Turbo Linux とあるが、正確には Turbolinux のはず
* **P15** `curl -v https://raw.githubusercontent.com/mikan/white-rabbit/master/app.js` とやったら `X-Content-Type-Options: nosniff` かえってきた！さすが GitHub
* **P19** 表のメソッド変更「○」と「許可」の差異がわからない
* **P21** Java の `java.io.File` クラス、`toURL()` と `toURI()` があって前者が非推奨
* **P22** 「スキーマ」 (schema) ではなく「スキーム」 (scheme) では？ (参考: [IETF](https://tools.ietf.org/html/rfc1945#section-3.2.2), [Wikipedia](https://ja.wikipedia.org/wiki/%E3%82%B9%E3%82%AD%E3%83%BC%E3%83%9E))
  * スキーマは概念、スキームは完成された計画
  * P21 の脚注 2 ではスキームになっている...

→ 要 Errata 報告

* **P27** `DELETE` はボディ持てるけど Play 2 は無視する模様
* **P27** 「ペイロードのボディ」という言い回しがあるが、ペイロードってボディとは違う？
  * HTTP としてのペイロードはボディだけだが、TCP として見れば HTTP のデータ全体がペイロードかな
  * 解説しているブログがある (参考: [ペイロードとは？TCP、UDP、jsonペーロードの意味 | イー・アルゴリズム](https://e-algorithm.xyz/payload/))
  * MDN によると「ペイロードはボディとして知られています」??? (参考: [HTTP メッセージ - HTTP | MDN](https://developer.mozilla.org/ja/docs/Web/HTTP/Messages))
  * ペイロードは概念、ボディは仕様ということで
* **P33** コラム欄、 `www-form-urlencoded` というのは `application/x-www-form-urlencoded` をあえて省略して表記しているのか、それとも記入漏れなのかどっちかわからない

### 第2章

* **P35** `Accept` ヘッダーで JSON か XML か吐き分ける Web API とかあるよね
* **P35** WebP は「ウェッピー」と読むらしい (参考: [Wikipedia](https://ja.wikipedia.org/wiki/WebP))
* **P37** Brotli は元の言葉 (Brötli)は「ブレトリ」と読むらしいが・・・ (参考: [Apache httpd 2.4 + Brotli（mod_brotli）インストールメモ | あぱーブログ](https://blog.apar.jp/linux/7956/))
* **P48** HTTP 圧縮といえば 2ch の8月危機！




