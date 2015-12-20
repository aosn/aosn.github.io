読書ノート: Gradle 徹底入門
===========================

[Gradle 徹底入門](/workshop/3-gradle.md)の読書ノートです。

## 正誤表

討議事項が正誤表に記載されていることがあります。確認してください。

* 入手元: http://www.shoeisha.co.jp/book/detail/9784798136431

## ノート

### 第3章

#### 3.1.4

-----

task の定義がわからない。
→ **P173** に解説あり。P176 に leftShift() の内容が記載されている。

-----

`<<` 記号は何なのか。
→ 演算子のオーバーロードで実現している模様

-----

#### 3.4.1

-----

**P60** buldscript は buildscript の typo っぽい。
→ Eratta 報告します (mikan)

-----

### 第4章

#### 4.3.3

-----

**P91** Commit-Id がないと言われる。エラーメッセージは以下。
No such property: commitId for class: org.gradle.api.internal.project.DefaultProject_Decorated
key と value を区切る ":" が "," になっているのも typo?
以下のように、自分で定義した値を入れればとりあえず manifest には入る。

```gradle
	manifest {
		attributes(
			'Implementation-Title': 'Arithmetic Lib',
			'Implementation-Version': version,
			'Commit-Id': 'foo')
	}
```

-----

**P92** File オブジェクトの destinationDir に文字列を渡しているため、キャストエラーが出る。エラーメッセージは以下。
Cannot cast object 'D:\Projects\Gradle\aosn\ch4-arithmetic\build/dist/javadoc' with class 'org.codehaus.groovy.runtime.GStringImpl' to class 'java.io.File'
このため、次のように書く必要がある。

```gradle
destinationDir = file("${buildDir}/dist/javadoc")
```

-----

P92 JavaDoc で UTF-8 の日本語で書いたところが MS932 として認識される場合、以下のように options.charSet と options.encoding を指定する。

```gradle
javadoc {
	destinationDir = file("${buildDir}/dist/javadoc")
	title = 'example library V0.1'
	options.charSet = defaultEncoding
	options.encoding = defaultEncoding
	options.links << 'http://docs.oracle.com/javase/jp/7/api/'
}
```

-----

### 参考情報

* [MSYS2](https://msys2.github.io/) - Windows の人はこれ使うと GVM 環境構築が楽
