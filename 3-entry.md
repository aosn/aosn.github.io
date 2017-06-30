---
layout: page
title: エントリー
---

## 概要

AOSN 読書会に参加したい、という方は、以下の参加条件と実施環境をご確認の上、エントリー方法に従ってエントリーをお願いします。

## 参加条件

必要なのは、以下の3点です。

* 毎週日曜の夜、時間を確保すること
* 快適に音声通話できる環境を整えること
* 対象本を読み切る心意気

参加に必要なスキルについては、特に定めておりません。AOSN 読書会では、異分野の人が集まって1つの技術について語り合うことで、オープンで視野の広い議論の場を提供します。人によって事前知識が異なっていることを前提に輪読を進めており、不明点については全員で調べたり、また知っている所はフォローし合ったりしながら参加者全員の理解度向上を目指しています。

お試し参加や、途中の回からの参加や離脱もできます。都合により自宅以外から参加したい時は ROM 参加も認めています。

## 実施環境

以下のアカウントをご用意ください。

* [GitHub](https://github.com/join)
* [Discord](https://discordapp.com/register)

また、音声通話ができる機器 (ヘッドセットまたはスピーカー＋マイク) と安定したインターネット環境をご用意ください。

## エントリー方法

以下のフォームに記入して送信してください。

<form method="POST" action="https://6ai0xdga9k.execute-api.us-east-2.amazonaws.com/prod/aosn-entry">
<table>
<tr><th>GitHub ID</th><td><input name="id" size="15" maxlength="40" required /></td></tr>
<tr><th>名前 (アルファベット)</th><td><input name="name" size="20" maxlength="40" required /></td></tr>
<tr><th>Email (受信可能なもの)</th><td><input type="email" name="email" size="40" maxlength="40" required /></td>
</tr>
<tr><th>参加枠</th><td> 
<label><input type="radio" name="part" value="ab" checked />Aパート+Bパート</label>
<label><input type="radio" name="part" value="a" />Aパート</label>
<label><input type="radio" name="part" value="b" />Bパート</label>
<label><input type="radio" name="part" value="-" />未定</label>
</td></tr>
<tr><th>コメント</th><td><input name="Comment" size="50" maxlength="50" /></td></tr>
</table>
<input type="submit" />
</form>

管理者が申請を確認したら、記入した E-mail アドレス宛に Slack と Discord の招待を送りますので、ご対応ください。

なお、管理・登録作業は [![](/images/users/mikan_16.png "mikan")](https://github.com/mikan) [mikan](Https://github.com/mikan) と [![](/images/users/MrBearing_16.png "MrBearing")](https://github.com/MrBearing) [MrBearing](Https://github.com/MrBearing) が担当しています。

## よくある質問

#### お試し参加をしたいのですが、その場合も上記のエントリーが必要ですか？

はい。お手数ですが、エントリーしてください。

#### いま読んでいる (これから読む) 本が読み終わったら、どうするのですか？

現行の対象本の参加者から[運営ポリシー](/policy)に従って次回本の候補を提案してもらい、最後に投票によって決定します。

#### Aパート・Bパートとは何ですか？

AOSN読書会で最新の技術書が対象で輪読会形式のAパート、選書基準を緩和した討論会形式のBパートの2つのパートを運営しています。

Bパートを置いている主な目的は、[運営ポリシー](/policy)では拾えないが、皆で読む・または議論する価値のある本をしっかり扱うことです。また、Aパートの対象本に興味ない人でも継続して読書会に参加するきっかけを提供し続ける場としても機能しています。

#### 紙の本と電子書籍で迷っています。どちらを買うべきですか？

どちらでも構いません。なお、輪読をスムーズに進めるには、ページ数でジャンプできるフォーマット (つまり、紙または PDF 版の電子書籍) のほうが適していますが、もちろんそれ以外のフォーマットの方のために配慮もしています。

複数の参加者がそれぞれ異なるフォーマットで輪読するこで、紙の本ではありえないようなエラッタの発見につながるというメリットもあります。

#### 原著しか持っていないのですが、参加できますか？

対象書籍が訳書で、英語等の原著を所持している場合は、そちらでの参加も可能です。ただし輪読は日本語 (訳書) で行いますので、原著のみ所有する参加者は音読をスキップします。

なお、訳書にて正誤表未掲載のエラッタを発見した場合には、原著にも影響する内容かどうか調べるのに役立つことがあります。
