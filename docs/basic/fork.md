# ボタンと条件分岐

ノベルゲームでは、プレイヤーの選択やフラグの状態に応じてシナリオを分岐させることがあります。

Ponkan3で分岐処理を実現する方法は2通りあります。

- ボタンを利用する方法
- 変数（JavaScript）の値によって分岐する方法

## ボタンによる分岐

ボタンを押下したときに
任意のシナリオの位置へジャンプさせたり、
サブルーチンを呼び出すことができます。
また、押下時に任意のJavaScriptを実行することもできます。

ボタンには、

-テキストと背景色のみ指定できる「テキストボタン」
-画像を用いて自由に作成できる「画像ボタン」

の2種類があり、
それぞれ[`textbutton`](../ref/command_ref.md#textbutton-txtbtn)コマンドと
[`imagebutton`](../ref/command_ref.md#imagebutton-imgbtn)コマンドで表示できます。

## テキストボタンの表示

以下のスクリプトは、画面に「テキストボタンのサンプル」というボタンを表示する例です。

```plain
;textbutton {
  lay: 0,
  text: "テキストボタンのサンプル",
  x: 100,
  y: 100,
  width: 500,
  height: 40,
  bgcolors: [0x33B6FF, 0x3D82FF ,0x474FFF],
  bgalphas: [1.0, 1.0, 1.0],
  align: "center",
  exp: "console.log('テキストボタンを押した')",
  jump: true,
  file: "jump_target_file.pon",
  label: "onclick_textbutton",
}
;unlockbuttons
;s
```

ボタンを表示した直後は、まだボタンを押すことはできません。
[`unlockbuttons`](../ref/command_ref.md#unlockbuttons-unlockbutton-unlock)
コマンドを実行して、初めてボタンが押下可能になります。
また、ボタンが押されるのを待っているときはスクリプトを停止しておくべきなので、
必ず [`s`](../ref/command_ref.md#s) コマンドを書くようにしてください。

この例では`jump`、`file`、`label`パラメータを指定しているので、
`file`で指定したスクリプトの`label`の位置へジャンプします。
もし`jump: true`ではなく`call: true`とパラメータを指定していたら、サブルーチンとして呼び出します。
また、`jump`コマンドや`call`コマンドと同じように、ファイル名やラベル名を省略することもできます。

`exp`パラメータは、ボタン押下時に実行するJavaScriptです。
この場合はコンソールに「テキストボタンを押した」と出力されます。

## 画像ボタンの表示

以下のスクリプトは、画面に画像ボタンを表示する例です。

```plain
;imagebutton {
  lay: 0,
  imagefile: "image/image_button.png",
  direction: "horizontal",
  x: 100,
  y: 100,
  exp: "console.log('画像ボタンを押した！')",
  call: true,
  file: "call_target_file.pon",
  label: "onclick_imagebutton",
}
```

画像ボタンでは、ボタンとして表示するための画像ファイルが必要です。
ボタン用の画像は、「通常時」「マウスオーバー時」「マウス押下時」を並べた一枚画像にします。
たとえば次のような画像です。あくまでも一枚の画像であることに注意してください。

![ボタン画像の例](./image/fork_01.png)

横に並べると見づらい場合は、縦方向に並べた画像にして、
`direction`パラメータに`vertical`を指定してください。

![ボタン画像の例2](./image/fork_02.png)

```plain
;imagebutton {
  lay: 0,
  imagefile: "image/image_button.png",
  direction: "vertical",
  x: 100,
  y: 100,
  call: true,
  label: "onclick_imagebutton",
}
```

## 変数（JavaScript）による分岐

[`if`](../ref/command_ref.md#if)コマンドは、指定したJavaScriptの評価結果が`true`の場合のみ、
[`endif`](../ref/command_ref.md#endif)コマンドまでの間を実行します。

以下の例では、`tv.scenarioNum`の値が1なので「現在はシナリオ1です。」と表示されます。

```plain
- tv.scenarioNum = 1;

;if exp: "tv.scenarioNum == 1"
  現在はシナリオ1です。
;endif
```

結果が`false`の場合にも処理を実行したい場合は、`else`コマンドを使用してください。

以下の例では、`tv.scenarioNum`の値が2なので「シナリオ1ではありません。」と表示されます。

```plain
- tv.scenarioNum = 2;

;if exp: "tv.scenarioNum == 1"
  現在はシナリオ1です。
;else
  シナリオ1ではありません。
;endif
```

結果が`false`のとき、さらに追加の条件で判定したいときは、
[`elsif`](../ref/command_ref.md#elseif)コマンドを使用してください。

以下の例では、`tv.scenarioNum`の値が3なので「シナリオ1ではなくて、シナリオ3ですね。」と表示されます。

```plain
- tv.scenarioNum = 3;

;if exp: "tv.scenarioNum == 1"
  現在はシナリオ1です。
;elsif exp: "tv.scenarioNum == 3"
  シナリオ1ではなくて、シナリオ3ですね。
;else
  シナリオ1でも、シナリオ3でもありません。
;endif
```

## 条件式に任意のJavaScriptを使う

ここまでの例では`if`や`elsif`の条件に変数を使ってきましたが、
条件式は任意のJavaScriptが記述できますので、以下の例のようなことも可能です。
（あくまで例なので、あまり意味のある処理にはなっていないことに注意。）

```plain
- tv.scenarioNum = 4;

---
tv.randomJudge = function() {
  if (tv.scenarioNum != 4) {
    return false;
  } else {
    return Math.random() < 0.5;
  }
};
---

;if exp: "tv.randomJudge()"
  君は運がいい。
;endif
```
