# 動画再生

レイヤー上で動画を再生することができます。

オープニングムービー、エンディングムービーなどの用途のほか、
背景に動画を用いることなどもできます。

## 動画の読み込み、再生、停止、解放

動画を再生するには、[`loadvideo`](../ref/command_ref.md#loadvideo-video)コマンドでのレイヤーに動画ファイルを読み込みます。

`loadvideo`コマンドの`autoplay`パラメータを`true`にすると、読み込みと同時に自動的に再生が開始されます。
読み込みだけ行いたい場合は`autoplay: false`と指定します。

```plain
;loadvideo lay: 1, file: "video/sample.mp4", volume: 1.0, loop: true, width: 640, height: 360, x: 0, y: 0, visible: true
```

`autoplay: false`と指定して読み込みだけを実行した場合、再生には[`playvideo`](../ref/command_ref.md#playvideo)コマンドを使用します。

```plain
;playvideo lay: 1
```

読み込んだファイルを停止するには[`stopvideo`](../ref/command_ref.md#stopvideo)コマンドを使用します。

```plain
;stopvideo lay: 1
```

## 動画の再生完了を待つ

動画の最後まで再生し終わるのを待つには、[`waitvideo`](../ref/command_ref.md#waitvideo)コマンドを使用します。
ただし、動画がループ再生されている場合は何もしない（待たずに次に進む）ので注意してください。

## 対応する動画ファイル

再生可能な動画ファイルはブラウザに依存します。
H.264形式で圧縮したmp4ファイルなどが広くサポートされています。
