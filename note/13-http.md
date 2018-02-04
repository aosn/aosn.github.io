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
* **P21** Java の `java.io.File` クラス、`toURL()` と ``toURI()` があって前者が非推奨
