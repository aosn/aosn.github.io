---
layout: subpage
title: 読書ノート - Gradle 徹底入門
---

[Gradle 徹底入門](/workshop/3-gradle)の読書ノートです。

## 正誤表

討議事項が正誤表に記載されていることがあります。確認してください。

* 入手元: [http://www.shoeisha.co.jp/book/detail/9784798136431](http://www.shoeisha.co.jp/book/detail/9784798136431)

## ノート

### 第3章

#### 3.4.1

**P60** buldscript は buildscript の typo っぽい。

*→ Errata 報告します (mikan) → 著者 (須江さん) 報告済*

### 第4章

#### 4.3.3

**P91** Commit-Id がないと言われる。エラーメッセージは以下。
```
No such property: commitId for class: org.gradle.api.internal.project.DefaultProject_Decorated
```
key と value を区切る ":" が "," になっているのも typo?
以下のように、自分で定義した値を入れればとりあえず manifest には入る。

```
	manifest {
		attributes(
			'Implementation-Title': 'Arithmetic Lib',
			'Implementation-Version': version,
			'Commit-Id': 'foo')
	}
```
*→ Errata 報告します (mikan) → 著者 (須江さん) 報告済*

- - -

**P92** File オブジェクトの destinationDir に文字列を渡しているため、キャストエラーが出る。エラーメッセージは以下。
```
Cannot cast object '(省略)ch4-arithmetic\build/dist/javadoc' with class 'org.codehaus.groovy.runtime.GStringImpl' to class 'java.io.File'
```
このため、次のように書く必要がある。

```
destinationDir = file("${buildDir}/dist/javadoc")
```
*→ Errata 報告します (mikan) → 著者 (須江さん) 報告済*

公式ドキュメントでは、以下のように記述しているので、こちらのがベターだと思われる。

```
destinationDir = reporting.file("rest-api-docs")
```

参考: [Javadoc (Gradle API 2.9)](https://docs.gradle.org/current/javadoc/org/gradle/api/tasks/javadoc/Javadoc.html)

- - -

**P92** JavaDoc で UTF-8 の日本語で書いたところが MS932 として認識される場合、以下のように options.charSet と options.encoding を指定する。

```
javadoc {
	destinationDir = file("${buildDir}/dist/javadoc")
	title = 'example library V0.1'
	options.charSet = defaultEncoding
	options.encoding = defaultEncoding
	options.links << 'http://docs.oracle.com/javase/jp/7/api/'
}
```

### 第5章

#### 5.3.2

**P123** 表5.3について、「ロード順の遅い方の値で上書きされます。」とあるが、この説明だとコマンドライン引数よりプロジェクトやホームの設定が勝つことになる。リファレンスを見ると、プロジェクト、ホーム、コマンドライン引数となっているように読めるので、矛盾している。

参考: https://docs.gradle.org/current/userguide/build_environment.html

*→ Errata 報告します (mikan) → 著者 (須江さん) 報告済 → リファレンスが誤っていて、実装がリファレンスに合っていなかったらしい (本は実装・コードに即した記述になっていて、正しい)。*

### 第6章

#### 6.1.2

**P163** `greet -Dorg.gradle....` となっているが、`gradle -Dorg.gradle...` のミスと思われる。

*→ Errata 報告します (mikan)*

**P163** PowerShell だと、以下のように -D 以下をダブルクオートでエスケープする必要がある。

```bash
gradle -D"org.gradle.project.message=Hello" greet
```

#### 6.4.1

**P204** 図6.8中の `apply(plugin:'java'` という記述、カッコ閉じ忘れを発見。

*→ Errata 報告します (mikan)*

#### 6.5.4

**P218** ソースコードの commnTask 定義内 `println project.name + 'の' name + 'タスクです。'` とあるが、"'の'" と "name" の間に "+" がない。ただし、配布されているサンプルコードは修正済。

*→ Errata 報告します (mikan)*

### 第7章

#### 7.2.1

**P225** 脚注5の `例えば、Gra dleにJavaプラグインを…` ってところ、変なスペースあるよね。

- - -

### 第8章

#### 8.2.1

**P269** 脚注16のURL http://groovy.codehaus.org/ConfigSlurper はリンク切れの模様。現在は http://docs.groovy-lang.org/latest/html/gapi/groovy/util/ConfigSlurper.html と思われる。あと、`ConfigSlurper` は索引に載せて欲しいところ・・・。

*→ 著者に報告します。(mikan)*

#### 8.3.2

**P300** サンプルの chapter08/book-crud を使ったが、参加者5人中誰の環境でも動かせなかった（各自バージョン上げやブラウザ変更などを試すも Selenium や mybatis のエラー等ではまった）。勉強会の進行が1時間止まったので問題解決打ち切り。

### 第9章

#### 9.3.1

**P318** (参考情報) runProguard は 1.0 あたりから minifyEnabled に名称変更されている。

**P319** (参考情報) 今は Checkstyle プラグインや Fundbugs プラグインと共存できる。

**P320** (参考情報) testCompile は 1.1 からサポートしている (Unit Testing Support)。

#### 9.3.2

**P321** 脚注14の generate って何だろう？見当たらない
http://tools.android.com/tech-docs/new-build-system/user-guide#TOC-Build-Tasks

**P325** 脚注19のリンクは、ページ内リンク (#TOC-...) はもう切れていて、なおかつ今はちゃんとした説明が載っている。
http://tools.android.com/tech-docs/new-build-system/user-guide#TOC-Product-flavors

### 第10章

#### 10.1.1

**P331** 表10.1とあるが、表10.2の誤りと思われる。

*→ Errata 報告します (mikan)*

**P332** NetBeans も日本語版と英語版両方あるけど・・・？

#### 10.1.2

**P333** Gradle IDE Pack って Gradle に関係ないものも入れすぎだよね・・・

#### 10.2.1

**P334** (参考情報) 運悪く・・・とあるので Eclipse のリリースロードマップを共有 https://wiki.eclipse.org/Simultaneous_Release

### 第11章

**P387** Android Studio では、途中から iml がないプロジェクトを正しく開けなくなりました・・・(モジュールの種別が認識できなくなる)

**P398** 図11.9中の `「From Root Build Script Din」` の "Din" は "Dir" の typo と思われる。

*→ Errata 報告します (mikan)*

### 第12章

**P451** リスト12.8の説明が、Ivy Plugin の説明なのに `(Maven Plugin プラグインの場合)` となっている。

*→ Errata 報告します (mikan)*

### 参考情報

* [MSYS2](https://msys2.github.io/) - Windows の人はこれ使うと GVM 環境構築が楽
* [JavaTips ～Apache／Jakarta編：Antの活用（ファイルセットの利用） - ＠IT](http://www.atmarkit.co.jp/ait/articles/0410/27/news116.html)
