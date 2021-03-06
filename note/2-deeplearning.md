---
layout: subpage
title: 読書ノート - 深層学習
---

[深層学習](/workshop/2-deeplearning)の読書ノートです。

## 正誤表

討議事項が正誤表に記載されていることがあります。確認してください。

* 入手元: http://www.kspub.co.jp/download/
 * 2015/05/28: http://www.kspub.co.jp/download/1529021a.pdf

## ノート

### 第1章

#### 1.2
```
そもそもニューラルネットワークとは何なのか。
→ 第2章が最も単純なニューラルネットワークの解説になっているので、順を追って読み進めれば良い。
→ 第2〜3章が第一次人工知能ブーム、第4章が第二次人工知能ブーム、第5章以降が第三次人工知能ブームの内容に近いので、順を追いながら体系的な学習が期待できる。
```

### 第2章

#### 2.1
```
2層にならべられたニューラルネットとあるが、図2.2はどういう2層？
→ １層目が入力層、２層目が中間と出力をかねている。
ユニットの数、４→３はたまたま？
→ たまたま。
```

```
関数 f() は全体で１つ？
→１つ、層ごとに作ったりはあるかも。
重みはどこに所属している？
→ 神経細胞のモデルでいうと、枝についている感じ。
```

```
層のユニットの数は試行錯誤？
→ ノリで決めているところもある。誤認識を考慮して適当な数を設定する。
→ 入力と出力は、解決したい課題によって決まる。
```

```
wとbを学習で割り出すのがニューラルネットの本質？
→ まあざっくりいうとそういう感じ。
```

```
教師あり学習は、正しい値を繰り返し入力することで、新たな入力を判別できるようになる。
教師なし学習は、多数の入力をどかどかいれていくことで、同じような信号に同じような活性がおこるようになる。
```

```
図2.3の-5〜5というのはどういう意図？
→ 特に意味はない。値の変化の全体を見せようとしただけと思われる。
```

#### 2.3

記号解説

* `x;w` セミコロン → [Wikipedia](https://ja.wikipedia.org/wiki/%E3%82%BB%E3%83%9F%E3%82%B3%E3%83%AD%E3%83%B3)

#### 2.4
```
対数関数の単調性から結果は同じとは？
→ 対数化した E(w) は、L(w) と同じ結果が期待できる。
→ E(w) = -log(L(w)
```

記号解説

* `||...||` ノルム (絶対値)
* `≡` 恒等 → [Wikipedia](https://ja.wikipedia.org/wiki/%E7%AD%89%E5%8F%B7)
* `exp(...)` 指数関数 → [Wikipedia](https://ja.wikipedia.org/wiki/%E6%8C%87%E6%95%B0%E9%96%A2%E6%95%B0)
* `[...]T` 転置行列 (紙面の都合で横にしたいだけ)

### 第3章

#### 3.1

記号解説

* `argmin(...)` 関数の値が最小になる引数 → [Wikipedia](https://ja.wikipedia.org/wiki/Arg_max)
* `凸関数` もっこりしてるやつ → [Wikipedia](https://ja.wikipedia.org/wiki/%E5%87%B8%E9%96%A2%E6%95%B0)  / [グラフ例 (Google)](https://www.google.co.jp/?gws_rd=ssl#q=%3Dx%5E4-3x%5E3-4x%5E2%2B3x)
* `∇` ナブラ
* `δ` デルタ
* `ε` イプシロン

#### 3.6

記号解説

* `σ` シグマ
* `μ` ミュー

#### 4.2

記号解説

* `∘` アダマール積 → [Wikipedia](https://ja.wikipedia.org/wiki/%E3%82%A2%E3%83%80%E3%83%9E%E3%83%BC%E3%83%AB%E7%A9%8D)

#### 5.3

記号解説

* `φ` ファイ
* `Γ` ガンマ
* `ξ` クサイ

#### 8.4

記号解説

* `∝` 比例  → [Wikipedia](https://ja.wikipedia.org/wiki/%E6%AF%94%E4%BE%8B)

## 参考資料

読書会で共有した各種資料など。

### #1 (2015/09/20)

* 先端IT活用コンソーシアム [松尾豊氏 講演資料](http://aitc.jp/events/20150618-OpenLab/20150618_IoTv2.pdf) (AITCオープンラボ [ #5](http://aitc.jp/events/20150618-OpenLab/info.html))
* 画像解析できるマン http://usagee.co.jp/computer-vision/

### #3 (2015/10/04)

* [C++とJavaでつくるニューラルネットワーク](http://www.personal-media.co.jp/book/comp/247.html)

### #4 (2015/10/11)

* [全微分](http://www.iwata-system-support.com/CAE_HomePage/vector/differential7/differential7.html)

### #7 (2015/11/01)

* [ディープラーニング－畳み込みニューラルネットワークとPythonによる特徴抽出](http://postd.cc/deep-learning-convolutional-neural-networks-and-feature-extraction-with-python/)
* [Clarifai](http://www.clarifai.com/#demo)
