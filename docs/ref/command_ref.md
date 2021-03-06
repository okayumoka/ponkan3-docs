# コマンドリファレンス

Ponkan のスクリプトで使用できる全てのコマンドの解説です。

コマンドの中には、長いコマンドをタイプする手間を省くため、別名が設けられているものがあります。
たとえば `startautomode` と `startauto` と `auto` は名前は異なりますが全て同じ動作をします。

## コマンド一覧

### システム

| コマンド名 | 内容 |
|------------|------|
| [laycount](#laycount) | レイヤーの数を変更する |
| [raiseerror](#raiseerror) | エラーを発生させるかどうかの設定 |
| [dumpdebuginfo](#dumpdebuginfo) | デバッグ情報をダンプ |
| [lockgame](#lockgame) | Ponkanのイベント処理を一時的にロックする |
| [unlockgame](#unlockgame) | Ponkanのイベント処理ロックを解除する |
| [clearsysvar](#clearsysvar) | システム変数をクリア |
| [cleargamevar](#cleargamevar) | ゲーム変数をクリア |
| [cleartmpvar](#cleartmpvar) | 一時変数をクリア |
| [savesysvar](#savesysvar) | システム変数を保存する |
| [clickskipopt, clickskip](#clickskipopt-clickskip) | クリックスキップの設定 |
| [quake](#quake) | 画面揺れ効果の開始 |
| [stopquake](#stopquake) | 画面揺れ効果の停止 |
| [waitquake](#waitquake) | 画面揺れ効果の終了待ち |
| [rightclick, rclick](#rightclick-rclick) | 右クリック時の動作を設定する |
| [commandshortcut, cmdsc](#commandshortcut-cmdsc) | コマンドショートカットを設定する |
| [delcommandshortcut, delcmdsc](#delcommandshortcut-delcmdsc) | コマンドショートカットを削除する |

### スクリプト制御

| コマンド名 | 内容 |
|------------|------|
| [s](#s) | スクリプトの実行を停止する |
| [jump](#jump) | スクリプトファイルを移動する |
| [call](#call) | サブルーチンを呼び出す |
| [return](#return) | サブルーチンをから戻る |
| [if](#if) | 条件によって分岐する |
| [elseif, elsif](#elseif-elsif) | 条件によって分岐する |
| [else](#else) | 条件によって分岐する |
| [endif](#endif) | 条件分岐の終了 |
| [for](#for) | 指定回数繰り返す |
| [endfor](#endfor) | forループの終端 |
| [breakfor](#breakfor) | forループから抜ける |
| [startskip, skip](#startskip-skip) | スキップを開始する |
| [stopskip](#stopskip) | スキップを停止する |
| [startautomode, startauto, auto](#startautomode-startauto-auto) | オートモードを開始する |
| [stopautomode, stopauto](#stopautomode-stopauto) | オートモードを停止する |
| [automodeopt, autoopt](#automodeopt-autoopt) | オートモードの設定 |
| [wait](#wait) | 指定時間を待つ |
| [waituntil](#waituntil) | `resetwait`からの経過時間で待つ |
| [resetwait](#resetwait) | `waituntil` の開始地点を設定する |
| [waitclick](#waitclick) | クリック待ちで停止する |

### マクロ

| コマンド名 | 内容 |
|------------|------|
| [macro](#macro) | マクロを定義する |
| [endmacro](#endmacro) | マクロ定義の終わり |

### メッセージ操作

| コマンド名 | 内容 |
|------------|------|
| [messageopt, mesopt](#messageopt-mesopt) | テキストの設定 |
| [chineffect](#chineffect) | 文字表示時エフェクトの設定 |
| [ch](#ch) | 文字を出力する |
| [ruby](#ruby) | ルビを出力する |
| [rubyopt](#rubyopt) | ルビの設定 |
| [br](#br) | 改行する |
| [clear, c](#clear-c) | テキストをクリアする |
| [textspeed](#textspeed) | 文字出力のインターバルを設定 |
| [nowait](#nowait) | 一時的に文字出力インターバルを0にする |
| [endnowait](#endnowait) | nowaitを終了する |
| [textlocate, locate](#textlocate-locate) | 文字表示位置を指定する |
| [indent](#indent) | インデント位置を設定する |
| [endindent](#endindent) | インデント位置をクリアする |
| [linebreak, lb, l](#linebreak-lb-l) | 行末クリック待ちで停止する |
| [pagebreak, pb, p](#pagebreak-pb-p) | 行末クリック待ちで停止する |
| [hidemessages](#hidemessages) | メッセージレイヤを一時的に隠す |

### レイヤー操作

| コマンド名 | 内容 |
|------------|------|
| [layalias](#layalias) | レイヤー名エイリアスを作成する |
| [dellayalias](#dellayalias) | レイヤー名エイリアスを削除する |
| [messagelayer, messagelay, meslay](#messagelayer-messagelay-meslay) | メッセージレイヤーを指定する |
| [linebreakglyph, lbglyph](#linebreakglyph-lbglyph) | 行末グリフに関して設定する |
| [pagebreakglyph, pbglyph](#pagebreakglyph-pbglyph) | ページ末グリフに関して設定する |
| [fillcolor, fill](#fillcolor-fill) | レイヤーを塗りつぶす |
| [clearcolor](#clearcolor) | レイヤー塗りつぶしをクリアする |
| [layopt](#layopt) | レイヤーの設定 |
| [loadimage, image](#loadimage-image) | レイヤーに画像を読み込む |
| [loadchildimage, childimage, ](#loadchildimage-childimage-) | レイヤーに追加で画像を読み込む |
| [freeimage, free, unloadimage](#freeimage-free-unloadimage) | レイヤーの画像を開放する |

### ボタン

| コマンド名 | 内容 |
|------------|------|
| [textbutton, txtbtn](#textbutton-txtbtn) | レイヤーにテキストボタンを配置する |
| [textbuttonopt, txtbtnopt](#textbuttonopt-txtbtnopt) | テキストボタンの設定を変更する |
| [clearbuttons, clearbutton, clearbtn](#clearbuttons-clearbutton-clearbtn) | すべてのボタンをクリアする |
| [cleartextbuttons, cleartextbutton, cleartxtbtn](#cleartextbuttons-cleartextbutton-cleartxtbtn) | テキストボタンをクリアする |
| [imagebutton, imgbtn](#imagebutton-imgbtn) | レイヤーに画像ボタンを配置する |
| [clearimagebuttons, clearimagebutton, clearimgbtn](#clearimagebuttons-clearimagebutton-clearimgbtn) | 画像ボタンをクリアする |
| [togglebutton, tglbtn](#togglebutton-tglbtn) | レイヤーにトグルボタンを配置する |
| [cleartogglebuttons, cleartogglebutton, cleartglbtn](#cleartogglebuttons-cleartogglebutton-cleartglbtn) | トグルボタンをクリアする |
| [lockbuttons, lockbutton, lock](#lockbuttons-lockbutton-lock) | ボタンをロックする |
| [unlockbuttons, unlockbutton, unlock](#unlockbuttons-unlockbutton-unlock) | ボタンをアンロックする |
| [locksystembuttons, locksystembutton, locksystem](#locksystembuttons-locksystembutton-locksystem) | システムボタンをロックする |
| [unlocksystembuttons, unlocksystembutton, unlocksystem](#unlocksystembuttons-unlocksystembutton-unlocksystem) | システムボタンをアンロックする |
| [slider](#slider) | レイヤーにスライダーを配置する |
| [locksliders, lockslider](#locksliders-lockslider) | スライダーをロックする |
| [unlocksliders, unlockslider](#unlocksliders-unlockslider) | スライダーをアンロックする |

### アニメーション

| コマンド名 | 内容 |
|------------|------|
| [frameanim, fanim](#frameanim-fanim) | フレームアニメーションを設定する |
| [startframeanim, startfanim](#startframeanim-startfanim) | フレームアニメーションを開始する |
| [stopframeanim, stopfanim](#stopframeanim-stopfanim) | フレームアニメーションを停止する |
| [waitframeanim, waitfanim](#waitframeanim-waitfanim) | フレームアニメーションの終了を待つ |
| [startmove, move](#startmove-move) | 自動移動を開始する |
| [stopmove](#stopmove) | 自動移動を停止する |
| [waitmove, wm](#waitmove-wm) | 自動移動の終了を待つ |

### レイヤーフィルタ

| コマンド名 | 内容 |
|------------|------|
| [clearfilters, clearfilter](#clearfilters-clearfilter) | フィルタをクリアする |
| [blur](#blur) | ぼかしフィルタ |
| [colorfilter](#colorfilter) | 色補正フィルタ |

### サウンド

| コマンド名 | 内容 |
|------------|------|
| [bufalias](#bufalias) | バッファ番号エイリアスを作成する |
| [delbufalias](#delbufalias) | バッファ番号エイリアスを削除する |
| [loadsound, sound](#loadsound-sound) | 音声をロードする |
| [freesound, unloadsound](#freesound-unloadsound) | 音声を開放する |
| [soundopt](#soundopt) | 音声の設定 |
| [setsoundstop](#setsoundstop) | 音声の設定 |
| [playsound](#playsound) | 音声を再生する |
| [stopsound](#stopsound) | 音声を停止する |
| [fadesound](#fadesound) | 音声をフェードする |
| [fadeoutsound, fadeout](#fadeoutsound-fadeout) | 音声をフェードアウトして再生停止する |
| [fadeinsound, fadein](#fadeinsound-fadein) | 音声をフェードインで再生開始する |
| [waitsoundstop, waitsound](#waitsoundstop-waitsound) | 音声の再生終了を待つ |
| [waitsoundfade, waitfade](#waitsoundfade-waitfade) | 音声のフェード終了を待つ |
| [endfadesound, endfade](#endfadesound-endfade) | 音声のフェードを終了する |

### トランジション

| コマンド名 | 内容 |
|------------|------|
| [backlay](#backlay) | 表ページを裏ページにコピーする |
| [copylay](#copylay) | レイヤ情報をコピーする |
| [currentpage](#currentpage) | 操作対象ページを変更する |
| [preparetrans, pretrans](#preparetrans-pretrans) | トランジションの前準備 |
| [trans](#trans) | トランジションを実行する |
| [stoptrans](#stoptrans) | トランジションを停止する |
| [waittrans, wt](#waittrans-wt) | トランジションの終了を待つ |
| [flip](#flip) | 表ページを裏ページを即座に入れ替える |

### メッセージ履歴

| コマンド名 | 内容 |
|------------|------|
| [historyopt](#historyopt) | メッセージ履歴を設定する |
| [showhistory, history](#showhistory-history) | メッセージ履歴を表示する |
| [historych, hch](#historych-hch) | メッセージ履歴にテキストを出力する |
| [hbr](#hbr) | メッセージ履歴を改行する |

### 動画再生

| コマンド名 | 内容 |
|------------|------|
| [loadvideo, video](#loadvideo-video) | 動画を再生する |
| [freevideo](#freevideo) | 動画を解放する |
| [videoopt](#videoopt) | 動画の設定 |
| [playvideo](#playvideo) | 動画を再生する |
| [pausevideo](#pausevideo) | 動画を一時停止する |
| [stopvideo](#stopvideo) | 動画を停止する |
| [waitvideo](#waitvideo) | 動画再生の終了を待つ |

### セーブ／ロード

| コマンド名 | 内容 |
|------------|------|
| [save](#save) | 最新状態をセーブする |
| [load](#load) | セーブデータから復元する |
| [tempsave](#tempsave) | 一時セーブする |
| [tempload](#tempload) | 一時セーブデータから復元する |
| [lockscreenshot](#lockscreenshot) | 現在の画面でスクリーンショットを固定する |
| [unlockscreenshot](#unlockscreenshot) | スクリーンショットの固定を解除する |
| [copysavedata, copysave](#copysavedata-copysave) | セーブデータをコピーする |
| [deletesavedata, delsavedata, delsave](#deletesavedata-delsavedata-delsave) | セーブデータを削除する |


## システム

### laycount

レイヤーの数を変更する

| パラメータ名 | 値の種類 | 必須 | デフォルト値 | 説明 |
|--------------|----------|------|--------------|------|
| count | 数値(Number) | 〇 |  | レイヤー数 |

レイヤーの総数を変更します。

Ponkan初期化時のレイヤー数は40です。40では多すぎる場合・足りない場合は、
このコマンドでレイヤー数を変更してください。

レイヤー数の変更は頻繁には行わないでください。
ゲーム開始時に必要なレイヤー数に設定し、以後は変更しないという使い方をしてください。

### raiseerror

エラーを発生させるかどうかの設定

| パラメータ名 | 値の種類 | 必須 | デフォルト値 | 説明 |
|--------------|----------|------|--------------|------|
| unknowncommand | 真偽値(Boolean) |  |  | `true` の場合、存在しないコマンドを実行したときにエラーにする |

各種エラーを発生させるか・無視するかの設定を行います。

### dumpdebuginfo

デバッグ情報をダンプ

デバッグ情報をブラウザのコンソールに出力します。

### lockgame

Ponkanのイベント処理を一時的にロックする

Ponkanが行うマウス・タップ・キーボードイベント処理を一時的にロックします。
HTMLで作成したコンフィグ画面などを表示するときなどは、このコマンドで
イベント処理をロックするようにしてください。

### unlockgame

Ponkanのイベント処理ロックを解除する

`lockgame` によるロックを解除します。

### clearsysvar

システム変数をクリア

システム変数を初期化します。すべてのシステム変数が削除されます。

システム変数はゲーム全体を通して使用される変数です。  
ゲーム変数はセーブデータごとに別々の値を保存しますが、システム変数はゲーム全体で一つの値を保存します。

システム変数は、セーブ時やゲーム終了時に自動で保存され、ゲーム起動時に自動で復元されます。

### cleargamevar

ゲーム変数をクリア

ゲーム変数を初期化します。すべてのゲーム変数が削除されます。

ゲーム変数はセーブデータごとに保存させる変数です。シナリオの進行管理などに利用します。

### cleartmpvar

一時変数をクリア

一時変数を初期化します。すべての一時変数が削除されます。

一時変数はセーブデータ等に保存されません。一時的な値（計算の途中の値など）を保持するのに利用します。

### savesysvar

システム変数を保存する

システム変数を保存します。  
システム変数は普通、ゲーム終了時に自動的に保存されますが、
このコマンドを利用して明示的に保存することもできます。

### clickskipopt, clickskip

クリックスキップの設定

| パラメータ名 | 値の種類 | 必須 | デフォルト値 | 説明 |
|--------------|----------|------|--------------|------|
| enabled | 真偽値(Boolean) | 〇 |  | 有効ならtrue、無効ならfalseを指定 |

クリックスキップの有効無効を設定します。  
クリックスキップとは、テキスト表示途中にクリックすると行末・ページ末までスキップする機能のことです。

### quake

画面揺れ効果の開始

| パラメータ名 | 値の種類 | 必須 | デフォルト値 | 説明 |
|--------------|----------|------|--------------|------|
| time | 数値(Number) | 〇 |  | 画面揺れの時間 |
| x | 数値(Number) |  | `20` | 横方向の揺れの最大値 |
| y | 数値(Number) |  | `20` | 縦方向の揺れの最大値 |

画面を揺らす効果を実行します。  
このコマンドは画面揺れが終わるのを待ちません。
画面揺れ効果が終わるまで処理を止めたい場合は、`waitquake` を使用してください。

### stopquake

画面揺れ効果の停止

`quake` で開始した画面揺れ効果を即座に停止します。
画面揺れ効果が実行されていない場合には何もしません。

### waitquake

画面揺れ効果の終了待ち

| パラメータ名 | 値の種類 | 必須 | デフォルト値 | 説明 |
|--------------|----------|------|--------------|------|
| canskip | 真偽値(Boolean) |  | `true` | スキップ可能かどうか |

`quake` で開始した画面揺れ効果の終了を待ちます。  
`canskip: false` とした場合、スキップ処理やクリック等でスキップできなくなります。
イベントシーンなどでは `false` にしたほうが良いでしょう。

### rightclick, rclick

右クリック時の動作を設定する

| パラメータ名 | 値の種類 | 必須 | デフォルト値 | 説明 |
|--------------|----------|------|--------------|------|
| jump | 真偽値(Boolean) |  |  | 右クリック時にjumpする場合はtrue |
| call | 真偽値(Boolean) |  |  | 右クリック時にcallする場合はtrue |
| file | 文字列(String) |  |  | jumpまたはcallするスクリプトファイル名 |
| label | 文字列(String) |  |  | jumpまたはcallするラベル名 |
| enabled | 真偽値(Boolean) |  |  | 右クリックの有効無効 |

右クリックまたは ESC キーを押下時の動作を設定します。

jump と call の両方を false に設定した場合、デフォルトの動作（メッセージレイヤーを隠す）になります。  
jump を true に設定した場合、file と label で指定した場所へジャンプします。  
call を true に設定した場合、file と label で指定した場所でサブルーチンを呼び出します。  

### commandshortcut, cmdsc

コマンドショートカットを設定する

| パラメータ名 | 値の種類 | 必須 | デフォルト値 | 説明 |
|--------------|----------|------|--------------|------|
| ch | 文字列(String) | 〇 |  | ショートカットの文字 |
| command | 文字列(String) | 〇 |  | コマンドの名前 |

コマンドショートカットを設定します。

### delcommandshortcut, delcmdsc

コマンドショートカットを削除する

| パラメータ名 | 値の種類 | 必須 | デフォルト値 | 説明 |
|--------------|----------|------|--------------|------|
| ch | 文字列(String) | 〇 |  | ショートカットの文字 |

コマンドショートカットを削除します。

## スクリプト制御

### s

スクリプトの実行を停止する

スクリプトの実行を停止します。
ボタン（選択肢）の押下待ちなどで使用します。

### jump

スクリプトファイルを移動する

| パラメータ名 | 値の種類 | 必須 | デフォルト値 | 説明 |
|--------------|----------|------|--------------|------|
| file | 文字列(String) |  |  | 移動先のスクリプトファイル名。省略時は現在のファイル内で移動する |
| label | 文字列(String) |  |  | 移動先のラベル名。省略時はファイルの先頭 |
| countpage | 真偽値(Boolean) |  | `true` | 現在の位置を既読にするかどうか |

指定したファイルの、指定したラベルの位置に移動します。

実行中のスクリプトファイルから別のシナリオファイルへ移動する場合、
ファイルの読み込みや解析処理が発生するため、処理に時間がかかる場合があります。  
同じスクリプトファイル内の移動は問題ありません。

### call

サブルーチンを呼び出す

| パラメータ名 | 値の種類 | 必須 | デフォルト値 | 説明 |
|--------------|----------|------|--------------|------|
| file | 文字列(String) |  |  | 移動先のスクリプトファイル名。省略時は現在のファイル内で移動する |
| label | 文字列(String) |  |  | 移動先のラベル名。省略時はファイルの先頭 |
| countpage | 真偽値(Boolean) |  | `false` | 現在の位置を既読にするかどうか |

指定したファイルの、指定したラベルの位置をサブルーチンとして呼び出します。

実行中のスクリプトファイルから別のシナリオファイルへ移動する場合、
ファイルの読み込みや解析処理が発生するため、処理に時間がかかる場合があります。  
同じスクリプトファイル内の移動は問題ありません。

### return

サブルーチンをから戻る

| パラメータ名 | 値の種類 | 必須 | デフォルト値 | 説明 |
|--------------|----------|------|--------------|------|
| forcestart | 真偽値(Boolean) |  | `false` | 戻った後、強制的にシナリオを再開する |
| countpage | 真偽値(Boolean) |  | `true` | 現在の位置を既読にするかどうか |

`call` コマンドで呼び出したサブルーチンから、呼び出し元に戻ります。

`forcestart` は、システムボタンを作成する際に使用します。
システムボタンで呼び出したサブルーチンで `skip` や `auto` を実行しても、通常はサブルーチンから戻るとスクリプトは停止してしまいます。
`forcestart` を `true` にした時は、呼び出し元へ戻ると同時に、`lb` `pb` コマンドなどで停止していたとしても、強制的に再開されます。
ただし `s` コマンドでスクリプトが完全に停止していた場合は停止したままです。

### if

条件によって分岐する

| パラメータ名 | 値の種類 | 必須 | デフォルト値 | 説明 |
|--------------|----------|------|--------------|------|
| exp | 文字列(String) | 〇 |  | 条件式(JavaScript) |


### elseif, elsif

条件によって分岐する


### else

条件によって分岐する


### endif

条件分岐の終了


### for

指定回数繰り返す

| パラメータ名 | 値の種類 | 必須 | デフォルト値 | 説明 |
|--------------|----------|------|--------------|------|
| loops | 数値(Number) | 〇 |  | 繰り替えし回数 |
| indexvar | 文字列(String) |  | `"__index__"` | ループ中のインデックスを格納する変数名 |

`for` コマンドと `endfor` コマンドの間を指定回数繰り返します。  
`indexvar` で指定した名前の一時変数にループ回数が格納されます。
ループ回数は `0` から始まるため、 `0` 〜 `loops - 1` の値をとります。

### endfor

forループの終端


### breakfor

forループから抜ける

現在実行中の `for` ループから抜け、 `endfor` の位置まで移動します。  
`if` コマンドなどと組み合わせて、条件によってループを抜けるときに使います。

### startskip, skip

スキップを開始する

スキップ処理を開始します。

### stopskip

スキップを停止する

スキップ処理を停止します。

### startautomode, startauto, auto

オートモードを開始する

オートモードを開始します。

### stopautomode, stopauto

オートモードを停止する

オートモードを停止します。

### automodeopt, autoopt

オートモードの設定

| パラメータ名 | 値の種類 | 必須 | デフォルト値 | 説明 |
|--------------|----------|------|--------------|------|
| lay | 数値(Number) |  |  | オートモード状態表示に使用するレイヤー |
| time | 数値(Number) |  |  | オートモードのインターバル時間(ms) |

オートモードに関する設定を行います。

`lay` では、オートモード中かどうかを表示するためのレイヤーを指定します。
オートモード中は、ここで指定したレイヤーが強制的に表示状態になります。

### wait

指定時間を待つ

| パラメータ名 | 値の種類 | 必須 | デフォルト値 | 説明 |
|--------------|----------|------|--------------|------|
| time | 数値(Number) | 〇 |  | 停止時間(ms) |
| canskip | 真偽値(Boolean) |  | `true` | スキップ可能かどうか |

指定した時間だけ、スクリプトの動作を停止します。  
`canskip: false` とした場合、スキップ処理やクリック等でスキップできなくなります。
イベントシーンなどでは `false` にしたほうが良いでしょう。

### waituntil

`resetwait`からの経過時間で待つ

| パラメータ名 | 値の種類 | 必須 | デフォルト値 | 説明 |
|--------------|----------|------|--------------|------|
| time | 数値(Number) | 〇 |  | `resetwait`からの経過時間(ms) |
| canskip | 真偽値(Boolean) |  | `true` | スキップ可能かどうか |

`resetwait` コマンドを実行指定した時点から、指定の時間が経過するまで、スクリプトの動作を停止します。  
`canskip: false` とした場合、スキップ処理やクリック等でスキップできなくなります。
イベントシーンなどでは `false` にしたほうが良いでしょう。

`resetwait` と `waituntil` との間には、セーブマークを記述しないでください。

### resetwait

`waituntil` の開始地点を設定する

`waituntil` コマンドで待つときの時間計測開始地点を設定します。
`resetwait` と `waituntil` との間には、セーブマークを記述しないでください。

### waitclick

クリック待ちで停止する

| パラメータ名 | 値の種類 | 必須 | デフォルト値 | 説明 |
|--------------|----------|------|--------------|------|
| canskip | 真偽値(Boolean) |  | `true` | スキップ可能かどうか |

マウスのクリック・画面のタップなどの操作待ちでスクリプトを停止します。  
`canskip: false` とした場合、スキップ処理やクリック等でスキップできなくなります。
イベントシーンなどでは `false` にしたほうが良いでしょう。

## マクロ

### macro

マクロを定義する

| パラメータ名 | 値の種類 | 必須 | デフォルト値 | 説明 |
|--------------|----------|------|--------------|------|
| name | 文字列(String) | 〇 |  | マクロの名前 |

マクロを定義します。  
マクロについての詳細は [マクロを利用する](../macro/) のページを参照にしてください。

### endmacro

マクロ定義の終わり

マクロ定義のl終わりを示します。
マクロについての詳細は [マクロを利用する](../macro/) のページを参照にしてください。

## メッセージ操作

### messageopt, mesopt

テキストの設定

| パラメータ名 | 値の種類 | 必須 | デフォルト値 | 説明 |
|--------------|----------|------|--------------|------|
| lay | 文字列(String) |  | `"message"` | 対象レイヤー |
| page | 文字列(String) |  | `"current"` | 対象ページ |
| fontfamily | 配列(Array) |  |  | フォント名の配列 |
| fontsize | 数値(Number) |  |  | フォントサイズ(px) |
| fontweight | 文字列(String) |  |  | フォントウェイト |
| fontstyle | 文字列(String) |  |  | フォントスタイル。"normal" \| "italic" |
| color | 数値(Number)または配列(Array) |  |  | 文字色。0xRRGGBBで指定すると単色、[0xRRGGBB, 0xRRGGBB, ...]のように配列で指定するとグラデーションになります。 |
| gradientstops | 配列(Array) |  |  | 文字色グラデーションの色の位置。0.0～1.0の数値の配列。([0.0, 0.5, ...]) |
| gradienttype | 文字列(String) |  |  | 文字色グラデーションのタイプ（方向）。"vertical" \| "horizontal"。初期値は"vertical" |
| margint | 数値(Number) |  |  | テキスト描画のマージン 上 |
| marginr | 数値(Number) |  |  | テキスト描画のマージン 右 |
| marginb | 数値(Number) |  |  | テキスト描画のマージン 下 |
| marginl | 数値(Number) |  |  | テキスト描画のマージン 左 |
| pitch | 数値(Number) |  |  | テキストの文字間(px) |
| lineheight | 数値(Number) |  |  | テキストの行の高さ(px) |
| linepitch | 数値(Number) |  |  | テキストの行間(px) |
| align | 文字列(String) |  |  | テキスト寄せの方向。"left" \| "center" \| "right" |
| shadow | 真偽値(Boolean) |  |  | 影の表示非表示 |
| shadowalpha | 数値(Number) |  |  | 影のAlpha(0.0〜1.0) |
| shadowangle | 数値(Number) |  |  | 影の角度(ラジアン) |
| shadowblur | 数値(Number) |  |  | 影のBlur |
| shadowcolor  | 数値(Number) |  |  | 影の色(0xRRGGBB) |
| shadowdistance | 数値(Number) |  |  | 影の距離(px) |
| edgewidth | 数値(Number) |  |  | 縁取りの太さ(px)。0で非表示になる |
| edgecolor | 数値(Number) |  |  | 縁取りの色(0xRRGGBB) |
| edgealpha | 数値(Number) |  |  | 縁取りのAlpha(0.0～1.0) |

テキストに関する設定を行います。

### chineffect

文字表示時エフェクトの設定

| パラメータ名 | 値の種類 | 必須 | デフォルト値 | 説明 |
|--------------|----------|------|--------------|------|
| lay | 文字列(String) |  | `"message"` | 対象レイヤー |
| page | 文字列(String) |  | `"current"` | 対象ページ |
| type | 文字列(String)または配列(Array) |  |  | エフェクトの種類の配列。"alpha" \| "move"。例：["alpha", "move"] |
| time | 数値(Number) |  |  | エフェクトにかける時間(ms)。ゲーム起動時には120msに設定されています。 |
| ease | 文字列(String) |  | `"none"` | エフェクトの入り・抜きの指定。"none" \| "in" \| "out" \| "both" |
| offsetx | 数値(Number) |  |  | type: "move"の場合のみ有効。x方向の移動量 |
| offsety | 数値(Number) |  |  | type: "move"の場合のみ有効。y方向の移動量 |

文字を表示する際のエフェクトを設定します。  
ゲーム起動時には、何もエフェクトをかけない（none）設定になっています。

`type` に設定した値によって、文字を表示する際にエフェクトがかかります。

- `alpha` ： alpha値をフェードしながら表示（フェードイン）
- `move` ：  移動しながら表示

複数のエフェクトを設定することもできます。
たとえば `type: ["alpha", "move"]` と設定すると、移動とフェードを同時に実行します。

### ch

文字を出力する

| パラメータ名 | 値の種類 | 必須 | デフォルト値 | 説明 |
|--------------|----------|------|--------------|------|
| lay | 文字列(String) |  | `"message"` | 出力する先のレイヤー |
| page | 文字列(String) |  | `"current"` | 対象ページ |
| text | 文字列(String) | 〇 |  | 出力する文字 |

指定したレイヤーに文字を出力します。  
デフォルトではカレントメッセージレイヤーが操作対象です。

### ruby

ルビを出力する

| パラメータ名 | 値の種類 | 必須 | デフォルト値 | 説明 |
|--------------|----------|------|--------------|------|
| lay | 文字列(String) |  | `"message"` | 出力する先のレイヤー |
| page | 文字列(String) |  | `"current"` | 対象ページ |
| text | 文字列(String) |  |  | ルビ |

次に出力する文字にルビ（ふりがな）を設定します。

### rubyopt

ルビの設定

| パラメータ名 | 値の種類 | 必須 | デフォルト値 | 説明 |
|--------------|----------|------|--------------|------|
| lay | 文字列(String) |  | `"message"` | 対象レイヤー |
| page | 文字列(String) |  | `"current"` | 対象ページ |
| offset | 数値(Number) |  |  | ルビとメッセージ間の距離(px)。 |
| fontfamily | 配列(Array) |  |  | フォント名の配列 |
| fontsize | 数値(Number) |  |  | フォントサイズ(px) |
| fontweight | 文字列(String) |  |  | フォントウェイト |
| fontstyle | 文字列(String) |  |  | フォントスタイル。"normal" \| "italic" |
| color | 数値(Number)または配列(Array) |  |  | 文字色。0xRRGGBBで指定すると単色、[0xRRGGBB, 0xRRGGBB, ...]のように配列で指定するとグラデーションになります。 |
| gradientstops | 配列(Array) |  |  | 文字色グラデーションの色の位置。0.0～1.0の数値の配列。([0.0, 0.5, ...]) |
| gradienttype | 文字列(String) |  |  | 文字色グラデーションのタイプ（方向）。"vertical" \| "horizontal"。初期値は"vertical" |
| pitch | 数値(Number) |  |  | テキストの文字間(px) |
| shadow | 真偽値(Boolean) |  |  | 影の表示非表示 |
| shadowalpha | 数値(Number) |  |  | 影のAlpha(0.0〜1.0) |
| shadowangle | 数値(Number) |  |  | 影の角度(ラジアン) |
| shadowblur | 数値(Number) |  |  | 影のBlur |
| shadowcolor  | 数値(Number) |  |  | 影の色(0xRRGGBB) |
| shadowdistance | 数値(Number) |  |  | 影の距離(px) |
| edgewidth | 数値(Number) |  |  | 縁取りの太さ(px)。0で非表示になる |
| edgecolor | 数値(Number) |  |  | 縁取りの色(0xRRGGBB) |
| edgealpha | 数値(Number) |  |  | 縁取りのAlpha(0.0～1.0) |

ルビ（ふりがな）に関する設定を行います。

### br

改行する

| パラメータ名 | 値の種類 | 必須 | デフォルト値 | 説明 |
|--------------|----------|------|--------------|------|
| lay | 文字列(String) |  | `"message"` | 出力する先のレイヤー |
| page | 文字列(String) |  | `"current"` | 対象ページ |

指定したレイヤーのテキストを改行します。
デフォルトではカレントメッセージレイヤーが操作対象です。

### clear, c

テキストをクリアする

| パラメータ名 | 値の種類 | 必須 | デフォルト値 | 説明 |
|--------------|----------|------|--------------|------|
| lay | 文字列(String) |  | `"all"` | 対象レイヤー |
| page | 文字列(String) |  | `"current"` | 対象ページ |

指定したレイヤーのテキストをクリアします。
デフォルトでは全レイヤーが対象です。

### textspeed

文字出力のインターバルを設定

| パラメータ名 | 値の種類 | 必須 | デフォルト値 | 説明 |
|--------------|----------|------|--------------|------|
| mode | 文字列(String) |  |  | インターバルのモード。"user" \| "system" |
| unread | 数値(Number) |  |  | ユーザーモードでの未読文章のインターバル時間(ms) |
| read | 数値(Number) |  |  | ユーザーモードでの既読文章のインターバル時間(ms) |
| sysunread | 数値(Number) |  |  | システムモードでの未読文章のインターバル時間(ms) |
| sysread | 数値(Number) |  |  | システムモードでの既読文章のインターバル時間(ms) |

文字出力の、1文字表示するごとのインターバルについて設定します。

通常、インターバル時間は user モードで動作しています。
user モード時は、ユーザー（プレイヤー）が設定画面等から設定した値が利用されます。  
イベントシーンなど、ユーザーの設定した時間ではなく、
常に一定の間隔で表示したい場合は system モードに設定し、
イベントシーンが終わったときに user モードに戻します。

このコマンドとは別に、一時的にインターバル時間を 0 にする [`nowait`](#nowait) コマンドがあります。

### nowait

一時的に文字出力インターバルを0にする

このコマンド実行直後から、文字出力のインターバル時間を一時的に 0 にします。
もとに戻すときは `endnowait` コマンドを使用します。

### endnowait

nowaitを終了する

`nowait` の効果を終了します。j

### textlocate, locate

文字表示位置を指定する

| パラメータ名 | 値の種類 | 必須 | デフォルト値 | 説明 |
|--------------|----------|------|--------------|------|
| lay | 文字列(String) |  | `"message"` | 対象レイヤー |
| page | 文字列(String) |  | `"current"` | 対象ページ |
| x | 数値(Number) |  |  | x座標 |
| y | 数値(Number) |  |  | x座標 |

テキスト表示で、次の文字を表示する位置を変更します。
以後のテキストは指定された位置からの表示となります。

### indent

インデント位置を設定する

| パラメータ名 | 値の種類 | 必須 | デフォルト値 | 説明 |
|--------------|----------|------|--------------|------|
| lay | 文字列(String) |  | `"message"` | 対象レイヤー |
| page | 文字列(String) |  | `"current"` | 対象ページ |
| history | 真偽値(Boolean) |  | `true` | メッセージ履歴もインデントするかどうか |

現在の文字描画位置でインデントするように設定します。
インデント位置は `endindent` または `clear` でクリアされます。

### endindent

インデント位置をクリアする

| パラメータ名 | 値の種類 | 必須 | デフォルト値 | 説明 |
|--------------|----------|------|--------------|------|
| lay | 文字列(String) |  | `"message"` | 対象レイヤー |
| page | 文字列(String) |  | `"current"` | 対象ページ |
| history | 真偽値(Boolean) |  | `true` | メッセージ履歴もインデント解除するか |

`indent` で設定したインデント位置をクリアします。

### linebreak, lb, l

行末クリック待ちで停止する


### pagebreak, pb, p

行末クリック待ちで停止する


### hidemessages

メッセージレイヤを一時的に隠す

メッセージレイヤを一時的に非表示にします。\
非表示中はスクリプトの実行が停止します。クリック等の操作で再開します。

## レイヤー操作

### layalias

レイヤー名エイリアスを作成する

| パラメータ名 | 値の種類 | 必須 | デフォルト値 | 説明 |
|--------------|----------|------|--------------|------|
| name | 文字列(String) | 〇 |  | エイリアス名 |
| lay | 文字列(String) | 〇 |  | 対象レイヤー |

レイヤー名のエイリアス（別名）を作成します。
エイリアスを作成すると、レイヤーを指定するコマンドでレイヤー番号のかわりにエイリアス名を使用することができるようになります。
たとえば以下のように、背景画像を表示するレイヤーに base というようなエイリアスを作成することで、
スクリプト作成時の可読性が向上します。
```
# 背景画像はレイヤー 0 に作成するので、エイリアスを作成する
;layalias name: "base", lay: "0"
# 以後、背景画像は以下のように読み込める
;image lay: "base", file: "image/bg0.png", x: 0, y: 0
```

### dellayalias

レイヤー名エイリアスを削除する

| パラメータ名 | 値の種類 | 必須 | デフォルト値 | 説明 |
|--------------|----------|------|--------------|------|
| name | 文字列(String) | 〇 |  | エイリアス名 |

[`layalias`](#layalias) で設定したレイヤー名エイリアスを削除します。

### messagelayer, messagelay, meslay

メッセージレイヤーを指定する

| パラメータ名 | 値の種類 | 必須 | デフォルト値 | 説明 |
|--------------|----------|------|--------------|------|
| lay | 数値(Number) | 〇 |  | 対象レイヤー |

メッセージレイヤーとして使用するレイヤーを指定します。

スクリプトに書かれたテキストは、メッセージレイヤーに出力されます。  
出力先のレイヤーを切り替えたい場合は、このコマンドで切り替えるか、
もしくは [`ch`](#ch) コマンドなどを使用して出力してください。

### linebreakglyph, lbglyph

行末グリフに関して設定する

| パラメータ名 | 値の種類 | 必須 | デフォルト値 | 説明 |
|--------------|----------|------|--------------|------|
| lay | 数値(Number) |  |  | グリフとして使用するレイヤー |
| pos | 文字列(String) |  |  | グリフの表示位置。<br>"eol"を指定すると文章の末尾に表示。<br>"relative"を指定するとメッセージレイヤーとの相対位置で固定表示。<br>"absolute"を指定すると画面上の絶対位置で固定表示。 |
| verticalalign | 文字列(String) |  |  | グリフの縦方向の揃え位置。<br>"top"を指定すると行の上端に揃えて表示。<br>"middle"を指定すると行の中央に揃えて表示。<br>"bottom"を指定すると行の下端に揃えて表示。<br>"text-top"を指定すると直前の一文字の上端に揃えて表示。<br>"text-middle"を指定すると直前の一文字の中央に揃えて表示。 |
| x | 数値(Number) |  |  | グリフの表示位置。`pos: "relative"` または `pos: "absolute"` の場合のみ有効。 |
| y | 数値(Number) |  |  | グリフの表示位置。`pos: "relative"` または `pos: "absolute"` の場合のみ有効。 |
| marginx | 数値(Number) |  |  | グリフの表示位置のマージン。`pos: "relative"` の場合のみ有効。この値分だけ、本来の位置から補正されます。 |
| marginy | 数値(Number) |  |  | グリフの表示位置のマージン。`pos: "relative"` の場合のみ有効。この値分だけ、本来の位置から補正されます。 |

行末クリック待ち中に表示されるグリフに関して設定します。  

### pagebreakglyph, pbglyph

ページ末グリフに関して設定する

| パラメータ名 | 値の種類 | 必須 | デフォルト値 | 説明 |
|--------------|----------|------|--------------|------|
| lay | 数値(Number) |  |  | グリフとして使用するレイヤー |
| pos | 文字列(String) |  |  | グリフの表示位置。<br>"eol"を指定すると文章の末尾に表示。<br>"relative"を指定するとメッセージレイヤーとの相対位置で固定表示。<br>"absolute"を指定すると画面上の絶対位置で固定表示。 |
| verticalalign | 文字列(String) |  |  | グリフの縦方向の揃え位置。<br>"top"を指定すると行の上端に揃えて表示。<br>"middle"を指定すると行の中央に揃えて表示。<br>"bottom"を指定すると行の下端に揃えて表示。<br>"text-top"を指定すると直前の一文字の上端に揃えて表示。<br>"text-middle"を指定すると直前の一文字の中央に揃えて表示。 |
| x | 数値(Number) |  |  | グリフの表示位置。`pos: "relative"` または `pos: "absolute"` の場合のみ有効。 |
| y | 数値(Number) |  |  | グリフの表示位置。`pos: "relative"` または `pos: "absolute"` の場合のみ有効。 |
| marginx | 数値(Number) |  |  | グリフの表示位置のマージン。ここで指定した分だけ、本来の位置から補正されます。 |
| marginy | 数値(Number) |  |  | グリフの表示位置のマージン。ここで指定した分だけ、本来の位置から補正されます。 |

ページ末クリック待ち中に表示されるグリフに関して設定します。  

### fillcolor, fill

レイヤーを塗りつぶす

| パラメータ名 | 値の種類 | 必須 | デフォルト値 | 説明 |
|--------------|----------|------|--------------|------|
| lay | 文字列(String) | 〇 |  | 対象レイヤー |
| page | 文字列(String) |  | `"current"` | 対象ページ |
| color | 数値(Number) | 〇 |  | 塗りつぶし色(0xRRGGBB) |
| alpha | 数値(Number) |  | `1.0` | 塗りつぶしのAlpha(0.0〜1.0) |

指定されたレイヤーを単色で塗りつぶします。

### clearcolor

レイヤー塗りつぶしをクリアする

| パラメータ名 | 値の種類 | 必須 | デフォルト値 | 説明 |
|--------------|----------|------|--------------|------|
| lay | 文字列(String) | 〇 |  | 対象レイヤー |
| page | 文字列(String) |  | `"current"` | 対象ページ |

[`fillcolor`](#fillcolor-fill) コマンドでのレイヤー塗りつぶしをクリアします。

### layopt

レイヤーの設定

| パラメータ名 | 値の種類 | 必須 | デフォルト値 | 説明 |
|--------------|----------|------|--------------|------|
| lay | 文字列(String) | 〇 |  | 対象レイヤー |
| page | 文字列(String) |  | `"current"` | 対象ページ |
| visible | 真偽値(Boolean) |  |  | 表示非表示 |
| x | 数値(Number) |  |  | x座標(px) |
| y | 数値(Number) |  |  | y座標(px) |
| width | 数値(Number) |  |  | 幅(px) |
| height | 数値(Number) |  |  | 高さ(px) |
| alpha | 数値(Number) |  | `1.0` | レイヤーのAlpha(0.0〜1.0) |
| autohide | 真偽値(Boolean) |  |  | hidemessagesで同時に隠すかどうか |
| scalex | 数値(Number) |  |  | x軸方向のスケール。1.0で等倍 |
| scaley | 数値(Number) |  |  | y軸方向のスケール。1.0で等倍 |
| ignorequake | 真偽値(Boolean) |  |  | quakeコマンドの対象外フラグ。このフラグをtrueにするとquakeで揺れなくなります。 |
| blocklclick | 真偽値(Boolean) |  |  | 左クリックイベントを遮断するかどうか |
| blockrclick | 真偽値(Boolean) |  |  | 右クリックイベントを遮断するかどうか |
| blockcclick | 真偽値(Boolean) |  |  | 中クリックイベントを遮断するかどうか |
| blockmove | 真偽値(Boolean) |  |  | マウス移動イベントを遮断するかどうか |
| blockwheel | 真偽値(Boolean) |  |  | マウスホイールイベントを遮断するかどうか |

レイヤーに関して設定します。

### loadimage, image

レイヤーに画像を読み込む

| パラメータ名 | 値の種類 | 必須 | デフォルト値 | 説明 |
|--------------|----------|------|--------------|------|
| lay | 文字列(String) | 〇 |  | 対象レイヤー |
| page | 文字列(String) |  | `"current"` | 対象ページ |
| file | 文字列(String) | 〇 |  | 読み込む画像ファイルパス |
| visible | 真偽値(Boolean) |  |  | 表示非表示 |
| x | 数値(Number) |  |  | x座標(px) |
| y | 数値(Number) |  |  | y座標(px) |
| alpha | 数値(Number) |  | `1.0` | レイヤーのAlpha(0.0〜1.0) |

指定のレイヤーに画像ファイルを読み込みます。  
画像読み込み後、レイヤーのサイズを画像と同じサイズに変更します。

### loadchildimage, childimage, 

レイヤーに追加で画像を読み込む

| パラメータ名 | 値の種類 | 必須 | デフォルト値 | 説明 |
|--------------|----------|------|--------------|------|
| lay | 文字列(String) | 〇 |  | 対象レイヤー |
| page | 文字列(String) |  | `"current"` | 対象ページ |
| file | 文字列(String) | 〇 |  | 読み込む画像ファイルパス |
| x | 数値(Number) | 〇 |  | x座標(px) |
| y | 数値(Number) | 〇 |  | y座標(px) |
| alpha | 数値(Number) |  | `1.0` | 表示非表示 |

[`loadimage`](#loadimage-image) コマンドとは別に、追加で画像を読み込みます。

### freeimage, free, unloadimage

レイヤーの画像を開放する

| パラメータ名 | 値の種類 | 必須 | デフォルト値 | 説明 |
|--------------|----------|------|--------------|------|
| lay | 文字列(String) | 〇 |  | 対象レイヤー |
| page | 文字列(String) |  | `"current"` | 対象ページ |

レイヤーに読み込まれた画像をすべて解放します。

## ボタン

### textbutton, txtbtn

レイヤーにテキストボタンを配置する

| パラメータ名 | 値の種類 | 必須 | デフォルト値 | 説明 |
|--------------|----------|------|--------------|------|
| lay | 文字列(String) | 〇 |  | 対象レイヤー |
| page | 文字列(String) |  | `"current"` | 対象ページ |
| btnname | 文字列(String) |  |  | ボタンの名前 |
| jump | 真偽値(Boolean) |  | `true` | ボタン押下時にjumpする場合はtrue |
| call | 真偽値(Boolean) |  |  | ボタン押下時にcallする場合はtrue |
| file | 文字列(String) |  |  | ボタン押下時にjumpまたはcallするスクリプトファイル名 |
| label | 文字列(String) |  |  | ボタン押下時にjumpまたはcallするラベル名 |
| onclick | 文字列(String) |  |  | マウスポインタが重なったタイミングで実行するJavaScript |
| onleave | 文字列(String) |  |  | マウスポインタが出ていったタイミングで実行するJavaScript |
| onclick | 文字列(String) |  |  | ボタン押下時に実行するJavaScript |
| text | 文字列(String) |  | `""` | テキスト |
| x | 数値(Number) |  | `0` | x座標(px) |
| y | 数値(Number) |  | `0` | y座標(px) |
| width | 数値(Number) | 〇 |  | 幅(px) |
| height | 数値(Number) | 〇 |  | 高さ(px) |
| bgcolors | 配列(Array) | 〇 |  | 背景色の配列(0xRRGGBB)。通常時、マウスオーバー時、マウス押下時の順。例：[0xFF0000, 0x00FF00, 0x0000FF] |
| bgalphas | 配列(Array) |  | `[1` | 背景色のAlphaの配列(0.0〜1.0)。通常時、マウスオーバー時、マウス押下時の順 |
| system | 真偽値(Boolean) |  | `false` | システム用ボタンとする場合はtrue |
| margint | 数値(Number) |  | `0` | テキスト描画のマージン（上）。 |
| marginr | 数値(Number) |  | `0` | テキスト描画のマージン（右）。 |
| marginb | 数値(Number) |  | `0` | テキスト描画のマージン（下）。 |
| marginl | 数値(Number) |  | `0` | テキスト描画のマージン（左）。 |
| align | 文字列(String) |  | `"center"` | テキスト寄せの方向。"left" \| "center" \| "right" |
| countpage | 真偽値(Boolean) |  | `true` | 現在の位置を既読にするかどうか |
| enterbuf | 文字列(String) |  | `""` | マウスポインタが重なったタイミングで再生する音声の音声バッファ |
| leavebuf | 文字列(String) |  | `""` | マウスポインタが出て行ったタイミングで再生する音声の音声バッファ |
| clickbuf | 文字列(String) |  | `""` | ボタン押下時に再生する音声の音声バッファ |
| keyindex | 数値(Number) |  |  | キーボードでボタンを選択するときの選択順。小さい順に選択される。省略時は追加した順となる。 |

指定のレイヤーに、テキストと背景色を用いたボタンを配置します。
配置直後はボタンはロックされた状態となり、押下することはできません。
`unlockbuttons` コマンドでロック状態を解除することで、押下できるようになります。

### textbuttonopt, txtbtnopt

テキストボタンの設定を変更する

| パラメータ名 | 値の種類 | 必須 | デフォルト値 | 説明 |
|--------------|----------|------|--------------|------|
| lay | 文字列(String) | 〇 |  | 対象レイヤー |
| page | 文字列(String) |  | `"current"` | 対象ページ |
| btnname | 文字列(String) | 〇 |  | 対象のボタンの名前 |
| bgcolors | 配列(Array) |  |  | 背景色の配列(0xRRGGBB)。通常時、マウスオーバー時、マウス押下時の順。例：[0xFF0000, 0x00FF00, 0x0000FF] |
| bgalphas | 配列(Array) |  |  | 背景色のAlphaの配列(0.0〜1.0)。通常時、マウスオーバー時、マウス押下時の順 |

指定されたレイヤーのテキストボタンの設定を変更します。
変更対象のテキストボタンは、ボタンの名前（`textbutton` の `btnname` で設定した名前）で指定します。

### clearbuttons, clearbutton, clearbtn

すべてのボタンをクリアする

| パラメータ名 | 値の種類 | 必須 | デフォルト値 | 説明 |
|--------------|----------|------|--------------|------|
| lay | 文字列(String) | 〇 |  | 対象レイヤー |
| page | 文字列(String) |  | `"current"` | 対象ページ |

指定されたレイヤーのテキストボタン、画像ボタン、トグルボタンをすべて解放します。

### cleartextbuttons, cleartextbutton, cleartxtbtn

テキストボタンをクリアする

| パラメータ名 | 値の種類 | 必須 | デフォルト値 | 説明 |
|--------------|----------|------|--------------|------|
| lay | 文字列(String) | 〇 |  | 対象レイヤー |
| page | 文字列(String) |  | `"current"` | 対象ページ |

指定されたレイヤーのテキストボタンをクリアします。

### imagebutton, imgbtn

レイヤーに画像ボタンを配置する

| パラメータ名 | 値の種類 | 必須 | デフォルト値 | 説明 |
|--------------|----------|------|--------------|------|
| lay | 文字列(String) | 〇 |  | 対象レイヤー |
| page | 文字列(String) |  | `"current"` | 対象ページ |
| jump | 真偽値(Boolean) |  | `true` | ボタン押下時にjumpする場合はtrue |
| call | 真偽値(Boolean) |  |  | ボタン押下時にcallする場合はtrue |
| file | 文字列(String) |  |  | ボタン押下時にjumpまたはcallするスクリプトファイル名 |
| label | 文字列(String) |  |  | ボタン押下時にjumpまたはcallするラベル名 |
| onclick | 文字列(String) |  |  | マウスポインタが重なったタイミングで実行するJavaScript |
| onleave | 文字列(String) |  |  | マウスポインタが出ていったタイミングで実行するJavaScript |
| onclick | 文字列(String) |  |  | ボタン押下時に実行するJavaScript |
| imagefile | 文字列(String) | 〇 |  | ボタンにする画像ファイル |
| x | 数値(Number) |  | `0` | x座標(px) |
| y | 数値(Number) |  | `0` | y座標(px) |
| direction | 文字列(String) |  | `"horizontal"` | ボタン画像ファイルの向き。"horizontal"なら横並び、"vertical"なら縦並び" |
| system | 真偽値(Boolean) |  | `false` | システム用ボタンとする場合はtrue |
| countpage | 真偽値(Boolean) |  | `true` | 現在の位置を既読にするかどうか |
| enterbuf | 文字列(String) |  | `""` | マウスポインタが重なったタイミングで再生する音声の音声バッファ |
| leavebuf | 文字列(String) |  | `""` | マウスポインタが出て行ったタイミングで再生する音声の音声バッファ |
| clickbuf | 文字列(String) |  | `""` | ボタン押下時に再生する音声の音声バッファ |
| keyindex | 数値(Number) |  |  | キーボードでボタンを選択するときの選択順。小さい順に選択される。省略時は追加した順となる。 |

指定のレイヤーに、画像を用いたボタンを配置します。
配置直後はボタンはロックされた状態となり、押下することはできません。
`unlockbuttons` コマンドでロック状態を解除することで、押下できるようになります。

### clearimagebuttons, clearimagebutton, clearimgbtn

画像ボタンをクリアする

| パラメータ名 | 値の種類 | 必須 | デフォルト値 | 説明 |
|--------------|----------|------|--------------|------|
| lay | 文字列(String) | 〇 |  | 対象レイヤー |
| page | 文字列(String) |  | `"current"` | 対象ページ |

指定されたレイヤーの画像ボタンをクリアします。

### togglebutton, tglbtn

レイヤーにトグルボタンを配置する

| パラメータ名 | 値の種類 | 必須 | デフォルト値 | 説明 |
|--------------|----------|------|--------------|------|
| lay | 文字列(String) | 〇 |  | 対象レイヤー |
| page | 文字列(String) |  | `"current"` | 対象ページ |
| statevar | 文字列(String) | 〇 |  | 選択状態を格納する一時変数の名前。 |
| jump | 真偽値(Boolean) |  | `true` | ボタン押下時にjumpする場合はtrue |
| call | 真偽値(Boolean) |  |  | ボタン押下時にcallする場合はtrue |
| file | 文字列(String) |  |  | ボタン押下時にjumpまたはcallするスクリプトファイル名 |
| label | 文字列(String) |  |  | ボタン押下時にjumpまたはcallするラベル名 |
| onclick | 文字列(String) |  |  | マウスポインタが重なったタイミングで実行するJavaScript |
| onleave | 文字列(String) |  |  | マウスポインタが出ていったタイミングで実行するJavaScript |
| onclick | 文字列(String) |  |  | ボタン押下時に実行するJavaScript |
| imagefile | 文字列(String) | 〇 |  | トグルボタンにする画像ファイル |
| x | 数値(Number) |  | `0` | x座標(px) |
| y | 数値(Number) |  | `0` | y座標(px) |
| direction | 文字列(String) |  | `"horizontal"` | ボタン画像ファイルの向き。"horizontal"なら横並び、"vertical"なら縦並び" |
| system | 真偽値(Boolean) |  | `false` | システム用ボタンとする場合はtrue |
| countpage | 真偽値(Boolean) |  | `true` | 現在の位置を既読にするかどうか |
| enterbuf | 文字列(String) |  | `""` | マウスポインタが重なったタイミングで再生する音声の音声バッファ |
| leavebuf | 文字列(String) |  | `""` | マウスポインタが出て行ったタイミングで再生する音声の音声バッファ |
| clickbuf | 文字列(String) |  | `""` | ボタン押下時に再生する音声の音声バッファ |
| keyindex | 数値(Number) |  |  | キーボードでボタンを選択するときの選択順。小さい順に選択される。省略時は追加した順となる。 |

指定のレイヤーに、画像を用いたトグルボタンを配置します。
配置直後はボタンはロックされた状態となり、押下することはできません。
`unlockbuttons` コマンドでロック状態を解除することで、押下できるようになります。

トグルボタンは通常のボタンと異なり、オン・オフの二種類の状態を持ちます。
機能のオン・オフの切り替えなどに利用することができます。

オン状態のとき、statevarで設定した一時変数にtrueが設定されます。
オフ状態のときはfalseが設定されます。

### cleartogglebuttons, cleartogglebutton, cleartglbtn

トグルボタンをクリアする

| パラメータ名 | 値の種類 | 必須 | デフォルト値 | 説明 |
|--------------|----------|------|--------------|------|
| lay | 文字列(String) | 〇 |  | 対象レイヤー |
| page | 文字列(String) |  | `"current"` | 対象ページ |

指定されたレイヤーのトグルボタンをクリアします。

### lockbuttons, lockbutton, lock

ボタンをロックする

| パラメータ名 | 値の種類 | 必須 | デフォルト値 | 説明 |
|--------------|----------|------|--------------|------|
| lay | 文字列(String) |  | `"all"` | 対象レイヤー |
| page | 文字列(String) |  | `"current"` | 対象ページ |

指定されたレイヤーのボタンをロックし、押下できないようにします。

### unlockbuttons, unlockbutton, unlock

ボタンをアンロックする

| パラメータ名 | 値の種類 | 必須 | デフォルト値 | 説明 |
|--------------|----------|------|--------------|------|
| lay | 文字列(String) |  | `"all"` | 対象レイヤー |
| page | 文字列(String) |  | `"current"` | 対象ページ |

指定されたレイヤーのボタンのロックを解除し、押下できる状態にします。  
このコマンドでボタンを押下可能にした後は、直後に `s` コマンドでスクリプトの実行を停止してください。

### locksystembuttons, locksystembutton, locksystem

システムボタンをロックする

| パラメータ名 | 値の種類 | 必須 | デフォルト値 | 説明 |
|--------------|----------|------|--------------|------|
| lay | 文字列(String) |  | `"all"` | 対象レイヤー |
| page | 文字列(String) |  | `"current"` | 対象ページ |

指定されたレイヤーのシステムボタンをロックし、押下できないようにします。

### unlocksystembuttons, unlocksystembutton, unlocksystem

システムボタンをアンロックする

| パラメータ名 | 値の種類 | 必須 | デフォルト値 | 説明 |
|--------------|----------|------|--------------|------|
| lay | 文字列(String) |  | `"all"` | 対象レイヤー |
| page | 文字列(String) |  | `"current"` | 対象ページ |

指定されたレイヤーのシステムボタンのロックを解除し、押下できる状態にします。

### slider

レイヤーにスライダーを配置する

| パラメータ名 | 値の種類 | 必須 | デフォルト値 | 説明 |
|--------------|----------|------|--------------|------|
| lay | 文字列(String) | 〇 |  | 対象レイヤー |
| page | 文字列(String) |  | `"current"` | 対象ページ |
| x | 数値(Number) |  | `0` | x座標(px) |
| y | 数値(Number) |  | `0` | y座標(px) |
| value | 数値(Number) |  | `0` | 初期値(0.0～1.0) |
| onchange | 文字列(String)または関数(function) |  | `""` | 値変更時に実行する関数 |
| back | 文字列(String) | 〇 |  | スライダーの背景用画像のファイルパス |
| fore | 文字列(String) | 〇 |  | スライダーの表面画像のファイルパス |
| button | 文字列(String) | 〇 |  | スライダーの表面画像のファイルパス |
| enterbuf | 文字列(String) |  | `""` | マウスポインタがスライダーに重なったタイミングで再生する音声の音声バッファ |
| leavebuf | 文字列(String) |  | `""` | マウスポインタがスライダーから出て行ったタイミングで再生する音声の音声バッファ |
| clickbuf | 文字列(String) |  | `""` | スライダー押下時に再生する音声の音声バッファ |

指定のレイヤーに、画像を用いたスライダーを配置します。
配置直後はロックされた状態となり、押下することはできません。
`unlockslider` コマンドでロック状態を解除することで、押下できるようになります。

### locksliders, lockslider

スライダーをロックする

| パラメータ名 | 値の種類 | 必須 | デフォルト値 | 説明 |
|--------------|----------|------|--------------|------|
| lay | 文字列(String) |  | `"all"` | 対象レイヤー |
| page | 文字列(String) |  | `"current"` | 対象ページ |

指定レイヤーのスライダーをロックし、押下できない状態にします。

### unlocksliders, unlockslider

スライダーをアンロックする

| パラメータ名 | 値の種類 | 必須 | デフォルト値 | 説明 |
|--------------|----------|------|--------------|------|
| lay | 文字列(String) |  | `"all"` | 対象レイヤー |
| page | 文字列(String) |  | `"current"` | 対象ページ |

指定レイヤーのスライダーのロックを解除し、押下できる状態にします。

## アニメーション

### frameanim, fanim

フレームアニメーションを設定する

| パラメータ名 | 値の種類 | 必須 | デフォルト値 | 説明 |
|--------------|----------|------|--------------|------|
| lay | 文字列(String) | 〇 |  | 対象レイヤー |
| page | 文字列(String) |  | `"current"` | 対象ページ |
| loop | 真偽値(Boolean) |  | `false` | アニメーションをループさせるかどうか |
| time | 数値(Number) | 〇 |  | 1フレームの時間 |
| width | 数値(Number) | 〇 |  | 1フレームの幅 |
| height | 数値(Number) | 〇 |  | 1フレームの高さ |
| frames | 配列(Array) | 〇 |  | フレーム指定 |

指定レイヤーにフレームアニメーションを設定します。  
フレームアニメーションの詳細については [フレームアニメーション]("../frameanim/") を参照してください。

### startframeanim, startfanim

フレームアニメーションを開始する

| パラメータ名 | 値の種類 | 必須 | デフォルト値 | 説明 |
|--------------|----------|------|--------------|------|
| lay | 文字列(String) | 〇 |  | 対象レイヤー |
| page | 文字列(String) |  | `"current"` | 対象ページ |

指定レイヤーに読み込まれたフレームアニメーションを再生開始します。

### stopframeanim, stopfanim

フレームアニメーションを停止する

| パラメータ名 | 値の種類 | 必須 | デフォルト値 | 説明 |
|--------------|----------|------|--------------|------|
| lay | 文字列(String) | 〇 |  | 対象レイヤー |
| page | 文字列(String) |  | `"current"` | 対象ページ |

指定レイヤーのフレームアニメーションを停止します。  
停止したアニメーションをもう一度再生したい場合は、
改めて `frameanim` コマンドで設定してから `startframeanim` コマンドを実行てください。

### waitframeanim, waitfanim

フレームアニメーションの終了を待つ

| パラメータ名 | 値の種類 | 必須 | デフォルト値 | 説明 |
|--------------|----------|------|--------------|------|
| lay | 文字列(String) | 〇 |  | 対象レイヤー |
| page | 文字列(String) |  | `"current"` | 対象ページ |
| canskip | 真偽値(Boolean) |  | `true` | スキップ可能かどうか |

指定レイヤーのフレームアニメーションの終了を待ちます。  
実行されているフレームアニメーションが無い場合やループ再生の場合は何もしません。

### startmove, move

自動移動を開始する

| パラメータ名 | 値の種類 | 必須 | デフォルト値 | 説明 |
|--------------|----------|------|--------------|------|
| lay | 文字列(String) | 〇 |  | 対象レイヤー |
| page | 文字列(String) |  | `"current"` | 対象ページ |
| time | 数値(Number) | 〇 |  | 自動移動させる時間 |
| delay | 数値(Number) |  | `0` | 開始までの遅延時間(ms) |
| path | 配列(Array) | 〇 |  | 自動移動させる位置を指定 |
| type | 文字列(String) |  | `"linear"` | 自動移動のタイプ。"linear" \| "bezier2" \| "bezier3" \| "catmullrom" |
| ease | 文字列(String) |  | `"none"` | 自動移動の入り・抜きの指定。"none" \| "in" \| "out" \| "both" |
| loop | 真偽値(Boolean) |  |  | 自動移動をループさせるかどうか。タイプが "linear" か "catmullrom" の場合のみ有効 |

レイヤーの自動移動を開始します。
自動移動に関しては [自動移動](../automove/) のページを参照してください。

### stopmove

自動移動を停止する

| パラメータ名 | 値の種類 | 必須 | デフォルト値 | 説明 |
|--------------|----------|------|--------------|------|
| lay | 文字列(String) |  | `"all"` | 対象レイヤー |
| page | 文字列(String) |  | `"current"` | 対象ページ |

レイヤーの自動移動を停止します。  
停止後、レイヤーの状態は自動移動が終わった時点の状態になります。

### waitmove, wm

自動移動の終了を待つ

| パラメータ名 | 値の種類 | 必須 | デフォルト値 | 説明 |
|--------------|----------|------|--------------|------|
| canskip | 真偽値(Boolean) |  | `true` | スキップ可能かどうか |

レイヤーの自動移動の終了を待ちます。  
自動移動中のレイヤーが無い場合やループ再生の場合はなにもしません。

## レイヤーフィルタ

### clearfilters, clearfilter

フィルタをクリアする

| パラメータ名 | 値の種類 | 必須 | デフォルト値 | 説明 |
|--------------|----------|------|--------------|------|
| lay | 文字列(String) | 〇 |  | 対象レイヤー |
| page | 文字列(String) |  | `"current"` | 対象ページ |

指定レイヤーに設定されたすべてのフィルタをクリアします。

### blur

ぼかしフィルタ

| パラメータ名 | 値の種類 | 必須 | デフォルト値 | 説明 |
|--------------|----------|------|--------------|------|
| lay | 文字列(String) | 〇 |  | 対象レイヤー |
| page | 文字列(String) |  | `"current"` | 対象ページ |
| blurx | 数値(Number) |  | `4` | x軸方向のぼかし |
| blury | 数値(Number) |  | `4` | y軸方向のぼかし |
| quality | 数値(Number) |  | `4` | ぼかしの品質 |

レイヤーにぼかしフィルタを設定します。

### colorfilter

色補正フィルタ

| パラメータ名 | 値の種類 | 必須 | デフォルト値 | 説明 |
|--------------|----------|------|--------------|------|
| lay | 文字列(String) | 〇 |  | 対象レイヤー |
| page | 文字列(String) |  | `"current"` | 対象ページ |
| gamma | 数値(Number) |  |  | ガンマ値補正 |
| saturation | 数値(Number) |  |  | 彩度 |
| contrast | 数値(Number) |  |  | コントラスト |
| brightness | 数値(Number) |  |  | 輝度 |
| red | 数値(Number) |  |  | 色調（赤） |
| green | 数値(Number) |  |  | 色調（緑） |
| blue | 数値(Number) |  |  | 色調（青） |

レイヤーに色補正フィルタを設定します。

## サウンド

### bufalias

バッファ番号エイリアスを作成する

| パラメータ名 | 値の種類 | 必須 | デフォルト値 | 説明 |
|--------------|----------|------|--------------|------|
| name | 文字列(String) | 〇 |  | エイリアス名 |
| buf | 文字列(String) | 〇 |  | 対象レイヤー |

バッファのエイリアス（別名）を作成します。
エイリアスを作成すると、バッファ番号を指定するコマンドでバッファ番号のかわりにエイリアス名を使用することができるようになります。
たとえば以下のように、効果音を再生するバッファに se というようなエイリアスを作成することで、
スクリプト作成時の可読性が向上します。
```
# 効果音はバッファ 0 に作成するので、エイリアスを作成する
;bufalias name: "se", buf: "0"
# 以後、効果音は以下のように読み込める
;loadsound "buf": "se", "file": "sound/pekowave1.mp3"
```

### delbufalias

バッファ番号エイリアスを削除する

| パラメータ名 | 値の種類 | 必須 | デフォルト値 | 説明 |
|--------------|----------|------|--------------|------|
| name | 文字列(String) | 〇 |  | エイリアス名 |

バッファ番号エイリアスを削除します。

### loadsound, sound

音声をロードする

| パラメータ名 | 値の種類 | 必須 | デフォルト値 | 説明 |
|--------------|----------|------|--------------|------|
| buf | 文字列(String) | 〇 |  | 読み込み先バッファ番号 |
| file | 文字列(String) | 〇 |  | 読み込む音声ファイルパス |

指定の音声バッファに音声ファイルを読み込みます。

### freesound, unloadsound

音声を開放する

| パラメータ名 | 値の種類 | 必須 | デフォルト値 | 説明 |
|--------------|----------|------|--------------|------|
| buf | 文字列(String) | 〇 |  | 読み込み先バッファ番号 |

指定の音声バッファの音声を解放します。
使用が終わった音声はこのコマンドで解放するようにしてください。

### soundopt

音声の設定

| パラメータ名 | 値の種類 | 必須 | デフォルト値 | 説明 |
|--------------|----------|------|--------------|------|
| buf | 文字列(String) | 〇 |  | バッファ番号 |
| volume | 数値(Number) |  |  | 音量(0.0〜1.0) |
| gvolume | 数値(Number) |  |  | グローバル音量(0.0〜1.0) |
| seek | 数値(Number) |  |  | シーク位置(ms) |
| loop | 真偽値(Boolean) |  |  | ループ再生するかどうか |

音声に関して設定します。

### setsoundstop

音声の設定

| パラメータ名 | 値の種類 | 必須 | デフォルト値 | 説明 |
|--------------|----------|------|--------------|------|
| buf | 文字列(String) | 〇 |  | バッファ番号 |
| jump | 真偽値(Boolean) |  | `true` | jumpする場合はtrue |
| call | 真偽値(Boolean) |  | `false` | callする場合はtrue |
| file | 文字列(String) |  |  | jumpまたはcallするスクリプトファイル名 |
| label | 文字列(String) |  |  | jumpまたはcallするラベル名 |

音声が最後まで再生されて停止したときの動作を設定します。
この設定は、音声が変更された、または音声が停止されたときにクリアされます。

stopsoundなどのタグで停止された場合には動作しません。
このコマンドを実行した場合は、できるだけ速く`s`コマンドでスクリプトを停止してください。

### playsound

音声を再生する

| パラメータ名 | 値の種類 | 必須 | デフォルト値 | 説明 |
|--------------|----------|------|--------------|------|
| buf | 文字列(String) | 〇 |  | 読み込み先バッファ番号 |

指定の音声バッファに読み込まれた音声を再生します。

### stopsound

音声を停止する

| パラメータ名 | 値の種類 | 必須 | デフォルト値 | 説明 |
|--------------|----------|------|--------------|------|
| buf | 文字列(String) | 〇 |  | 読み込み先バッファ番号 |

指定の音声バッファの再生を停止します。

### fadesound

音声をフェードする

| パラメータ名 | 値の種類 | 必須 | デフォルト値 | 説明 |
|--------------|----------|------|--------------|------|
| buf | 文字列(String) | 〇 |  | 読み込み先バッファ番号 |
| volume | 数値(Number) | 〇 |  | フェード後の音量(0.0〜1.0) |
| time | 数値(Number) | 〇 |  | フェード時間(ms) |
| autostop | 真偽値(Boolean) |  | `false` | フェード終了後に再生停止するか |

指定の音声バッファの音量をフェードします。  
このコマンドではフェード完了まで待ちません。フェードを待つ場合は `waitfade` コマンドを使用してください。

### fadeoutsound, fadeout

音声をフェードアウトして再生停止する

| パラメータ名 | 値の種類 | 必須 | デフォルト値 | 説明 |
|--------------|----------|------|--------------|------|
| buf | 文字列(String) | 〇 |  | 読み込み先バッファ番号 |
| time | 数値(Number) | 〇 |  | フェード時間(ms) |
| autostop | 真偽値(Boolean) |  | `true` | フェード終了後に自動的に再生停止するか |

指定の音声バッファをフェードアウトします。  
このコマンドではフェード完了まで待ちません。フェードを待つ場合は `waitfade` コマンドを使用してください。

### fadeinsound, fadein

音声をフェードインで再生開始する

| パラメータ名 | 値の種類 | 必須 | デフォルト値 | 説明 |
|--------------|----------|------|--------------|------|
| buf | 文字列(String) | 〇 |  | 読み込み先バッファ番号 |
| volume | 数値(Number) | 〇 |  | フェード後の音量(0.0〜1.0) |
| time | 数値(Number) | 〇 |  | フェード時間(ms) |

指定の音声バッファをフェードインしながら再生開始します。
このコマンドではフェード完了まで待ちません。フェードを待つ場合は `waitfade` コマンドを使用してください。

### waitsoundstop, waitsound

音声の再生終了を待つ

| パラメータ名 | 値の種類 | 必須 | デフォルト値 | 説明 |
|--------------|----------|------|--------------|------|
| buf | 文字列(String) | 〇 |  | 読み込み先バッファ番号 |
| canskip | 真偽値(Boolean) |  | `true` | スキップ可能かどうか |

指定の音声バッファの音声が最後まで再生されるのを待ちます。  
再生中でない場合やループ再生中の場合はなにもしません。

### waitsoundfade, waitfade

音声のフェード終了を待つ

| パラメータ名 | 値の種類 | 必須 | デフォルト値 | 説明 |
|--------------|----------|------|--------------|------|
| buf | 文字列(String) | 〇 |  | 読み込み先バッファ番号 |
| canskip | 真偽値(Boolean) |  | `true` | スキップ可能かどうか |

指定の音声バッファのフェードが完了するのを待ちます。

### endfadesound, endfade

音声のフェードを終了する

| パラメータ名 | 値の種類 | 必須 | デフォルト値 | 説明 |
|--------------|----------|------|--------------|------|
| buf | 文字列(String) | 〇 |  | 読み込み先バッファ番号 |

指定の音声バッファのフェードを終了します。  
音声バッファの音量は即座にフェード後の音量になります。

## トランジション

### backlay

表ページを裏ページにコピーする

| パラメータ名 | 値の種類 | 必須 | デフォルト値 | 説明 |
|--------------|----------|------|--------------|------|
| lay | 文字列(String) |  | `"all"` | 対象レイヤー |

表ページの状態を裏ページにコピーします。

### copylay

レイヤ情報をコピーする

| パラメータ名 | 値の種類 | 必須 | デフォルト値 | 説明 |
|--------------|----------|------|--------------|------|
| srclay | 数値(Number) | 〇 |  | コピー元レイヤー |
| destlay | 数値(Number) | 〇 |  | コピー先レイヤー |
| srcpage | 文字列(String) |  | `"fore"` | コピー元ページ |
| destpage | 文字列(String) |  | `"fore"` | コピー先ページ |

`srclay` のレイヤーの状態を `destlay` のレイヤーにコピーします。

### currentpage

操作対象ページを変更する

| パラメータ名 | 値の種類 | 必須 | デフォルト値 | 説明 |
|--------------|----------|------|--------------|------|
| page | 文字列(String) | 〇 |  | 操作対象ページ（"fore" \| "back" ）を指定 |

操作対象ページを変更します。

通常、操作対象ページは表ページ（画面に見えている側）になっていますが、
トランジションを利用する場合は裏ページを操作します。
その際に各コマンドで `page: "back"` と指定しても良いですが、
このコマンドで操作対象ページを `"back"` に設定すれば、
以後 `trans` コマンドが実行されるまで裏ページが操作対象になります。

### preparetrans, pretrans

トランジションの前準備

表ページの情報を裏ページにコピーし、操作対象を裏ページに変更します。  
`backlay` コマンドと `currentpage page: "back"` コマンドを実行したのと同じ状態となります。

### trans

トランジションを実行する

| パラメータ名 | 値の種類 | 必須 | デフォルト値 | 説明 |
|--------------|----------|------|--------------|------|
| time | 数値(Number) | 〇 |  | トランジションの時間(ms) |
| method | 文字列(String) |  | `"crossfade"` | トランジションの種類 |
| rule | 文字列(String) |  | `""` | 自動移動をループさせるかどうか。タイプが "linear" か "catmullrom" の場合のみ有効 |
| vague | 数値(Number) |  | `0.25` | あいまい値 |

トランジションを実行します。  
トランジションの詳細は [トランジション](../transition) のページを参照してください。

このコマンドはトランジションの完了を待ちません。終了するまで待つ場合は `waittrans` コマンドを使用してください。

### stoptrans

トランジションを停止する

トランジションを即座に停止します。
各レイヤーの状態は、通常通りトランジションが完了したのと同じ状態になります。

### waittrans, wt

トランジションの終了を待つ

| パラメータ名 | 値の種類 | 必須 | デフォルト値 | 説明 |
|--------------|----------|------|--------------|------|
| canskip | 真偽値(Boolean) |  | `true` | スキップ可能かどうか |

トランジションが完了するのを待ちます。  
`canskip: false` とした場合、スキップ処理やクリック等でスキップできなくなります。
イベントシーンなどでは `false` にしたほうが良いでしょう。

### flip

表ページを裏ページを即座に入れ替える

表ページと裏ページを即座に入れ替えます。  
トランジションとは違い、なんの効果（演出）も無しで即適用されます。

## メッセージ履歴

### historyopt

メッセージ履歴を設定する

| パラメータ名 | 値の種類 | 必須 | デフォルト値 | 説明 |
|--------------|----------|------|--------------|------|
| output | 真偽値(Boolean) |  |  | メッセージレイヤに文字を出力するかどうか |
| enabled | 真偽値(Boolean) |  |  | メッセージレイヤを表示できるかどうか |

メッセージ履歴に関して設定します。

### showhistory, history

メッセージ履歴を表示する

メッセージ履歴を表示します。

### historych, hch

メッセージ履歴にテキストを出力する

| パラメータ名 | 値の種類 | 必須 | デフォルト値 | 説明 |
|--------------|----------|------|--------------|------|
| text | 文字列(String) | 〇 |  | 出力する文字 |

メッセージ履歴に指定のテキストを出力します。

### hbr

メッセージ履歴を改行する

メッセージ履歴のテキストを改行します。

## 動画再生

### loadvideo, video

動画を再生する

| パラメータ名 | 値の種類 | 必須 | デフォルト値 | 説明 |
|--------------|----------|------|--------------|------|
| lay | 文字列(String) | 〇 |  | 対象レイヤー |
| page | 文字列(String) |  | `"current"` | 対象ページ |
| file | 文字列(String) | 〇 |  | 動画ファイル |
| width | 数値(Number) | 〇 |  | 動画の幅(px) |
| height | 数値(Number) | 〇 |  | 動画の高さ(px) |
| autoplay | 真偽値(Boolean) |  | `true` | 読み込み完了後に自動的に再生するかどうか |
| loop | 真偽値(Boolean) |  | `false` | ループ再生するかどうか |
| volume | 数値(Number) |  | `1.0` | 音量(0.0〜1.0) |
| visible | 真偽値(Boolean) |  |  | 表示非表示 |
| x | 数値(Number) |  |  | x座標(px) |
| y | 数値(Number) |  |  | y座標(px) |
| alpha | 数値(Number) |  | `1.0` | レイヤーのAlpha(0.0〜1.0) |

指定のレイヤーに動画ファイルを読み込み、再生します。
動画の再生はストリーミング方式で行われます。  
ネットワーク回線によっては、動画がスムーズに再生できない可能性があります。

動画のサイズ（幅・高さ）は無視され、指定した幅・高さで再生されます。
また、レイヤーサイズも同じサイズに変更されます。

対応する動画ファイル形式は、プレイするブラウザに依存します。

### freevideo

動画を解放する

| パラメータ名 | 値の種類 | 必須 | デフォルト値 | 説明 |
|--------------|----------|------|--------------|------|
| lay | 文字列(String) | 〇 |  | 対象レイヤー |
| page | 文字列(String) |  | `"current"` | 対象ページ |

動画を解放します。
動画再生が完了したら、必ずこのコマンドで解放するようにしてください。

### videoopt

動画の設定

| パラメータ名 | 値の種類 | 必須 | デフォルト値 | 説明 |
|--------------|----------|------|--------------|------|
| lay | 文字列(String) | 〇 |  | 対象レイヤー |
| page | 文字列(String) |  | `"current"` | 対象ページ |
| volume | 数値(Number) |  |  | 音量(0.0〜1.0) |
| loop | 真偽値(Boolean) |  |  | ループ再生するかどうか |

動画に関して設定します。

### playvideo

動画を再生する

| パラメータ名 | 値の種類 | 必須 | デフォルト値 | 説明 |
|--------------|----------|------|--------------|------|
| lay | 文字列(String) | 〇 |  | 対象レイヤー |
| page | 文字列(String) |  | `"current"` | 対象ページ |

動画再生を開始します。

### pausevideo

動画を一時停止する

| パラメータ名 | 値の種類 | 必須 | デフォルト値 | 説明 |
|--------------|----------|------|--------------|------|
| lay | 文字列(String) | 〇 |  | 対象レイヤー |
| page | 文字列(String) |  | `"current"` | 対象ページ |

動画再生を一時停止します。
再生再開するにはplayvideoコマンドを使用します。

### stopvideo

動画を停止する

| パラメータ名 | 値の種類 | 必須 | デフォルト値 | 説明 |
|--------------|----------|------|--------------|------|
| lay | 文字列(String) | 〇 |  | 対象レイヤー |
| page | 文字列(String) |  | `"current"` | 対象ページ |

動画再生を終了します。

### waitvideo

動画再生の終了を待つ

| パラメータ名 | 値の種類 | 必須 | デフォルト値 | 説明 |
|--------------|----------|------|--------------|------|
| canskip | 真偽値(Boolean) |  | `true` | スキップ可能かどうか |

動画再生の終了を待ちます。  
動画再生中のレイヤーが無い場合やループ再生の場合はなにもしません。

## セーブ／ロード

### save

最新状態をセーブする

| パラメータ名 | 値の種類 | 必須 | デフォルト値 | 説明 |
|--------------|----------|------|--------------|------|
| num | 数値(Number) | 〇 |  | セーブ番号 |

最後に通過したセーブポイントの状態をセーブします。
セーブ／ロードの詳細は [セーブ／ロード](../save-and-load/)を参照してください。

### load

セーブデータから復元する

| パラメータ名 | 値の種類 | 必須 | デフォルト値 | 説明 |
|--------------|----------|------|--------------|------|
| num | 数値(Number) | 〇 |  | セーブ番号 |

指定のセーブデータをロードします。

### tempsave

一時セーブする

| パラメータ名 | 値の種類 | 必須 | デフォルト値 | 説明 |
|--------------|----------|------|--------------|------|
| num | 数値(Number) | 〇 |  | セーブ番号 |

一時領域に、このコマンドを実行したときの状態を保存します。

ここで保存したセーブデータは通常のセーブデータとは別に保持されます。
また、あくまで一時領域に保存するだけなので、ゲームが終了するときに破棄されます。

右クリックサブルーチンの開始時にこのコマンドで状態を保存しておき、
右クリックサブルーチンが終わったときに `tempload` でまとめて復元する、というような用途で使用します。

### tempload

一時セーブデータから復元する

| パラメータ名 | 値の種類 | 必須 | デフォルト値 | 説明 |
|--------------|----------|------|--------------|------|
| num | 数値(Number) | 〇 |  | セーブ番号 |
| sound | 真偽値(Boolean) |  | `false` | 音声もロードするかどうか |
| toback | 真偽値(Boolean) |  | `false` | 表ページを裏ページとして復元するかどうか |

`tempsave` で保存した一時セーブデータをロードします。

`toback: true` を指定したときは、一時セーブデータの表ページ―の情報を
裏ページ側に復元します。レイヤーの状態をトランジションで復元したい場合などに利用します。

### lockscreenshot

現在の画面でスクリーンショットを固定する

現在の画面の状態でスクリーンショットを取ります。  
取得されたスクリーンショットは `save` コマンドで保存されます。  
セーブ画面に入った直後にこのコマンドでスクリーンショットの状態を固定し、
セーブ画面から抜けるときに `unlockscreenshot` で解除する、というような使い方をします。

### unlockscreenshot

スクリーンショットの固定を解除する


### copysavedata, copysave

セーブデータをコピーする

| パラメータ名 | 値の種類 | 必須 | デフォルト値 | 説明 |
|--------------|----------|------|--------------|------|
| srcnum | 数値(Number) | 〇 |  | コピー元のセーブ番号 |
| destnum | 数値(Number) | 〇 |  | コピー先のセーブ番号 |


### deletesavedata, delsavedata, delsave

セーブデータを削除する

| パラメータ名 | 値の種類 | 必須 | デフォルト値 | 説明 |
|--------------|----------|------|--------------|------|
| num | 数値(Number) | 〇 |  | セーブ番号 |


