# マクロ機能

マクロ機能は、複数のメッセージやコマンドをまとめて一つのコマンドで呼び出せるようにする機能です。

マクロを使うことで、同じようなコマンドを何度も書く手間を省くことができます。

## 使い方

マクロを使うためには、まずはマクロの内容を定義します。

マクロの定義には、[`macro`](../ref/command_ref.md#macro)コマンドと[`endmacro`](../ref/command_ref.md#endmacro)コマンドを利用します。
`macro`と`endmacro`で囲まれた部分が、マクロの内容になります。
`name`パラメータの値がマクロの名前になります。

たとえば以下のように定義すると、`lbr`というマクロが使用できるようになります。
以降は`;lbr`と書けば、`;linebreak`と`;br`を書いたのと同じ動作になります。

```plain
# ゲーム開始スクリプト
;call file: "script/init_system.pon"

# macro～endmacroまでがマクロの内容になります。
;macro name: "lbr"
  ;linebreak
  ;br
;endmacro

こんにちは。
;lbr
「lbr」マクロで、linebreakとbrをまとめて実行しました。
```

## マクロにパラメータを渡す

マクロにパラメータを渡すことができます。

マクロ呼び出し時に、通常のコマンドと同じようにパラメータを渡すと、
渡したパラメータが`mp`という変数の中に入れられた状態でマクロが呼び出されます。

```plain
# キャラクターの名前を"name_layer"に出力するマクロ
;macro name: "print_name"
  ;ch lay: "name_layer", text: "【"
  ;ch lay: "name_layer", text: "&mp.charaname"
  ;ch lay: "name_layer", text: "】"
  ;br lay: "name_layer"
;endmacro

;print_name charname: "太郎"
```

## マクロを定義するタイミング

マクロは、`start.pon` スクリプトの最初のあたりで定義するとよいでしょう。

```plain
# ゲーム開始スクリプト
;call file: "script/init_system.pon"

# マクロの定義
;call file: "script/macro.pon"

こんにちは。
```

*マクロはセーブデータに保存されません。*
ゲーム起動時に毎回定義処理が実行されるように、この位置で定義することをおすすめします。

## 注意事項

- マクロ定義の中に、ラベルは記載できません。
- マクロ定義の中に、セーブマークは記載できません。
