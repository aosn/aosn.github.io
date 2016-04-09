---
layout: subpage
title: 読書ノート - リーダブルコード
---

読書ノート: リーダブルコード
============================

[リーダブルコード](/workshop/4-readablecode)の読書ノートです。

## 正誤表

討議事項が正誤表に記載されていることがあります。確認してください。

* 入手元: http://www.oreilly.co.jp/books/9784873115658/

## ノート

### 第1章

* 理解しやすさと一言で言っても、読む人のレベルを想定するのが難しいよね。
* 研修とか、教育でフォローして欲しいところ。
* OSS は、ある程度できる人が集まるから、ちょっと違うかも。
* でも、クソいと読んでコミットしようとは思わない。

- - -

* 本にも書いてあるけど、読みやすい、読みやすくないは言語には依存しない概念。
* 環境とかはあるかも。コンパイラが扱える変数の長さとか、名前空間とかの制約がある。

- - -

* 三項演算子のネストはたまに書きたい衝動にかられる。
* Apple は長い名前が好き。MPMusicPlayerControllerNowPlayingItemDidChangeNotification とか。

- - -

* [IOCCC](https://ja.wikipedia.org/wiki/IOCCC) とか[汚コードグランプリ](https://codeiq.jp/magazine/2015/02/21347/)とか。
* 手本となるような美しいコードをたくさん読みたい。
* ffmpeg のコードが美しいと言われている。

### 第2章

* retval ではないけど、result とか書いちゃう。意味ある変数にかえると、すごい明快になる。
* 再帰関数とかDBの結果とか、すごい result 使っちゃう。

- - -

* TextMate の ESC で補完ってどうなのよ。
* そんなことより Excel の補完がうざすぎる。

- - -

* イテレーター二文字とか _ms とかは目からうろこ。

- - -

* InputStreamReader isr とか良くないと思う。
* StringBuilder を sBuilder, strBuilder とか。
* arg0 はやめような・・・

- - -

* 本当にあった怖い話 (newNavigationControllerWrappingViewControllerForDataSourceOfClass) [GinkoTempoAppDelegate.m](http://iginkotempo.googlecode.com/svn-history/r47/trunk/GinkoTempo/Classes/GinkoTempoAppDelegate.m)

### 第3章

* filter() は現実世界でいっぱいある・・・ Java 8 の Streeam API とか、Gradle の FileCollection とか。

- - -

* truncate ってあまり馴染みがない: http://eow.alc.co.jp/search?q=truncate
* SQL にはあるみたい。

- - -

* [Off-by-one エラー](https://ja.wikipedia.org/wiki/Off-by-one%E3%82%A8%E3%83%A9%E3%83%BC)なんて名前があったのか。

- - -

* start - end はよく見る。
* head - tail

- - -

* bool 変数名とメソッドの関係・・・ is○○() で is○○ 返却に違和感。

- - -

* size と length 混ざってるのいやだ。
* C++11 で O(1) にするのは揉めたらしい
  ([C++0x標準コンテナのsize()の計算量を規定](http://faithandbrave.hateblo.jp/entry/20090902/1251879571))。


### 第4章

* 配列の中身とか、変数と等号の間とかスペース入れて揃えるか？
* C だとやることが多い
* フォーマッターが対応してくれないとちょっと辛い
* 定義と仕様書を突き合わせるときとか


### 第5章

* 毎回 Javadoc コマンドで怒られる

- - -

* TODO や XXX が残ってるとよくないよね
* TODO つけるだけまだましだよ
* XXX ってどういうときにつける？
 * FIXME > TODO > XXX (mikan)
 * FIXME > XXX > TODO (MrBearing)
 * TODO > FIXME (XXX 使わない) (aruga, s-hosoai, intptr-t)
 * 全部つかわない (YuichiroSato)
 * リーダブルコード的には、XXX > FIXME > TODO > HACK か？
 * つまり、**事前に認識合わせが必要** だよね

- - -

* 基本的には Javadoc を充実させたい。
* 行コメントがあると逆に怖い。コメントが必要なほど注意を要するってことで。
* 例外とかちゃんと書きたい。

- - -

以後、代表が書いたプロダクトコードのコードレビュー大会。

### 第6章

* インラインコメントは是非実践したい。
* インラインコメントできない言語もあるよね。
 * アセンブラ
 * BASIC

- - -

* コミットメッセージにも言えるよね。
 * No Ticket, No Commit も大事。
 * 1 Issue 1 Branch も。
 * Mylyn いいよ～

### 第7章

* ヨーダ記法社内のレガシーコードにうじゃんこあるわ。
* こんなのもよくある。

```java
if ("hoge".equalsIgnoreCase(hoge)) {
    // ...
}
```

* これ昔流行った。
* Groovy の [Safe Navigation Operator](http://docs.groovy-lang.org/latest/html/documentation/index.html#_safe_navigation_operator) (`hoge?.equals`) なんてのもある。知っていれば便利。知らないとなにこれって感じ。

- - -

* 状態遷移図をコードに起こすとき goto あると実装がすごい楽だったり・・・。
* メンテを考慮しない自動生成コードならありかも。

- - -

* ネストが多いほうがいいケースってないよね。
* switch 文のネストはキモい。

- - -

* どっかの偉い先生が return 1 個主義だった。
* 確かに構造化プログラミングの考えに則ると goto に近いが、フローは簡単になるんだからいいよね。

- - -

* 3項演算子、覚えたてのころめっちゃ使った。
* どうでもいいけど、新人の若さゆえの過ち集とか作ってみたいかも。

- - -

* そういえば、オブジェクト指向を dis ってる偉い先生 (COBOL 使い) もいた。
* ダイクストラ先生は COBOL を大変 dis っている。

> ダイクストラ先生「COBOLを使っていると人は無能になってしまう。COBOLの教育は犯罪とみなすべきである。」
> http://itpro.nikkeibp.co.jp/article/NEWS/20110701/361974/

- - -

* 自分は条件式はかならず `x < y` で書いている。
* 数値計算では統一性のためにそのほうが良いこともある。
* 例えば `x > 0 || x < 10` より `0 < x || x < 10` のが良かったり。

### 第8章

* C++ マクロは使うべきか議論しないといけない
* この例 (P107) のようにスコープを最小限にすれば、許容できるかなぁ
* 絶対に使うべきじゃないと言っている人もいる
* 変数定義ならいい
* Scala だと、型安全なマクロがあって、便利

- - -

* 要約変数はいいね
* デバッグもはかどる
* 組み込みでは、スタック量とかプログラムサイズが増える
* いやあそれはコンパイラが頑張ってほしい

- - -

* 説明変数、増えすぎると辛い

- - -

* `x = a || b || c` は JS ではイディオムとして使う
* ただ、自分が書くならコメントつけるかな
* a, b, c 全滅のときとか考えるとちょっと怖い (見落としやすそう)

- - -

* オーバーラップ判定、これ参考になる
* int だといいけど、float, double だと怖い (NaN どうするのとか)

### 第9章

* (フィールドにアクセスしない)「メソッドをできるだけ static にすることだ」というけど、何でもこうするのはちょっとな (意図がわからないときがある)

- - -

* return 1 個主義 vs. return できると確定したとこで return
* やっぱ後者だよね

- - -

* if 文の中に処理を書いてすっきりするの、いいよね。
* 反対派もいる。if なのに条件判定以外のことをしている。
* set(++i) とかにもいえる。return i++ (i がグローバル) とかもいやだ。

- - -

* JS と Python の変数のスコープが拡大されるの、すっごく気持ち悪い。
* REPL 内ではありがたかったりする。

### 第10章

* SmallTalk 本読んだ人はさすがにいないかな・・・
* [Kent Beck 先生](https://ja.wikipedia.org/wiki/%E3%82%B1%E3%83%B3%E3%83%88%E3%83%BB%E3%83%99%E3%83%83%E3%82%AF)はEPやTDDで有名だよね。

- - -

* 「10.8 やりすぎ」は、議論が分かれそう。
* 命令的 vs. 宣言的。好みで別れる。
* 「リファクタリング」には、2箇所までは黙認し、3箇所からはリファクタリングとか書いてある。
* クラスレベルで再検討したほうがいい場合も。
* レビューが大事。
* プルリクレビューはやりやすい。
* レビューは責任の所在によってレビューポイントが変わるよね。

- - -

* ユーティリティを必要以上に作ることってあります？
* プラットフォーム系とかライブラリアンはやるかも。
* 俺の xorshift 実装が火を噴くぜ！

### 第11章

* 代表が大学院時代に書いたコードをレビュー。

```java
  @Override
  protected void update() {
    ILandmarkSensor ls = getTargetRobot().getLandmarkSensor();
    LandmarkSensorData z = (LandmarkSensorData) ls.getSensorData();

    double velocity = getTargetRobot().getCruiseController().getCommandVelocity();
    double angularVelocity = getTargetRobot().getCruiseController()
        .getCommandAngularVelocity();

    List<Particle> tempParticleList_ = Collections
        .synchronizedList(new ArrayList<Particle>());
    List<Particle> updateParticleList = Collections
        .synchronizedList(new ArrayList<Particle>());

    // 初回起動時 荷重移動平均初期化
    if ((w_fast == null) || (w_slow == null)) {
      w_fast = 1.0d;
      w_slow = 1.0d;
    }

//    System.out.println("############# ID :"
//        + this.getTargetRobot().getNetworkNode().getID() + "#################");

    for (Particle pt_old : this.getParticleList()) {
      // 一つ前のステップのパーティクルのクローンを作成
      Particle pt = pt_old.clone();
      // パーティクルを動作モデルにしたがって移動
      pt.getPosition()
          .move(velocity, angularVelocity, Localizationer.STEP_RATE);

      // パーティクルの重み計算
      double weight = calcWeight(z, pt);

      pt.setWeight(weight);
      // 追加
      tempParticleList_.add(pt);
    }

    // 平均計算
    double w_avg = Particle.getWeightAverage(tempParticleList_);
    //System.out.println(Particle.getMeanPosition(tempParticleList_));

    Particle.nomalize(tempParticleList_);// 各パーティクルのウェイトを正規化

    //平均(=mean)を計算して分布の母平均を求める。
    this.estimatePosition = Particle.getMeanPosition(tempParticleList_);

    // 加重移動平均計算
    w_slow = w_slow + getAlphaSlow() * (w_avg - w_slow);
    w_fast = w_fast + getAlphaFast() * (w_avg - w_fast);

    /* ランダムパーティクル注入量決定 */
    double rand_part_rate = 1.0d - (w_fast / w_slow);
    int num_rand_part = 0;

    int particleListSize = this.getParticleList().size();

    printState(w_avg, rand_part_rate);

    if (0.0D < rand_part_rate) {
      num_rand_part = (int) (rand_part_rate * particleListSize);

      // System.out.println("num" + num_rand_part);

      for (int i = 0; i < num_rand_part; i++) {

        // NFIXME 初期ゆう度調整 →正規化されるため問題なし
        updateParticleList.add(createRandomParticle((double) 1.0D
            / (double) particleListSize));
      }
    }

//    System.out.println("Number of Random particle is " + num_rand_part);
//    System.out.println("resumple num is " + (particleListSize - num_rand_part));

    // 再サンプリング
    List<Particle> list = MCLocalizationer.lowVarianceResampling(
        tempParticleList_, particleListSize - num_rand_part);

    updateParticleList.addAll(list);

    this.particleList = updateParticleList;

  }
```
* 入力と出力がぐちゃぐちゃ。入力いっぱいある。
* まずは IN - BODY - OUT 構造にして、ロジックの改善はそっからかな。
* `getParticleList()` が空のときにゼロ除算してしまうリスクがある。

- - -

* みかんが学部時代に書いたコードをレビュー。

> https://github.com/mikan/webcam-viewer/blob/master/cgi-bin/mdevents.py

* print は event list を受け取らないといけない。
* 段落コメントをそのまま method にすれば良い。

- - -

* 「自分の昔のコードを見て「うわぁ」ってなったら、自分が成長している証だ」by akeboshi（名言が生まれた）

### 第12章

* 11章で代表が上げたコードをラバーダッキング。
* 関数の分割をすべきだという結論。
* オブジェクト志向設計もっとやったほうが。
* 座標とGUIは分けた方が良い。
* (本題とは外れるが) 防御的でない点が多い。

- - -

* 「簡単な言葉で説明する」がなかなかできない。どうやったらできるようになるのか。
* やはり訓練あるのみか。視点・視野を広げたい。

### 第13章

* 標準ライブラリどこまで使いこなせるか。
* デファクトなのも使っていくかとか。
* 標準以外を使いまくるとセキュリティリスクも。
* UNIX のツールボックスは、賛否ありそう。

- - -

* 削除はエンバグが怖い。
* テストがあればいいんだけどね。
* grep した結果を Excel に貼る！

- - -

* 使われていないややこしい機能が API にあるとうざい。

- - -

* 最も簡単な解決策を考えるのと同時に、抽象化も大事だよね。
* 抽象化しすぎると、追加された意図がわからくなったりすることもあったり。

### 第14章

* 追加しやすいものを書く、という話だが、rspec だと学習コストが高くてそもそも追加しづらい印象。
* 学習コストと生産性・保守性のトレードオフがある。

- - -

* 「ミニ言語」という言葉にはちょっと違和感がある。

- - -

* エラーメッセージまで気を配るの大事だね。
* Go に assert がないのは、この辺もちゃんと書かせる意図がある。ミニ言語に対する批判にも言及している。 ([FAQ - golang.jp](http://golang.jp/go_faq#assertions))

### 参考情報

* [去る者は日日に疎し - 故事ことわざ辞典](http://kotowaza-allguide.com/sa/sarumonowahibiniutoshi.html)
* [Out of sight, out of mindの意味 - 英和辞典 Weblio辞書](http://ejje.weblio.jp/content/Out+of+sight%2C+out+of+mind)
* [Memoized Recursion・プログラマの区分](http://fumieval.tumblr.com/post/28324791101/%E3%83%97%E3%83%AD%E3%82%B0%E3%83%A9%E3%83%9E%E3%81%AE%E5%8C%BA%E5%88%86)
