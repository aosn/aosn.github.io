読書ノート: Gradle 徹底入門
===========================

[Gradle 徹底入門](/workshop/3-gradle.md)の読書ノートです。

## 正誤表

討議事項が正誤表に記載されていることがあります。確認してください。

* 入手元: http://www.shoeisha.co.jp/book/detail/9784798136431

## ノート

### 第3章

#### 3.1.4

task の定義がわからない。
→ **P173** に解説あり。P176 に leftShift() の内容が記載されている。

- - -

`<<` 記号は何なのか。
→ 演算子のオーバーロードで実現している模様

#### 3.4.1

**P60** buldscript は buildscript の typo っぽい。
→ Errata 報告します (mikan) → 著者 (須江さん) 報告済

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
→ Errata 報告します (mikan) → 著者 (須江さん) 報告済

- - -

**P92** File オブジェクトの destinationDir に文字列を渡しているため、キャストエラーが出る。エラーメッセージは以下。
```
Cannot cast object '(省略)ch4-arithmetic\build/dist/javadoc' with class 'org.codehaus.groovy.runtime.GStringImpl' to class 'java.io.File'
```
このため、次のように書く必要がある。

```
destinationDir = file("${buildDir}/dist/javadoc")
```
→ Errata 報告します (mikan) → 著者 (須江さん) 報告済

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

→ Errata 報告します (mikan) → 著者 (須江さん) 報告済 → リファレンスが誤っていて、実装がリファレンスに合っていなかったらしい (本は実装・コードに即した記述になっていて、正しい)。

### 第6章

#### 6.1.2

**P163** `greet -Dorg.gradle....` となっているが、`gradle -Dorg.gradle...` のミスと思われる。

→ Errata 報告します (mikan)

**P163** PowerShell だと、以下のように -D 以下をダブルクオートでエスケープする必要がある。

```
gradle -D"org.gradle.project.message=Hello" greet
```

#### 6.4.1

**P204** 図6.8中の `apply(plugin:'java'` という記述、カッコ閉じ忘れを発見。 

→ Errata 報告します (mikan)

#### 6.5.4

**P218** ソースコードの commnTask 定義内 `println project.name + 'の' name + 'タスクです。'` とあるが、"'の'" と "name" の間に "+" がない。ただし、配布されているサンプルコードは修正済。

→ Errata 報告します (mikan)

### 第7章

#### 7.2.1

**P225** 脚注5の `例えば、Gra dleにJavaプラグインを…` ってところ、変なスペースあるよね。

- - -

### 第8章

#### 8.2.1

**P269** 脚注16のURL http://groovy.codehaus.org/ConfigSlurper はリンク切れの模様。現在は http://docs.groovy-lang.org/latest/html/gapi/groovy/util/ConfigSlurper.html と思われる。あと、`ConflugSlurper` は索引に載せて欲しいところ・・・。

→ Errata になるのかな？

### 参考情報

* [MSYS2](https://msys2.github.io/) - Windows の人はこれ使うと GVM 環境構築が楽
* [JavaTips ～Apache／Jakarta編：Antの活用（ファイルセットの利用） - ＠IT](http://www.atmarkit.co.jp/ait/articles/0410/27/news116.html)
