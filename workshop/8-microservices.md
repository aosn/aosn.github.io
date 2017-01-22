---
layout: subpage
title: マイクロサービスアーキテクチャ
---

[![マイクロサービスアーキテクチャ](/images/cover-microservices.jpg)](https://www.oreilly.co.jp/books/9784873117607/)
[![Building Microservices](/images/cover-microservices-en.jpg)](http://shop.oreilly.com/product/0636920033158.do)

「マイクロサービスアーキテクチャ」読書会の記録です。

## 概要

* 期間: 2016/10/16 ～ (実施中)
* 内容: 毎回各1章分予習、感想交換

### 対象書籍

* 書籍: [マイクロサービスアーキテクチャ](https://www.oreilly.co.jp/books/9784873117607/)
* 原著: [Building Microservices](http://shop.oreilly.com/product/0636920033158.do)
* 著者: [Sam Newman](https://www.thoughtworks.com/profiles/sam-newman) (Australia)
* 訳者: 佐藤 直生 (監訳) :jp:, 木下 哲也 (訳) :jp:
* 出版: オライリー・ジャパン
* 発売: 2016/02/22
* 頁数: 344
* ISBN: 978-4-87311-760-7

正誤表 (原著): [http://www.oreilly.com/catalog/errata.csp?isbn=0636920033158](http://www.oreilly.com/catalog/errata.csp?isbn=0636920033158)

### 投票結果

| 提案 #                                                | 書籍                                            | 提案者                                            | 得票数                      |
|:-----------------------------------------------------:|:------------------------------------------------|:--------------------------------------------------|:---------------------------|
| [#3](https://github.com/aosn/aosn.github.io/issues/3) | **マイクロサービスアーキテクチャ**                       | ![](/images/users/mikan_16.png) mikan             |:+1::+1::+1::+1::+1::+1::+1:|
| [#5](https://github.com/aosn/aosn.github.io/issues/5) | 人月の神話                                       | ![](/images/users/akeboshi_16.png) akeboshi       |:+1::+1::+1::+1::+1:        |
| [#6](https://github.com/aosn/aosn.github.io/issues/6) | ビジネスモデルの教科書【上級編】                       | ![](/images/users/kzt-ysmr_16.png) kzt-ysmr       |:+1::+1::+1::+1:            |
| [#4](https://github.com/aosn/aosn.github.io/issues/4) | Release It! 本番用ソフトウェア製品の設計とデプロイのために | ![](/images/users/LagunaPresa_16.png) LagunaPresa |:+1::+1:                    |

(1人2票、9人投票)

### 進め方

本件は技術書選択方針の「Bパート」として開催するものです。Aパートである[詳解 Apache Spark](../7-spark)に付随して実施します。実施時間は、本流終了後の 30 分間です。

本件は他のパートと異なり、**予習を必須** としています。各回参加前に1章分に予め目を通しておいてください。各章のボリュームがやや大きいので、計画的な読書をお願いします（全12章）。各回 30 分の範囲で、気づいたことや疑問点の共有などを行います。

## 参加者

| ID                                                                                     | 地域     | 備考           |
|:---------------------------------------------------------------------------------------|:---------|:---------------|
| ![](/images/users/mikan_16.png) [mikan](https://github.com/mikan)                      | 神奈川県 | 司会進行・調整役 |
| ![](/images/users/MrBearing_16.png) [MrBearing](https://github.com/MrBearing)          | 大阪府   | 締め役          |
| ![](/images/users/intptr-t_16.png) [intptr-t](https://github.com/intptr-t)             | 愛知県   | 　              |
| ![](/images/users/akeboshi_16.png) [akeboshi](https://github.com/akeboshi)             | 神奈川県 |                |
| ![](/images/users/LagunaPresa_16.png) [LagunaPresa](https://github.com/LagunaPresa)    | 東京都   | 　              |
| ![](/images/users/kzt-ysmr_16.png) [kzt-ysmr](https://github.com/kzt-ysmr)             | 山形県   | 　              |

## スケジュール

| # | Date & Time (JST) | A | ![](/images/users/mikan_16.png) ![](/images/users/MrBearing_16.png) ![](/images/users/intptr-t_16.png) ![](/images/users/akeboshi_16.png) ![](/images/users/LagunaPresa_16.png) ![](/images/users/kzt-ysmr_16.png) | Pages | Other work |
|---:|:----------------------:|:-:|:------------------:|:--------------:|:-----------------------|
|  1 | 2016-10-23 23:00-23:30 | 4 | :o::x::o::x::o::o: | 1章            | まえがき                |
|  2 | 2016-10-30 23:00-23:30 | 5 | :o::x::o::o::o::o: | 2章            |                        |
|  3 | 2016-11-06 23:00-23:30 | 3 | :o::x::x::o::o::x: | 3章            |                        |
|  4 | 2016-11-13 23:00-23:30 | 4 | :o::x::o::o::o::o: | 4章 4.1～4.6   |                        |
|  5 | 2016-11-20 23:00-23:30 | 5 | :o::o::o::x::o::o: | 4章 4.7～4.11  |                        |
|  6 | 2016-11-27 23:00-23:30 | 4 | :o::x::o::x::o::o: | 4章 4.12～4.16 |                        |
|  7 | 2016-12-04 23:00-23:30 | 4 | :o::x::o::x::o::o: | 5章 5.1～5.11  |                        |
|  8 | 2016-12-11 22:30-23:00 | 4 | :o::x::o::x::o::o: | 5章 5.12～5.22 |                        |
|  9 | 2016-12-18 23:00-23:30 | 6 | :o::o::o::o::o::o: | 6章 6.1～6.8   |                        |
| 10 | 2016-12-25 23:00-23:30 | 4 | :o::x::x::o::o::o: | 6章 6.9～6.13  |                        |
| 11 | 2017-01-08 23:00-23:30 | 5 | :x::o::o::o::o::o: | 7章 7.1～7.6   |                        |
| 12 | 2017-01-15 23:00-23:30 | 4 | :o::x::o::o::o::x: | 7章 7.7～7.12  |                        |
| 13 | 2017-01-22 23:00-23:30 | 5 | :o::x::o::o::o::o: | 8章            |                        |

## 成果物

### 読書ノート

[読書ノート](/note/8-microservices)をご覧ください。
