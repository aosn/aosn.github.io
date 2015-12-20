読書ノート: Gradle 徹底入門
===========================

[Gradle 徹底入門](/workshop/3-gradle.md)の読書ノートです。

## 正誤表

討議事項が正誤表に記載されていることがあります。確認してください。

* 入手元: http://www.shoeisha.co.jp/book/detail/9784798136431

## ノート

### 第3章

#### 3.1.4
```
task の定義がわからない。
→ P173 に解説あり。P176 に leftShift() の内容が記載されている。
```
```
<< 記号は何なのか。
→ 演算子のオーバーロードで実現している模様
```

#### 3.4.1
```
P60 buldscript は buildscript の typo っぽい。
→ Eratta 報告します (mikan)
```

### 第4章

#### 4.3.3

```
P91 Commit-Id がないと言われる。ここだけ消せば build は通る。

以下、素直にやったときのエラー画面。

$ gradle build

FAILURE: Build failed with an exception.

* Where:
Build file 'D:\Projects\Gradle\aosn\ch4-arithmetic\build.gradle' line: 30

* What went wrong:
A problem occurred evaluating root project 'ch4-arithmetic'.
> No such property: commitId for class: org.gradle.api.internal.project.DefaultProject_Decorated

* Try:
Run with --stacktrace option to get the stack trace. Run with --info or --debug option to get more log output.

BUILD FAILED

Total time: 4.714 secs
```

#### 4.3.3

```
P92 File オブジェクトの destinationDir に文字列を渡しているため、キャストエラーが出る。このため、次のように書く必要がある。
destinationDir = file("${buildDir}/dist/javadoc")

以下、素直にやったときのエラー画面。

$ gradle build

FAILURE: Build failed with an exception.

* Where:
Build file 'D:\Projects\Gradle\aosn\ch4-arithmetic\build.gradle' line: 45

* What went wrong:
A problem occurred evaluating root project 'ch4-arithmetic'.
> Cannot cast object 'D:\Projects\Gradle\aosn\ch4-arithmetic\build/dist/javadoc' with class 'org.codehaus.groovy.runtime.GStringImpl' to class 'java.io.File'

* Try:
Run with --stacktrace option to get the stack trace. Run with --info or --debug option to get more log output.

BUILD FAILED

Total time: 4.807 secs
```

### 参考情報

* [MSYS2](https://msys2.github.io/) - Windows の人はこれ使うと GVM 環境構築が楽
