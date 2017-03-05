---
layout: subpage
title: 読書ノート - プログラミングElixir
---

[プログラミングElixir](/workshop/10-elixir/)の読書ノートです。

## ノート

### はじめに

**Pix** OTPオプションって何？

OTP は Open telecom Platform の略 (P193 より)。ライブラリ集？

→ [Wikipedia](https://en.wikipedia.org/wiki/Open_Telecom_Platform) を見ると、ミドルウェアであり、ライブラリ、そしてツールらしい。

で、そのオプションとは何を指しているのだろう？

→ 不明。

### 第1章

**P4** OTP のダウンロードにすごい時間かかるので注意・・・。

### 第3章

**P21** `[ head | tail ]` に直接 `1,2,3` は書けないようだ。逆にカッコの二十につけると入れ子を連結できる。

```elixir
[ 4 | [[1,2,3]] ]
```
↓
```elixir
[4, [1, 2, 3]]
```
