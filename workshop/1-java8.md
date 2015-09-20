# Java SE 8 実践プログラミング

「Java SE 8 実践プログラミング」読書会の記録です。

## 概要

* 期間: 2014/11/23 ～ 2015/09/12 (全 43 回)
* 内容: 本文通読 (全章)、練習問題回答・レビュー (一部)

### 対象書籍

* 書籍: [Java プログラマーなら習得しておきたい Java SE 8 実践プログラミング](http://book.impress.co.jp/books/1114101010)
* 原著: [Java SE 8 for the Really Impatient](http://www.informit.com/store/java-se8-for-the-really-impatient-a-short-course-on-9780321927767)
* 著者: [Cay S. Horstmann](http://horstmann.com/)
* 訳者: [柴田 芳樹](http://www001.upp.so-net.ne.jp/yshibata/)
* 出版: インプレス (訳書)
* 発売: 2014/09/22
* 頁数: 264
* ISBN: 978-4-8443-3667-9

正誤表: [原著正誤表](http://www.horstmann.com/java8/bugs.html) / [訳書正誤表](http://www001.upp.so-net.ne.jp/yshibata/myhomepage/errata/js8rierrata.html) (本勉強会も正誤表に貢献しています)

### 背景

発起者の [mikan](https://github.com/mikan) より:

Scala や Clojure といった関数型プログラミングの考え方を取り入れた言語が先進的なプロジェクトで人気を博す中で、多くのプロジェクトでの主流の言語は Java となっています。しかし 2014 年に登場した Java 8 では、Scala と同じようなラムダ式が導入されたことで関数型プログラミングに則った記述が可能になりました。

一方 JAIST (北陸先端科学技術大学院大学) では、「[I217](http://www.jaist.ac.jp/~gakusei/kyoumu/syllabi25/jpn/2013_1I217.html) 関数プログラミング」や「[I219](http://www.jaist.ac.jp/~gakusei/kyoumu/syllabi25/jpn/2013_1I219.html) ソフトウェア設計論」といった講義が開講されています (しかも基幹講義)。これらの講義を受講してきた方はきっと Java 8 の登場には興味を抱き、知的好奇心が掻き立てられるはずです。そこで、JAIST OB を中心とした Java 8 本の輪読会を企画してみました。

### ゴール

#### MUST

1. 本の内容を一通り理解すること
2. すべての練習問題を解くこと
3. メンバーの親睦を深めること

期限は設けずにじっくりと、確実に進行していきます。

#### WANT

1. JavaFX 8 を用いて何らかのアプリを作ること
2. Nashorn を用いて何らかのアプリを作ること
3. この活動を出発点とし、継続すること (次のネタを探す)

### 進め方

輪読会形式とします。多忙な方が多いので、予習や事前課題は避け、集まった時間で完結するようにします。

なお、第一章から読み進めるのではなく、最初に第九章 (Java 7 新機能の復習) から入ります。

## 参加者

全 7 名。

| ID                                              | 地域     | 備考           |
|:------------------------------------------------|:---------|:---------------|
| [mikan](https://github.com/mikan)               | 神奈川県 | 司会進行・調整 |
| [MrBearing](https://github.com/MrBearing)       | 大阪府   | 締め役         |
| [YuichiroSato](https://github.com/YuichiroSato) | オランダ | 原著で参加     |
| [namichan0801](https://github.com/namichan0801) | 東京都   | 第10回まで参加 |
| [LagunaPresa](https://github.com/LagunaPresa)   | 山形県   |                |
| [intptr-t](https://github.com/intptr-t)         | 愛知県   |                |
| [s-hosoai](https://github.com/s-hosoai)         | 福岡県   | 第11回から参加 |

## スケジュール

|  # |     Date & Time (JST)  | A | mMYnLis |   Pages   | Ex. Review         |
|---:|:----------------------:|:-:|:-------:|:---------:|:-------------------|
|  1 | 2014-11-23 21:00-23:00 | 5 | oxoooo- | 211 - 214 |                    |
|  2 | 2014-11-30 21:00-23:00 | 4 | ooxxoo- |           | 9-1,2              |
|  3 | 2014-12-07 21:00-23:00 | 6 | oooooo- | 214 - 220 | 9-3,4              |
|  4 | 2014-12-14 21:00-23:00 | 5 | oooxoo- |           | 9-5,6,7            |
|  5 | 2014-12-21 21:00-23:00 | 6 | oooooo- | 221 - 228 |                    |
|  6 | 2014-12-28 21:00-23:00 | 4 | oxxooo- | 228 - 231 |                    |
|  7 | 2015-01-04 21:00-23:00 | 5 | oooxoo- |           | 9-8,9,10           |
|  8 | 2015-01-11 21:00-23:00 | 5 | oooxoo- | 3 - 10    | 9-11               |
|  9 | 2015-01-18 21:00-23:00 | 5 | ooooox- | 10 - 21   |                    |
| 10 | 2015-01-25 21:00-23:00 | 6 | oooooo- | 21 - 23   | 1-1                |
| 11 | 2015-02-01 21:00-23:00 | 5 | oox-ooo |           | 1-2                |
| 12 | 2015-02-08 21:00-23:00 | 6 | ooo-ooo |           | 1-3                |
| 13 | 2015-02-15 21:00-23:00 | 6 | ooo-ooo |           | 1-4,6              |
| 14 | 2015-02-22 21:00-23:00 | 6 | ooo-ooo |           | 1-5,7,8            |
| 15 | 2015-03-01 21:00-23:00 | 6 | ooo-ooo | 27 - 35   | 1-9                |
| 16 | 2015-03-08 21:00-23:00 | 6 | ooo-ooo | 35 - 44   |                    |
| 17 | 2015-03-15 21:00-23:00 | 6 | ooo-ooo | 44 - 54   |                    |
| 18 | 2015-03-22 21:00-23:00 | 6 | ooo-ooo | 54 - 55   |                    |
| 19 | 2015-03-29 21:00-23:00 | 6 | ooo-ooo |           |                    |
| 20 | 2015-04-05 21:00-23:00 | 5 | oxo-ooo |           | 2-1                |
| 21 | 2015-04-12 21:00-23:00 | 6 | ooo-ooo |           | 2-2,3              |
| 22 | 2015-04-19 21:00-23:00 | 6 | ooo-ooo |           | 2-4,5,6,7          |
| 23 | 2015-04-26 21:00-23:00 | 6 | ooo-ooo | 59 - 76   |                    |
| 24 | 2015-05-03 21:00-23:00 | 5 | oxo-ooo | 76 - 78   | 3-6                |
| 25 | 2015-05-10 21:00-23:00 | 6 | ooo-ooo |           | 3-7                |
| 26 | 2015-05-17 21:00-23:00 | 6 | ooo-ooo |           | 3-10,11            |
| 27 | 2015-05-24 21:00-23:00 | 6 | ooo-ooo |           |                    |
| 28 | 2015-05-31 21:00-23:00 | 5 | oox-ooo |           | 3-16               |
| 29 | 2015-06-07 21:00-23:00 | 6 | ooo-ooo | 83 - 95   | 3-21               |
| 30 | 2015-06-14 21:00-23:00 | 6 | oxo-ooo | 95 - 115  |                    |
| 31 | 2015-06-21 21:00-23:00 | 5 | oox-ooo |           | 4-1                |
| 32 | 2015-06-28 21:00-23:00 | 4 | oox-oox |           | 4-5                |
| 33 | 2015-07-05 21:00-23:00 | 4 | oxx-ooo | 119 - 129 | 4-2,4,6,7,8,9,10   |
| 34 | 2015-07-12 21:00-23:00 | 6 | ooo-ooo | 129 - 135 |                    |
| 35 | 2015-07-19 21:00-23:00 | 5 | oxo-ooo |           | 5-1,2,3,10,11      |
| 36 | 2015-07-26 21:00-23:00 | 6 | ooo-ooo | 139 - 151 |                    |
| 37 | 2015-08-02 21:00-23:00 | 6 | ooo-ooo | 151 - 157 | 6-3                |
| 38 | 2015-08-09 21:00-23:00 | 6 | ooo-ooo |           | 6-4                |
| 39 | 2015-08-16 21:00-23:00 | 5 | oox-ooo |           |                    |
| 40 | 2015-08-23 21:00-23:00 | 6 | ooo-ooo | 161 - 167 | 6-5,9              |
| 41 | 2015-08-30 21:00-23:00 | 5 | oox-ooo | 168 - 179 | 7-1                |
| 42 | 2015-09-06 21:00-23:00 | 6 | ooo-ooo | 179 - 216 |                    |
| 43 | 2015-09-12 Arima Onsen | 6 | ooo-ooo |           | 8-1,2,3            |
|    | PROGRAMMER'S DAY       |   |         |           |                    |
m: [mikan](https://github.com/mikan), 
M: [MrBearing](https://github.com/MrBearing), 
Y: [YuichiroSato](https://github.com/YuichiroSato), 
n: [namichan0801](https://github.com/namichan0801), 
L: [LagunaPresa](https://github.com/LagunaPresa), 
i: [intptr-t](https://github.com/intptr-t), 
s: [s-hosoai](https://github.com/s-hosoai)

## 成果物

### 読書ノート

[読書ノート](/note/1-java8.md)をご覧ください。

### 練習問題回答

リポジトリ: https://github.com/aosn/java8

開発環境: **Eclipse** (MrBearing, YuichiroSato, intptr-t, s-hosoai), **NetBeans** (mikan, namichan0801), **IntelliJ IDEA** (LagunaPresa)

ビルド確認: https://travis-ci.org/aosn/java8

## 振り返り

執筆中...