# aosn.github.io

## 概要

[aosn.github.io](https://aosn.github.io/) の中身です。

本リポジトリ (の Isssues, Projects および Wiki 機能) は課題本選考やイベントの管理にも利用しています。
課題本選考については、以下の Wiki ページをご一読の上、Isssue を起票することで新規提案を行うことができます。

> Wiki -> [課題本選考](https://github.com/aosn/aosn.github.io/wiki/%E8%AA%B2%E9%A1%8C%E6%9C%AC%E9%81%B8%E8%80%83)

## Web サイト管理

### 編集方法

Jekyll を利用しているので、全ての内容は Markdown です。トップページの中身は `index.md` です。

使える Markdown の記法については、以下を参照してください。

> Quick Reference | kramdown
>
> http://kramdown.gettalong.org/quickref.html

### ユーザーアイコンの取得・配置方法

GitHub ユーザーのアイコンを各ページに使用しています。
新たなユーザーのアイコンを取得する場合やアイコンを更新する場合には、次の簡単なシェルスクリプト ([geticon.sh](geticon.sh)) が使えます。

```
$ ./geticon.sh
Type GitHub user name> 
```

ユーザー名を入力すると、`iamges/users` 以下に 16x16 と 64x64 のアイコンが配置されます。

### 参加統計の計算方法

[activity-push](https://github.com/aosn/activity-push) ユーティリティを使って Markdown のひな型を生成できます。

```bash
go install github.com/aosn/activity-push
$GOPATH/bin/activitiy-push -stat -t <workshop>
```

`<workshop>` には `1-java8` や `8-microservices` などの Markdown ファイル名が入ります (`.md` は不要)。

例として `8-microservices` を与えて実行した場合、次のような出力が得られます。

```
## 統計

### 同時参加数

| 項目 | 値 |
|:----:|:--:|
| 最大同時参加数 | 6 |
| 最小同時参加数 | 3 |
| 平均同時参加数 | 4.40 |

### 参加回数ランキング

| 順位 | 参加者 | 参加回数 |
|:---:|:-------|:--------:|
| 1 | ![](/images/users/LagunaPresa_16.png) [LagunaPresa](https://github.com/LagunaPresa) | 15 |
| 2 | ![](/images/users/mikan_16.png) [mikan](https://github.com/mikan) | 14 |
| 3 | ![](/images/users/intptr-t_16.png) [intptr-t](https://github.com/intptr-t) | 13 |
| 4 | ![](/images/users/kzt-ysmr_16.png) [kzt-ysmr](https://github.com/kzt-ysmr) | 13 |
| 5 | ![](/images/users/akeboshi_16.png) [akeboshi](https://github.com/akeboshi) | 9 |
| 6 | ![](/images/users/MrBearing_16.png) [MrBearing](https://github.com/MrBearing) | 3 |
```

同一順位のサマライズはできていないので、適宜修正を行ってから貼り付けてください。

### 細かな設定

設定ファイルは `_config.yml` です。Jekyll 公式サイトの Configuration に解説があります。

> Configuration - Jekyll • Simple, blog-aware, static sites
>
> https://jekyllrb.com/docs/configuration/

### License

[CC-BY-NC-ND](LICENSE)
