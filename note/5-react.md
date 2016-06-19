---
layout: subpage
title: 読書ノート - 入門 React
---

[入門 React](/workshop/5-react)の読書ノートです。

## 正誤表

討議事項が正誤表に記載されていることがあります。確認してください。

正誤表: [http://public-errata.appspot.com/errata/book/9784873117195/](http://public-errata.appspot.com/errata/book/9784873117195/) (非公式)

## ノート

### 第1章

**P3** XHP って初耳だ。

→ Facebook 内部技術かも。

**P7** React のサーバサイドレンダリングって何がよく使われるのかな？

→ よくわからないのであとのお楽しみということで。

### 第2章

**P11** `セマンティックで意味のあるマークアップ言語` とは・・・ (訳ミス？)

**P12** JSXでセミコロンは書かないといけないの？

→ 書かなくても良いが、書いたほうが文法的に安全。この本ではセミコロンを積極的につけるほうで統一している感じがする。

**P12** JSX は必ず JavaScript に変換されるのか。

→ 事前コンパイルで JavaScript にする方法と、解釈できるライブラリを入れることでコンパイルなしで読ませる方法がある。

**P15** `React.createClass()` に渡すオブジェクトの仕様は？

→ P233、より詳しくは公式サイト: [https://facebook.github.io/react/docs/component-specs.html](https://facebook.github.io/react/docs/component-specs.html)

**P16** `JSXは意図しない結果となります` とあるが、実際どうなるのか？

→ トランスパイラにひっかかるか、ひっかからなくても return がないので undefined になる気がする。

**P19** `dangerouslySetInnerHTML` について。

→ 特に XSS を許しやすい。

**P21** コメントはトランスパイラ通したあとも残るのだろうか。

→ JSX トランスパイラがどう扱うかは分からない。

→ TypeScript はオプションで選べる。

**P21** 紛らわしいが、ここでいう `for` は label のターゲット ID 指定、`class` は主に CSS 等で使うクラス。

**P21** `displayName` ってなんだろう。

→ デバッグ用。P248 に解説あり。

### 第3章

**P28** サンプルコード 6 行目 `return \<input ... /\>;` 不自然なバックスラッシュが 2 つある。

→ Errata？

### 第4章

**P34** React 0.14 で `React.render` は `ReactDOM.render` ([リファレンス](http://facebook.github.io/react/docs/top-level-api.html#reactdom)) に変更された。

**P35** `propTypesで「任意」と指定したプロパティに対してのみ` とあるが、4.1.1 で `isRequired`  を用いて必須は指定する方法があるが、任意を明示的に指定する方法の説明はない。方法がある？あるいは誤訳？

### 第5章

**P43** aside タグは HTML5 で追加された新要素。

### 第6章

**P51** `AnswerRadioInput` の要素 `<label htlmFor={this.state.id}>` とあるが、属性 `htlmFor` は `htmlFor` のタイプミス。

→ 要 Errata 報告

### 第8章

**P63** canvas タグは HTML5 で追加された新要素。

**P64** `React.findDOMNode` は React 0.14 で `ReactDOM.findDOMNode` ([リファレンス](http://facebook.github.io/react/docs/top-level-api.html#reactdom.finddomnode)) に変更された。

### 第9章

**P83** `React.addons.LinkedStateMixin` とは一体・・・

→ React アドオンで提供されているヘルパー関数: [Two-Way Binding Helpers - React](https://facebook.github.io/react/docs/two-way-binding-helpers.html) ([npm package](https://www.npmjs.com/package/react-addons-linked-state-mixin))


**P89** 9.11.4 第一段落に句点が抜けている。

→ 要 Errata 報告

### 第12章

**P110** `React.renderToString` は React 0.14 で `ReactDOMServer.renderToString` ([リファレンス](https://facebook.github.io/react/docs/top-level-api.html#reactdomserver)) に変更された。`renderToStaticMarkup` も同様。

**P112** ところで Node.js で SSR できるのはわかったけど Java どうするの？

→ 公式ドキュメントには Nashorn が挙げられている [Server-side Environments](https://facebook.github.io/react/docs/environments.html)

**P112** SSR だと didMount と willMount が呼ばれない件、ライフサイクルの図を見るとなぜかわかりやすい: [An Introduction to Life Cycle Events in React.js - Tyler McGinnis](http://tylermcginnis.com/an-introduction-to-life-cycle-events-in-react-js/)

**P115** 英語コメント `//get async state if not in props` は原文消し忘れと思われる。

→ 要 Errata 報告



### 参考情報

* React JSFiddle [https://jsfiddle.net/reactjs/69z2wepo/](https://jsfiddle.net/reactjs/69z2wepo/)
* jQuery UI の autocomplete: [https://jqueryui.com/autocomplete/](https://jqueryui.com/autocomplete/)
