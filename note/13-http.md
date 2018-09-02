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
  * 解説しているブログがある (参考: [ペイロードとは？TCP、UDP、jsonペーロードの意味 / イー・アルゴリズム](https://e-algorithm.xyz/payload/))
  * MDN によると「ペイロードはボディとして知られています」??? (参考: [HTTP メッセージ - HTTP / MDN](https://developer.mozilla.org/ja/docs/Web/HTTP/Messages))
  * ペイロードは概念、ボディは仕様ということで
* **P33** コラム欄、 `www-form-urlencoded` というのは `application/x-www-form-urlencoded` をあえて省略して表記しているのか、それとも記入漏れなのかどっちかわからない

### 第2章

* **P35** `Accept` ヘッダーで JSON か XML か吐き分ける Web API とかあるよね
* **P35** WebP は「ウェッピー」と読むらしい (参考: [Wikipedia](https://ja.wikipedia.org/wiki/WebP))
* **P37** Brotli は元の言葉 (Brötli)は「ブレトリ」と読むらしいが・・・ (参考: [Apache httpd 2.4 + Brotli（mod_brotli）インストールメモ / あぱーブログ](https://blog.apar.jp/linux/7956/))
* **P48** HTTP 圧縮といえば 2ch の8月危機！
* **P41** Path 属性は `/` を指定すると全てのパスにクッキーを送信する
* **P46** 第一段落3行目「データを送ります、」は「データを送ります。」のような

→ 要 Errata 報告

* **P51** 第一段落1行目「このPragmaヘッダーに含めることできるペイロード」、「が」が抜けている

→ 要 Errata 報告

* **P53** `Cache-Control: private` といえば CDN の仕様トラップ (参考: [CDN切り替え作業における、Web版メルカリの個人情報流出の原因につきまして - Mercari Engineering Blog](http://tech.mercari.com/entry/2017/06/22/204500))
* **P54** `Cache-Control` があるの YES / NO で NO のときはどうなるの？
  * サーバーにアクセスして、キャッシュはなにもしないということでは
* **P56** `Cache-Control` の `no-transform` は何用？
  * 画像フォーマットの変換とかを勝手にやるプロバイダ向けに変換するなと言ったりとか ([Cache-Control - HTTP / MDN](https://developer.mozilla.org/ja/docs/Web/HTTP/Headers/Cache-Control))
  * Opera とか Jig Browser とか B モバイルの Web アクセラレーターとか [Webアクセラレーター設定方法](http://www.bmobile.ne.jp/devices/accelerator.html)
* **P59** 「〜以外のすべてのブラウザが、このルールに準拠しています。」はさすがにちょっと・・・。
  * すべてのモダンブラウザ、でも苦しいか？ (参考: [モダンブラウザとは - IT用語辞典 Weblio辞書](https://www.weblio.jp/content/%E3%83%A2%E3%83%80%E3%83%B3%E3%83%96%E3%83%A9%E3%82%A6%E3%82%B6))
* **P63** 「サイトマップは例2-4のように」とあるが、2-6の誤りと思われる

→ 要 Errata 報告

* **P62** 2.10.3 第1段落5行目「JavaScript を多様して作られた」とあるが「多様」ではなく「多用」のほうが正しい

→ 要 Errata 報告

### 第3章

* **P69** 第1段落2行目「`sampleget`」とあるが「`simpleget`」の間違いと思われる

→ 要 Errata 報告

* **P71** 第1段落「`Read()` メソッド」「`Write()` メソッド」とあるが、どちらもメソッドではなく関数では

→ 要 Errata 報告

* **P71** 第1段落「`io.Writer()`」とあるが、関数ではなくインタフェースなので `io.Writer` が正しそう

→ Errata 報告？

* **P71** 「バイト配列」ではなく「バイトスライス」では？

→ 中で Bytes() を呼んでいるので少なくとも現時点ではバイトスライスで間違いない
→ Errata 報告？

* **P73** `http.Get` とあるが、他にならうと `http.Get()` とかっこをつけるべきでは

→ Errata 報告？

* **P74** 第2段落3行目、`x-www-form-urlencode` とあるが `x-www-form-urlencoded` と間違いと思われる (末尾に `d` が抜けている)

→ 要 Errata 報告

* **P75** 「`http.Post()` メソッド」とあるが、メソッドではなく関数では

→ 要 Errata 報告

* **P75** 「`http.Post`」は「`http.Post()`」と書いたほうが統一感ある

→ Errata 報告？

* **P76** `io.Copy` の戻り値のエラーを無視しているが、これいいんだっけ？

→ エラーにならないことが明らかなら...

* **P79** `httputil.DumpResponse` はどんな出力になる？
  * GoDoc で試せる: https://golang.org/pkg/net/http/httputil/#DumpResponse

### 第4章

* **P89** 「`PUT` と `DELETE` が必須のメソッドとなった」とあるが、必須とは？
  * サーバーは適切な応答を返さないといけないとか？

* **P96** macOS High Sieera の curl は `--cirt-status` 動作するが、 Sierra の curl だとエラーが出る・・・

Sierra:

```
$ curl --cert-status https://twitter.com
curl: (4) A requested feature, protocol or option was not found built-in in this libcurl due to a build-time decision.
```

High Sierra:

```
$ curl --cert-status https://twitter.com
curl: (91) No OCSP response received
```

* **P98** 復号化という言葉を使っているが、「復号」と化をつけないのが一般的では

* **P101** 第1段落「Xsをサーバー側からクライアントに送ります」とあるが、クライアント側からサーバーに送ります、では

→ 要 Errata 報告

* **P105** 最後の段落「Google の証明証」とあるが「Google の証明書」では

→ 要 Errata 報告

* **P113** curl の実行結果にある `[master]` ってなんだろう？
  * コピペミスみたいな気がする

→ 要 Errata 報告

### 第5章

* **P127** `If-Range` 実際にどんなところで使うんだろう？
  - `If-` 系いくつかあるみたい (参考: [tohoho](http://www.tohoho-web.com/ex/http.htm#If-Range))

* **P142** SSO プロトコルの SAML が SOAP ベースで実装はつらい

* **P145** JSON-RPC は 1.0 と 2.0 があり、ここの例は 2.0。Go の [net/rpc/jsonrpc](https://golang.org/pkg/net/rpc/jsonrpc/) は 1.0 向けなので注意。

* **P151** 例5-13、html のとじタグ (`</html>`) がない

→ 誤植？

### 第6章

* **P167** Sierra は `SecureTransport` だが HighSierra は `LibreSSL` に変わっている

* **P183** `go` はゴルーチンで非同期で関数を実行するキーワード
  - この本で初出な気がする。説明が欲しいところ。

* **P184** 第2段落2行目、「このこの Gorilla 用の...」とあるが、「この」がだぶっている

→ 要 Errata 報告

* **P184** 可搬性がない...
  - 多言語との通信とかまじめにやる気が無い感ある

### 第7章

* **P195** 「Wifi」とあるが、ふつう「Wi-Fi」と書かないか・・・？

* **P212** 「7.5.5.3 SRTCもその1つで」とあるが、「SRTPもその1つで」の誤植みたい

→ 要 Errata 報告

### 第8章

* **P227** 「サンプルhCard のサンプルはの通りです。」とあるが「サンプルは例8-4の通りです。」の誤植みたい

→ 要 Errata 報告

### 第9章

* **P251** サーバープッシュが動かない・・・普通の GET になってしまう

* **P257** Mithril.js の stream の呼び出しが間違っていて JS エラーになる。公式ドキュメントに従い、以下のように修正する必要がある (参考: [stream() - Mithril.js](http://mithril-ja.js.org/stream.html))。

```diff
-            this.primes = stream([]);
+            this.primes = m.stream([]);
```

### 第10章

* **281** 第2段落4行目「バックアップの署名書が」とあるが、「証明書」の typo と思われる

→ 要 Errata 報告

* **P283** 「Wifi」とあるが、ふつう「Wi-Fi」と書かないか・・・？(再掲)

* **P286** 2FA 管理がめんどい、スマホ買い替え時とか・・・
  * MS ならバックアップできる (参考: [バックアップ機能が有効になった Microsoft Authenticator](http://www.vwnet.jp/windows/Other/2018050201/MicrosoftAuthenticatorBackup.htm))
  * アンチ Google や MS なあなたには FreeOTP がおすすめ (バックアップはできないみたいだけど): https://freeotp.github.io/ 

* **P290** Google Analytics 強い、ほかあるのか
  * 忍者ツールズ・・・

### 第11章

* **P295** REST vs. RPC... マイクロサービスアーキテクチャにも言及があったね

* **P296** HATEOAS ってなんて読む？ (全然あてにならない) yomikata.org によると「ヘイトース」: http://yomikata.org/word/hateoas

* **297** GitHub の REST API などは `Accept` ヘッダーでバージョン切り替えられるしとても RESTful: https://developer.github.com/v3/

  * GraphQL も流行りだしている
  * GitHub GraphQL API の Explorer 楽しい: https://developer.github.com/v4/explorer/

* **P301** 403 か 404 かについて筆者が Twitter で補足している

<blockquote class="twitter-tweet" data-lang="ja"><p lang="ja" dir="ltr">「存在している」という「情報」をログインしていないユーザーに見せない、という意味では404が正しいこともありえますね。 <a href="https://t.co/kKEq3soiXc">https://t.co/kKEq3soiXc</a></p>&mdash; 渋川よしき (@shibu_jp) <a href="https://twitter.com/shibu_jp/status/1023858593462767616?ref_src=twsrc%5Etfw">2018年7月30日</a></blockquote>
<script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>

<blockquote class="twitter-tweet" data-lang="ja"><p lang="ja" dir="ltr">Real World HTTPでは403の代わりに404を返す可能性については一言だけ触れていたけど、あんまりきちんと説明してなかったので、今度改定のチャンスがあったとき用のネタ帳に追記しておこう。 <a href="https://t.co/kKEq3soiXc">https://t.co/kKEq3soiXc</a></p>&mdash; 渋川よしき (@shibu_jp) <a href="https://twitter.com/shibu_jp/status/1023859756824322048?ref_src=twsrc%5Etfw">2018年7月30日</a></blockquote>
<script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>

* **P302** 表11-2 の最後に "451 Unavailable For Legal Ressons" とあるが、 "Reasons" の typo と思われる (参考: [Wikipedia](https://ja.wikipedia.org/wiki/HTTP_451))

→ 要 Errata 報告
