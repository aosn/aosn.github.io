---
layout: subpage
title: 深層学習
---

[![深層学習](/images/cover-deeplearning.jpg)](http://www.amazon.co.jp/dp/4061529021/)

「深層学習」読書会の記録です。

## 概要

* 期間: 2015/09/20 ～ 2015/11/22
* 内容: 本文通読 (全章)

### 対象書籍

* 書籍: [深層学習 (機械学習プロフェッショナルシリーズ)](http://bookclub.kodansha.co.jp/product?isbn=9784061529021)
* 著者: [岡谷 貴之](http://www.vision.is.tohoku.ac.jp/jp/home/) :jp:
* 出版: 講談社
* 発売: 2015/04/07
* 頁数: 176
* ISBN: 978-4-06-152902-1

正誤表: [出版社正誤表](http://www.kspub.co.jp/download/) ([2015/05/28 PDF](http://www.kspub.co.jp/download/1529021a.pdf))

## 参加者

| ID                                              | 地域     | 備考           |
|:------------------------------------------------|:---------|:---------------|
| ![](/images/users/mikan_16.png) [mikan](https://github.com/mikan)               | 神奈川県 | 調整役         |
| ![](/images/users/MrBearing_16.png) [MrBearing](https://github.com/MrBearing)       | 大阪府   | 締め役         |
| ![](/images/users/YuichiroSato_16.png) [YuichiroSato](https://github.com/YuichiroSato) | 石川県   | 司会進行代行   |
| ![](/images/users/LagunaPresa_16.png) [LagunaPresa](https://github.com/LagunaPresa)   | 東京都   |                |
| ![](/images/users/intptr-t_16.png) [intptr-t](https://github.com/intptr-t)         | 愛知県   |                |
| ![](/images/users/s-hosoai_16.png) [s-hosoai](https://github.com/s-hosoai)         | 福岡県   | 司会進行役     |
| ![](/images/users/akeboshi_16.png) [akeboshi](https://github.com/akeboshi)         | 神奈川県 | 第2回から参加  |
| ![](/images/users/marishi_16.png) [marishi](https://github.com/marishi)           | 岐阜県   | 第2回から参加  |

## スケジュール

| # | Date & Time (JST) | A | ![](/images/users/mikan_16.png) ![](/images/users/MrBearing_16.png) ![](/images/users/YuichiroSato_16.png) ![](/images/users/LagunaPresa_16.png) ![](/images/users/intptr-t_16.png) ![](/images/users/s-hosoai_16.png) ![](/images/users/akeboshi_16.png) ![](/images/users/marishi_16.png) | Pages | Other work |
|---:|:----------------------:|:-:|:------------------------:|:---------:|:-------------------|
|  1 | 2015-09-20 21:00-23:00 | 6 | :o::o::o::o::o::o::x::x: |   1 -  12 | まえがき等         |
|  2 | 2015-09-27 21:00-23:00 | 8 | :o::o::o::o::o::o::o::o: |  12 -  26 | 　                 |
|  3 | 2015-10-04 21:00-23:00 | 6 | :o::o::o::o::o::x::o::x: |  26 -  43 | 　                 |
|  4 | 2015-10-11 21:00-23:00 | 6 | :o::o::o::o::o::o::x::x: |  43 -  54 | 　                 |
|  5 | 2015-10-18 21:00-23:00 | 6 | :o::o::o::o::o::o::x::x: |           | コードリーディング |
|  6 | 2015-10-25 21:00-23:00 | 6 | :o::o::o::o::o::o::x::x: |  55 -  72 | 　                 |
|  7 | 2015-11-01 21:00-23:00 | 4 | :o::o::x::o::x::o::x::x: |  72 - 110 | 　                 |
|  8 | 2015-11-08 21:00-23:00 | 6 | :o::o::o::o::o::o::x::x: | 111 - 130 | 　                 |
|  9 | 2015-11-15 21:00-23:00 | 5 | :o::x::o::o::o::x::o::x: | 131 - 142 | [次回本投票](https://kagaorange.typeform.com/report/M29YtT/cl8B) |
| 10 | 2015-11-22 21:00-23:00 | 6 | :o::o::o::o::x::o::o::x: | 143 - 156 | [TensorFlow チュートリアル](http://tensorflow.org/tutorials)     |

## 成果物

### 読書ノート

[読書ノート](/note/2-deeplearning)をご覧ください。

## 統計

### 同時参加数

| 項目 | 値 |
|:----:|:--:|
| 最大同時参加数 | 8 |
| 最小同時参加数 | 4 |
| 平均同時参加数 | 5.90 |

### 参加者推移

<canvas id="attendeesChart" width="400" height="200"></canvas>
<script>
var ctx = document.getElementById("attendeesChart").getContext('2d');
var myChart = new Chart(ctx, {
  type: 'line',
  data: {
    labels: Array.apply(1, Array(10)).map(function(_, b) { return b + 1; }),
    datasets: [{
      label: '参加者数',
      data: [6, 8, 6, 6, 6, 6, 4, 6, 5, 6],
      backgroundColor: colors
    }]
  },
  options: lineChartOptions
});
</script>

### 参加回数

<canvas id="rankingChart" width="400" height="200"></canvas>
<script>
var ctx = document.getElementById("rankingChart").getContext('2d');
var myChart = new Chart(ctx, {
  type: 'horizontalBar',
  data: {
    labels: ["mikan", "LagunaPresa", "MrBearing", "YuichiroSato", "intptr-t", "s-hosoai", "akeboshi", "marishi"],
    datasets: [{
      label: '参加回数',
      data: [10, 10, 9, 9, 8, 8, 4, 1],
      backgroundColor: colors
    }]
  },
  options: horizontalBarChartOptions
});
</script>
