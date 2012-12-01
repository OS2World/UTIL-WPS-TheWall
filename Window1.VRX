/*:VRX         Main
*/
/*
 * The Wall - OS/2 Wallpaper Changer
 *            VX-REXX Version
 *
 * [HISTORY]
 * Version 0.10 (30/Oct/95)
 * > 壁紙を自動的に変更する仕組みはほぼ完成。
 * Version 0.20 (01/Nov/95)
 * > INItial fileを読み込んで初期設定をできるようにした。
 * > 画面上でのディレクトリの変更を可能にした。
 * > INItial fileをブートドライブの\OS2ディレクトリの下に指定。
 * > サブディレクトリ内のファイルも使用可能。
 * > ビットマップの表示順序をファイル名順表示、ランダム表示が選択可能。
 * > タイマーの単位（秒・分）を選択可能。
 * Version 0.21 (02/Nov/95)
 * > タイマーのInterval変更時即座に反映されない不具合を修正。
 * > BITMAP, ICONリソースの取込。
 * Version 0.21.a (02/Nov/95)
 * > Timerの初期表示が'Second'になってしまう不具合を修正（表示の問題で機能に影響はない）。
 * Version 0.21.b (06/Nov/95)
 * > ちょっとしたデザインの変更（フォントの指定がメイン）。
 * Version 0.22 (07/Nov/95)
 * > デフォルトのビットマップ・ディレクトリをブート・ドライブのOS2\BITMAPに指定。
 * > ビットマップを変更するプッシュ・ボタンを追加。
 * > 壁紙が変わるまでの残り時間の表示。
 * Version 0.23 (08/Nov/95)
 * > 起動時Wallを最小化する機能の追加。
 * > タイマーの時間単位を変更してもSaveボタンがEnableにならない不具合を解消。
 * Version 0.23.a (10/Nov/95)
 * > 壁紙が変更されたときに表示される残り時間が０になる不具合の修正。
 * > このバージョンは修正後すぐに0.30の作成が開始されたため未公開。
 * Version 0.30 (10/Nov/95)
 * > ビットマップの一覧表示の機能の追加とそれに伴う仕様の変更。
 * > File SearchとLoading Bitmapのインジケータの機能の追加。
 * > 全ての操作・設定がマウスのみでできるように変更。
 * > その他細かい修正がいろいろと...
 * Version 0.30.a (10/Nov/95)
 * > フォントの指定の不具合を修正。
 * Version 0.40 (14/Nov/95) since 13/Nov/95
 * > INItialファイルの設定に戻すUndoボタンの追加とそれに伴うレイアウトの変更。
 * > INItialファイルの場所をブートドライブのOS2ディレクトリからカレントに変更。
 * > ビットマップのプレビューエリアの追加。
 * > 起動時最小化するタイミングの修正。
 * > VX-REXXのConsoleをOS/2 Window listに表示させないように変更。
 * > ウィンドウのサイズが使用する機能によって変更されるようになった。
 * > 専用インストーラーの作成。
 * Version 0.41 (17/Nov/95)
 * > 起動時壁紙を変える機能の追加
 * > リソースファイルが古いままだったのを更新
 * > タイトルバーに現在のステイタスを表示。
 * > Information Windowの改良（？）
 * > ビットマップ・リソースを２５６色にに変更。
 * Version 0.41.a (20/Nov/95)
 * > 初期設定パラメータの不足による不具合の修正。
 * > その他細かいバグの修正。
 * Version 0.50 (24/Nov/95)
 * > バックグラウンドの'通常イメージ'、'タイル・イメージ'、'サイズ変更イメージ'
 *   の指定が来るようになった。
 * > 'サイズ変更イメージ'の際、スケール値の設定が出来るようになった。
 * > ウィンドウ・サイズもやや拡大。
 * > Information Windowの改良（サイズ変更、タイトルバーの文字の修正など）。
 * Version 0.50.a (27/Nov/95)
 * > Function Checkのバグの修正（INIファイルの順序を変更）。
 * Version 0.50.b (29/Nov/95)
 * > Change Bitmap at StartUpをクリックしてもSaveボタンがEnableにならないバグを修正。
 * > Imageタイプが変更されたときにChange Image TypeボタンがEnableになるようにした。
 * > Change Image Typeボタンが押された後Disableにするようにした。
 * Version 0.51 (30/Nov/95)
 * > タイマーのON/OFFスイッチを追加。
 * > タイマーOFF時にスライダーが動くようにした。
 * Version 0.51.a (01/Dec/95)
 * > Factory SettingでSwitchの指定がなかったバグの修正。
 * Version 0.52 (04/Dec/95)
 * > Exitボタンが押されたとき本当に終了するか確認するダイアログ・ボックスの追加。
 * > Windowのサイズが変わるときのアニメーション化。
 * > 時計の回転を時計回りに変更。
 * Version 0.52.a (05/Dec/95)
 * > デザインの修正。
 * Version 0.53 (14/Dec/95)
 * > 公開バージョンの為の修正。
 * > デザイン、文章の修正。
 * > シェアウェア登録画面の作成とそれに伴う修正。
 * > 最終ベータ版
 * Version 0.54 (10/Jan/96)
 * > メールウェアで公開する直前の最終チェックバージョン
 * > 基本的にフリーウェアにしたため、レジストレーション関連の機能を削除。
 * Version 1.00 (10/Jan/96)
 * > 公開バージョン
 * > アイコンを変更。
 * Version 1.00.a (10/Jan/96)
 * > アイコンのリソースがきちんと反映されていなかったのを修正。
 * > 未公開バージョン
 * Version 1.10 beta 1 (17/Jan/96) since 17/Jan/96
 * > パラメータ変更毎にパラメータのAuto Saveを行うようにした。
 * > 上記仕様変更に伴う画面デザインの変更。
 * > Undoボタンの廃止。
 * > 新規にHelpボタンの追加（ただし、ヘルプ自体は未搭載でこのボタンは現在Disable状態）。
 * Version 1.10 beta 2 (18/Jan/96)
 * > ダイナミックにDriveをサーチするようにした。
 *   これによりサーバー上のドライブもリアルタイムに使用可能になりました。
 * Version 1.10 beta 3 (19/Jan/96)
 * > アイコンのアニメーション化。
 * > 不要なコードの排除。
 * Version 1.10 beta 4 (22/Jan/96)
 * > 1.10 beta 3 で生じたExit WindowsのYesボタンの不具合を修正。
 * > タイマーOFF時のスライダーの値をINIファイルに書き込まないようにした。
 * > タイマーOFFでたちあげた後、タイマーをON時にスライダーの値が30に戻ってしまう不具合
 *   の修正。INIファイルの順番を変更。
 * > Helpボタンを枠外に排除。ヘルプの必要性次第ではアプリケーションから呼び出すヘルプな
 *   しでリリースする可能性有り。
 * Version 1.10 beta 5 (23/Jan/96)
 * > 時計アイコンでもON/OFF出来るようにした。
 * Version 1.10 (25/Jan/96)
 * > 使用していない処理を排除。
 * > 公開バージョン完成。
 * Version 1.11b1 (13/Feb/96)
 * > イメージタイプの変更を即座に反映するようにして、ChangeImageTypeボタンを廃止。
 * > 壁紙を設定した時間内でランダムに変更できる機能を追加。
 * Version 1.11b2 (13/Feb/96)
 * > Help FileをInfomation Windowから呼び出せるようにした。
 * Version 1.11b3 (23/Feb/96)
 * > INIファイルが存在しないときにエラーが発生する問題を修正。
 * > RandomTimer使用時に設定されたInterval Timeを書き換えてしまう問題を修正。
 * > Bitmapを16色に減色。プログラムサイズのスリム化をはかりました。
 * Version 1.11b4 (24/Feb/96)
 * > 終了時の動作をスマートにしました。
 * > INIファイルにごみが残らないようにしました。
 * > ICONのリソースを変更。
 * > INIファイルのOPTIONパラメータをマニュアルで変更するとICONが動き出すようにしました。
 * > HELPファイル認識の際の不具合の修正とボタンの動きの変更。
 * Version 1.11b5 (26/Feb/96)
 * > RandomTimerチェックボックスの初期表示の不具合の修正。
 * Version 1.11b6 (26/Feb/96)
 * > RandomTimerがONの時、Time Sliderを変化させてもInterval Timeが更新されない不具合を修正。
 * Version 1.11b7 (28/Feb/96)
 * > Information WindowでHelp Buttonを押した後、Main Windowに戻るようにした。
 * Version 1.11b8 (29/Feb/96)
 * > 起動時にBitmapの番号に不具合が生じる問題を修正。
 * > 現在表示しているBitmapの番号を記録するようにした。これによりOrderで使用している場合、
 *   次回立ち上げ時に今回表示しているBitmapの次から続いて表示させることができるようになった。
 * > ExitRoutineの不具合を修正。
 * Version 1.20 (29/Feb/96)
 * > バージョンを1.11b8から1.20に変更してこれを公開バージョンとします。
 * Version 1.21b1 (17/Mar/96) since 14/Mar/96
 * > バックグラウンドの背景色がデフォルト(灰色)になってしまうため、Wall本体に背景色を指定する
 *   機能を追加。ただし、OS/2形式以外のBitmapを張り付ける時何故か画面の再描画に不具合が生じる
 *   場合が多いためChangeBitmapのロジックを少し修正。
 * > 壁紙が変わった後のRemain Timeの表示の不具合を修正。
 * > Random Background Color機能の追加。
 * > ReadINItialFileのロジックを修正。
 * Version 1.21b2 (18/Mar/96)
 * > Color Onlyの設定も出来るように機能を追加。
 * > BitmapのEAデータを利用してBitmap毎にImageType, Background Colorを設定できる機能を追加
 *   (現在構築中)。
 * Version 1.21b3 (19/Mar/96)
 * > BitmapのEAデータを利用してBitmap毎にImageType, Background Colorを設定できる機能を追加。
 * > プログラムの無駄の整備。
 * > EA Dataを使用しているビットマップの場合、それがわかるように画面に表示するようにした。
 * Version 1.21b4 (20/Mar/96)
 * > 不具合の修正。
 * Version 1.21b5 (21/Mar/96)
 * > 壁紙変更時に音を鳴らすサウンド機能を追加。
 * Version 1.21b6 (22/Mar/96)
 * > Sound FileのDirectoryをINIファイルで指定するように変更。
 * > 使用するBitmapのEA DataのエリアをINIファイルで指定するように変更。ただし、デフォルト
 *   (.COMMENT)以外を指定する場合には注意が必要。
 * > 現在のWallのポジションを記録するように変更。ただし、そのデータを利用する機能は未完成。
 * > 不具合の修正。
 * Version 1.21b7 (23/Mar/96)
 * > Sound ON/OFFボタンのビットマップを変更。
 * > WallのON/OFFボタンの廃止。今後WallのON/OFFは時計ICONでのみ可能。
 * > Sound Directoryを画面上で指定できるようにTextBoxを追加。CurrentDirectoryはCurrentと入力
 *   するだけでFull Pathを入力する必要はない。
 * > 音がなっている時のICONを追加。
 * > 画面レイアウトの変更。
 * Version 1.21b8 (24/Mar/96)
 * > 不具合の修正。
 * > プログラムの整備。
 * Version 1.21b9 (24/Mar/96)
 * > Sound OFF時のICON Resourceの変更。
 * > NormalFunctionからFullFunctionへ変更時、FullFunctionの画面が右端からはみ出てしまう場合、
 *   自動的に画面に入るようにWallを移動するする機能を追加。ただし前提の画面解像度は1024x768。
 *   それ以外では正常に動作しないと思われます。
 * > 不具合の修正。
 * > その他プログラムの調整。
 * Version 1.21b10 (24/Mar/96)
 * > Sound Dirの位置と背景色の変更。
 * > 不具合の修正。
 * Version 1.21b11 (27/Mar/96)
 * > 修正。
 * Version 1.21b12 (31/Mar/96) since 28/Mar/96
 * > 前回終了時のポジションを記憶し、起動時に反映するように修正(あまり役にたってないけれど...)。
 * > その他の修正。
 * Version 1.21b13 (02/Apr/96)
 * > 不具合の修正。
 * > Debug用のコード挿入。
 * > Positiopn Remind機能をDisableに変更。
 * Version 1.21b14 (08.Apr.96)
 * > 不具合の修正。
 * Version 1.21b15 (11.Apr.96)
 * > 不具合の修正。
 * Version 2.00 (24.May.96)
 * > バージョンを1.21b15から2.00に変更してこれを公開バージョンとします。
 * Version 2.00.a (30.May.96)
 * > Time Slider変更時に行われる時間の計算式を修正。
 * Version 2.00.b (03.Jun.96) since 01.Jun.96
 * > INI Fileの設定でdebug_modeのON/OFFが出来るようにした(開発の為の機能追加)
 * > Random Timer OFF時に設定時間になり壁紙が変更されてもRemainTimeが0のままで変更されない
 *   不具合の修正。
 * > 英単語の修正とそれに伴うレイアウトの修正。
 * Version 2.00.c (12.Jun.96)
 * > EAを使用しているBitmapが表示される場合、ImageTypeの文字の色を変えるように変更。
 * > EAに記録されているデータを表示するように変更。
 * Version 2.00.d (22.Jun.96)
 * > "Accept as this bitmap data" buttonを押した時、壁紙を再描画しないように変更。
 * Version 2.00.e (27.Jun.96)
 * > Random Timer OFF時の壁紙変更後のRemain Time背景色の不具合の修正。
 * Version 2.00.f (09.Jul.96)
 * > Programの冗長な部分を削除(SetScale routine)。
 * Version 2.00.g (17.Jul.96) since 15.Jul.96
 * > WallEmr.Exe(Wall Emergency Option Program)のWall起動時に自動的に起動するSwitchの追加。
 * > Sized, Tiled表示の場合、起動時にChangeBitmap routineが余分に呼ばれてしまう不具合の修正。
 * > その他、回避していた類似のChangeBitmap routineを余分に呼び出す問題を根本的に解決。
 * > Factory Setting実行時にIconのresourceが反映されない不具合を修正。
 * > 各ObjectのContext Menuで名称やヘルプを表示するように仕様変更（現在進行中）。
 * Version 2.01 (17.Jul.96)
 * > Version 2.00.gを少しTune Upして2.01として公開。
 * > 今回からHobbesにも登録。
 * > Version 2.01にはWallEmrは同梱しない(次期Versionに同梱予定)。ただし、別途同じフォルダー
 *   にWallEmrを入れておくとWallEmr Switch ButtonはVisibleになる。
 * Version 2.09 beta 1 (20.Jul.96)
 * > 壁紙が変わる時に外部のプログラムを起動出来る機能を追加。ただし、今の段階ではINI File
 *   に直接外部コマンドを書き加えないといけない。
 * > INI Fileに現在のVersionを表示するように変更。
 * > Using...をすべてUse...に変更。2.01以前のINI Fileの一部項目と互換性はないので注意が必要。
 * Version 2.09 beta 2 (22.Jul.96)
 * > ImageTypeとImageSizeを変更時にはExternal Commandが動作しないように変更。
 * Version 2.09 beta 3 (25.Jul.96) since 24.Jul.96
 * > RandomColorをOFFに変更した時にExternal Commandが動作しないように変更。
 * > External Commandの設定を画面上で出来るようにレイアウト変更。
 * > ChangeAtStartUpとRandomTimer OptionがOFFの時、起動直後にChangeBitmapASAP Buttonを押して
 *   もBitmapが変更されない不具合を修正。
 * > ChangeAtStartUpとRandomTimer OptionがOFFの時、Interval Timeが27のまま変更されない不具合
 *   を修正。
 * > Ver 2.01以前のINI Fileとの互換性を確保（Using...からUse...に変更された項目）。
 * Version 2.09 beta 4 (26.Jul.96)
 * > UseTypeまたはUseColorがどちらもCheckされていない場合でもUse Bitmap EAがCheckされている
 *   とそのEA Dataが壁紙に反映されてしまう問題を修正。
 * > External CommandでEXE fileのoption parameterを設定できるように変更。
 * > External Commandで使用できるFileのExtensionは.Exe, .Cmd, .Bat, .Comの４つ。
 * > External Command関連の作り込み。
 * > EA DataをClearするButtonもUse Bitmap EAのChecked/UnCheckedでEnable/Disableするように変
 * > 更。
 * > 初期状態でUse Bitmap EAをCheckするとTypeのシグナルが表示される不具合を修正。
 * Version 2.09 beta 5 (29.Jul.96)
 * > 未完成であった前回のWindow Positionを記録し、次回立上げ時に反映する機能を追加。
 * > 最初のThe Wall起動時(INIファイルがない状態）に現在使用しているディスプレイの解像度をチ
 *   ェックする機能を追加（Factory Setting Buttonを押した場合、次期起動時にも解像度をチェッ
 *   クする）。
 * > Full Functionを表示時、上記で得たScreenWidth情報を元に画面からWindowがはみ出ないように
 *   自動的に全体が表示できるエリア内に移動させる機能が有効に利用できるようになった。
 * > Bitmap DirectoryにBitmapが１個しかない時に起きるErrorの修正。
 * Version 2.09 beta 6 (02.Aug.96) since 30.Jul.96
 * > 現在位置をCheckする毎にINI Fileに書き込みをおこなっていたものを、変更がない場合は書込み
 *   を行わないように修正(Ver.2.0.9 beta 5でCPU Usageが高くなった不具合の修正）。
 * > WallEmr.Exeに現在表示している壁紙のsetup情報を引き渡す項目(BitmapData)をINI Fileに追加。
 * > 起動時のWindowの動きがスムーズなるようにLogicを修正。
 * > Exit, Info. WIndowをすべてWallのWindowにまとめて実行ファイルのサイズを削減。
 * > その他、細かい修正。
 * Version 2.09 beta 7 (17.Aug.96)
 * > CPUのUsageを大幅に削減するModeを追加。
 * Version 2.09 beta 8 (11.Sep.96) since 10.Sep.96
 * > 各Bitmap毎に使用・不使用の設定できる機能の追加。
 * > Windows用のBitmapを使用しないときに不必要でパフォーマンスの劣化の原因となるroutineを回
 *   避できるようにする機能の追加。(ChangeBitmap)
 * Version 2.09 beta 9 (12.Sep.96)
 * > Bitmap EA Areaになにも情報がない場合に生じる、Use/Unuseの変換時の不具合を修正。
 * > Bitmap EA dataを使用しかつBitmap List BoxにFocusがある時、Ctrl+u/n/t/s Keyで各々の
 *   Bitmapの設定を変更することのできるKey Commandを追加。
 *   (u:Use/Unused, n:Normal, t:Tiled, s:Sized)
 * Version 2.09 beta 10 (18.Sep.96) since 16.Sep.96 (beta 9.1, 9.2)
 * > Key CommandにCtrl+c(Clear)を追加。
 * > Key Commandの不具合を修正。
 * > Count Down TimerにHourを追加。
 * > time sliderから算出するinterval timeの計算式の不具合を修正。
 * Version 2.09 beta 11 (22.Sep.96)
 * > 新しいInterval Timeを指定する機能を追加。(Use Time Selector)
 * > Bitmap NameのGroupBoxをClickすると現在使用されているBitmapをBitmap Listの該当Fileに
 *   Focusが移るように仕様変更。今後GroupBox以外をClickするように仕様変更する予定。
 * Version 2.09 beta 12 (27.Sep.96) since 23.Sep.96
 * > Interval/Remain Timeの計算ロジックおよび表示の不具合の修正。
 * Version 2.09 beta 13 (02.Oct.96) since 27.Sep.96 (beta 12a)
 * > 毎回画面の解像度をチェックできる機能を追加。
 * > WallEmr(Ver.0.33以降)で利用する画面サイズを実際のwidth/heightに変更(いままでは解像
 *   度を使用)。
 * > 不具合やその他の修正。
 * Version 2.09 beta 14 (15.Oct.96)
 * > 取得する画面サイズを解像度から実サイズに変更したときに生じた不具合を修正。
 * > Clearボタンの不具合の修正。
 * Version 2.10 (03.Nov.96) since 24.Oct.96
 * > Iconリソースの変更(Icon design : Mihoko Kohno)
 * > CPU Usage ModeをLow Modeに固定。関連ロジックをコメント化。
 * Version 2.11 (06.Nov.96)
 * > `Use Time Selector'選択時のタイマーの設定の不具合を修正。
 * Version 2.15 (06.Dec.96)
 * > Zero Time Functionの追加。
 * > 画面デザインの調整。
 * Version 2.16 (19.Dec.96) since 15.Dec.96
 * > TimeSelecor未使用時にThe WallのswitchをON/OFFしたとき、TimeSliderの色がうまく変
 *   更されない不具合の修正。
 * > 画面デザインの調整。
 * > アイコンの変更。
 * > リソースの追加（画面サイズ取得Window）。
 * > 使用しないroutineの削除（CPUのUsage関係）。
 * > `Resize' Check Buttonをチェックしてもいつのまにかチェックがはずれてしまう不具合を修正。
 * Version 2.20 (01.Jan.97) since 23.Dec.96
 * > GIFとJPEGファイルに対応(for Warp4)。
 * > longnameのdirectoryに対応(ex. `x:\sample data' directory)。
 * > Exit routineを簡略化。
 * > その他の細かい不具合の修正。
 * > 画面デザインの調整。
 * Version 2.21 (13.Feb.97) since 22.Jan.97
 * > Timer Unit ListをEditする機能を追加。
 * > Warp3ではGIF, Jpeg Fileを選択出来ないように仕様変更。
 * > Tab Stopの整理。
 * > UseBitmapEA Modeの不具合の修正。
 * > Debug Modeの機能を強化。
 * > その他の不具合の修正とデザインの修正。
 * Version 2.25 (15.Jun.97) since 20.Feb.97
 * > ThinkPad等でSleep Modeから復活した時に再度Zero Timeを合わせる機能の追加。
 * > MMOS/2をuninstallした時に生じる不具合の修正(4/23 completed)。
 * > ZeroTime functionの秒単位の誤差を最少にする機能の追加(4/23 completed)。
 * > デザインの修正。
 * Version 2.26 beta (16.Oct.97) since 16.Oct.97
 * > Bug Fix (SelectBitmap, WriteINItialFile & CountDown) ...now on beta test
 * Version 3.00 (25.Mar.98) since 05.Feb.98
 * > Version 2.26 beta 1から大幅仕様を変える事にしたためのためVersionを変更。
 * > Fontを変えられるように機能追加(05.Feb.98 version 2.49 alpha 0)。
 * > `Use Bitmap EA'の名称を`Active Individual Image'に変更(05.Feb.98 Version 2.49 beta 1)。
 * > `Active Individual Image'機能使用時にUnuseに設定しているBitmapがリストの最後まで続いたときにStuck Overで落ちるバグを修正。
 * > TIF Image Fileに対応(25.Feb.98 Version 2.49 beta 3)
 * > Window Designの変更(25.Feb.98 Version 2.49 beta 3)
 * > Multi External Commands機能(03.Mar.98 Version 2.49 beta 4,5,6)
 * > TGA, PCX, DIB Image Fileに対応(04.Mar.98 Version 2.49 beta 7,8)
 * > ReadInitialFile routine等を整理(if文 → select文等)。(04.Mar.98 Version 2.49 beta 7,8)
 * > MailwareからSharewareに変更(06.Mar.98 Version 2.49 beta 9)
 * > 細かい不具合の修正(14.Mar.98 Version 2.49 beta 10,11)
 * > Active Individual Image Functionを少し改良(14.Mar.98 Version 2.49 beta 11)
 * > ON/OFF/SLEEP SwitchのBitmap Resource Dataを変更とそれに伴うデザインの変更(19.Mar.98 Version 2.49 beta 12)
 * > Regitry Routineの改良(21.Mar.98 Version 2.49 beta 13)
 * > Regitry Keyの変更(21.Mar.98 Version 2.49 beta 13)
 *      23011212M01 : 以前からのユーザー (以前のバージョンでMailをくれたユーザー)
 *      23011212N02 : 新規登録ユーザー
 *      23011212F03 : 友達関係
 *      23011212IBM : IBM社内
 *      23011212S05 : Speceial Version
 * > Shareware化
 * Version 3.00.a (26.Mar.98)
 * > Registry Windowの誤字の修正(Rigiter → Register)
 * Version 3.01 (02.Apr.98) since 02.Apr.98
 * > Timer parameterの不具合の修正。(02.Apr.98 Version 3.01)
 * Version 3.02 (09.Apr.98) since 08.Apr.98
 * > 一部のFont NameがInitial Fileから正常に読み込まれない不具合を修正(08.Apr.98 Version 3.02)
 * Version 3.10 (15.May.98) since 10.Apr.98
 * > Active Individual ImageのSetupが簡単にできるようにContext Menuを追加(10,11.Apr.98 Version 3.03 beta 1,2)。
 * > Startup Bitmap Functionの追加(11.Apr.98 Version 3.03 beta 3)
 * > File Synchronize機能の追加(17.Apr.98 Version 3.03 beta 4, 19.Apr.98 Version 3.03 beta 5)
 * > Clear EA Dataの不具合を修正(19.Apr.98 Version 3.30 beta 5)
 * > Bitmap ListでもContext MenuでActive Individual ImageのSetupをできるように仕様変更(20.Apr.98 Version 3.03 beta 6)
 * > Maximum File Size Functionの追加(24.Apr.98 Version 3.03 beta 7)
 * > File Detail(Date, Time, Size)を表示部を追加(25.Apr.98 Version 3.03 beta 8)
 * > File Detail表示部を分割。Attribを追加(30.Apr.98 Version 3.03 beta 9)
 * > Tune Up(03.May.98 Version 3.03 beta 10)
 * > Version 3.10 Release at 15.May.1998
 * Version 3.11 (24.May.98)
 * > AIIのColor設定でThe Wallが落ちる問題を修正。
 * Version 3.12 (19.Jul.98) since 20.Jun.98
 * > VX-REXXのConsoleをDisableに仕様変更(20.Jun.98 3.11.a)
 * > Multiple External CommandをDisableにしても実際にはDisableにならない不具合を修正(04.Jul.98 3.12 beta 1)
 * > Drive LetterをSpin Buttonで変更するとThe Wallが落ちる問題(名称が変更されて現在存在していないオブジェクトDT_Searchを指定していた)を修正(15.Jul.98 3.12 beta 2)
 * > Time Sliderの最小値を0から1に変更(16.Jul.98 3.12 beta 3)
 * > Sleep TImer関連の調整(17.Jul.98 3.12 beta 4)
 * > Version 3.12公開(19.Jul.98)
 * Version 3.15 (30.Sep.98) since 08.Sep.98
 * > VX-REXXのConspleをEnable/Disable出来るように仕様変更(08.Sep.98 3.13 beta 1)
 * > デザインの修正等(09.Sep.98 3.13.beta 2)
 * > 不具合の修正(11.Sep.98 3.13 beta 3)
 * > Startup Bitmapをいつでも貼り付けられるように機能拡張(25.Sep.98 3.13 beta 4)
 * > Status Indicator, Factory Setting buttonの削除(25.Sep.98 3.13 beta 5) 正確には隠しただけ
 * > Title Barに表示されるMessageの整理(25.Sep.98 3.13 beta 5)
 * > 細かい修正等(26.Sep.98 3.13 beta 6,7,8,9)
 * > Version 3.15公開 (30.Sep.98) same as Version 3.13 beta 9
 * Version 3.16 (27.Oct.98) since 13.Oct.98
 * > `Exit After 1st Change' Functionの追加(13.Oct.98 3.16 beta 1,2)
 *   `Exit After 1st Change' FunctionのModeを変更するcmdを添付(3.16 beta 2～)
 * > beta 2を3.16として公開(27.Oct.98)
 * Version 3.20 (12.Nov.98) since 11.Nov.1998
 * > 複数ファイルで`Active Individual Image'の設定を一度に登録できるように仕様変更(11.Nov.1998, 3.19 beta 1)
 * > 複数選択時に表示するBitmapを追加およびPreview Windowの仕様変更(12.Nov.1998 3.19 beta 2)
 * > Verion 3.20公開(12.Nov.98)
 * Version 3.25 (30.Jan.1999) since (29.Nov.98)
 * > Bitmap Resourceの一部変更 (29.Nov.98 3.20a)
 * > Focus変更 (02.Dec.98 3.20b)
 * > 音量調整出来るようにボリュームを追加。
 * > その他、不具合の修正とデザインの修正。
 * Version 3.26 (12.Feb.1999)
 * > 細かい不具合の修正とデザインの変更。
 * Version 3.27 (11.Mar.1999) since 14.Feb.1999
 * > CheckFileSize等で落ちる問題を少しでも減らすように作り込み(SysLoadFuncsを必要に応じて再度呼び出す)  (3.27 beta 1 14.Feb.1999)
 * > Registry後のWindowを変更(3.27 beta 2, 20.Feb.1999)
 * > 初期設定の不具合の修正(3.27 beta 3, 21.Feb.1999)
 * > Version 3.27公開(11.Mar.1999)
 * Version 3.30 (08.May.1999) since 26.Mar.1999
 * > 選択したBitmapを任意のViewerで開くOpen Image Functionを追加(3.28 beta 1, 26.MAr.1999)
 * > ViewerをGUIで設定出来るように仕様変更・機能強化(3.28 beta 2, 24.Apr.1999)
 * > 細かい修正(Disabled時のEFのBackground ColorをPaleGrayにする等) (3.28 beta 3, 29.Apr.1999)
 * > Version 3.30公開 (08.May.1999)
 * Version 3.31 (21.Aug.1999) since 16.Aug.1999
 * > AIIのContext Menuで各画像の設定値にチェック・マークを付けるように仕様変更 (3.31 beta 1, 16.Aug.1999) 
 * > File Synchronize Functionの調整(うまく機能していなかった) (3.31 beta 1, 16.Aug.1999)
 * > PopCD!でSystem Shutdown時に生じる問題に対処するためにCommnet Outした項目をComment Out (3.31 beta 2, 19.Aug.1999)
 *        _VREHalt:
 *          _VREReturnValue = Fini()
 *          call VRDestroy _VREPrimaryWindow  <- Comment Out
 *        _VRELeaveMain:
 *           call VRFini                      <- Comment Out
 *        exit _VREReturnValue
 * > Tune up (3.31 beta 3, 20.Aug.1999)
 * > Version 3.31公開 (21.Aug.1999)
 * Version 3.31a (08.Sep.1999)
 * > Demo用Registration Keyの追加とそれに伴う機能拡張。期間は1999年12月31日まで。
 * Version 3.32  (26.Sep.1999) since 11.Sep.1999
 * > MMOS/2がInstallされていない時、本来DisableになるべきButtonがDisableされない問題を修正 (3.32 beta 1, 11.Sep.1999)
 *   (TIF/TGA/PCX/DIBの各Button)
 * > Version 3.32公開。
 * Version 3.33 (13.Nov.1999) since 28.Sep.1999
 * > Finiのコメントアウト(FiniでのError対策) (28.Sep.1999)
 * > Version 3.33公開。
 * Version 3.40 (11.Nov.2000) since 04.Aug.2000
 * > External Command Windowの不具合修正と作り込み(継続) (3.39 beta 1, 04.Aug.2000)
 * > External Command Windowの作り込み (3.39 beta 2, 05.Aug.2000)
 * > VX-REXXのConspleをDisableに固定するように仕様変更 (3.39 beta 2, 05.Aug.2000)
 * > External Command Windowの作り込み(Enabled/Disabled) (3.39 beta 3, 16.Aug.2000)
 * > External Command Windowの不具合の修正/作り込み (3.39 beta 3, 16.Aug.2000)
 * > WallEmr Version 1.11同梱 (3.39 beta 3, 16.Aug.2000)
 * > CB_EnabledExternalCommandのFontが変更されない不具合を修正 (3.39 beta 4, 27.Aug.2000)
 * > Default Settingの不具合を修正 (DT_UseColorDetail) (3.39 beta 4, 27.Aug.2000)
 * > 細かい部分をいろいろ修正 (3.39 beta 4, 27.Aug.2000)
 * > Slider Barの色を統一 (TimerSliderとSL_SoundVolume) (3.39 beta 4, 27.Aug.2000)
 * > External Commadn Windowの不C正/作り込み(変更時に`When Changed'に変わってしまう問題) (3.39 beta 5, 03.Sep.2000)
 * > External Command Window作り込み (3.39 beta 6, 09.Sep.2000)
 * > External Command Window作り込み (3.39 beta 7, 10.Sep.2000)
 * > 特に問題が無いようなのでVersion 3.40で公開 (11.Nov.2000) 
 * Version 3.50 (12.Sep.2004) since 18.Jul.2004
 * > StartupBitmapNameにスペースが入っていると正しく認識しない問題を修正 (3.49 beta 1, 18.Jul.2004)
 * > Freeware化の準備 (3.49 beta 2, 11.Sep.2004)
 * > Freeware化　(3.50, 12.Sep.2004)
 *
 *
 */
/*  Main
*/
Main:
/*  Process the arguments.
    Get the parent window.
*/
debug_mode = 0
if debug_mode = 1 then say "Main"

    parse source . calledAs .
    parent = ""
    argCount = arg()
    argOff = 0
    if( calledAs \= "COMMAND" )then do
        if argCount >= 1 then do
            parent = arg(1)
            argCount = argCount - 1
            argOff = 1
        end
    end; else do
        call VROptions 'ImplicitNames'
    end
    InitArgs.0 = argCount
    if( argCount > 0 )then do i = 1 to argCount
        InitArgs.i = arg( i + argOff )
    end
    drop calledAs argCount argOff

/*  Load the windows
*/
    call VRInit
    parse source . . spec
    _VREPrimaryWindowPath = ,
        VRParseFileName( spec, "dpn" ) || ".VRW"
    _VREPrimaryWindow = ,
        VRLoad( parent, _VREPrimaryWindowPath )
    drop parent spec
    if( _VREPrimaryWindow == "" )then do
        call VRMessage "", "Cannot load window:" VRError(), ,
            "Error!"
        _VREReturnValue = 32000
        signal _VRELeaveMain
    end

/*  Process events
*/
    call Init
    signal on halt
    do while( \ VRGet( _VREPrimaryWindow, "Shutdown" ) )
        _VREEvent = VREvent()
        interpret _VREEvent
    end
_VREHalt:
    _VREReturnValue = Fini()
/*  call VRDestroy _VREPrimaryWindow *//* comment out 19.Aug.1999 */
_VRELeaveMain:
/*  call VRFini *//* comment out 19.Aug.1999 */
exit _VREReturnValue

VRLoadSecondary:
    __vrlsWait = abbrev( 'WAIT', translate(arg(2)), 1 )
    if __vrlsWait then do
        call VRFlush
    end
    __vrlsHWnd = VRLoad( VRWindow(), VRWindowPath(), arg(1) )
    if __vrlsHWnd = '' then signal __vrlsDone
    if __vrlsWait \= 1 then signal __vrlsDone
    call VRSet __vrlsHWnd, 'WindowMode', 'Modal'
    __vrlsTmp = __vrlsWindows.0
    if( DataType(__vrlsTmp) \= 'NUM' ) then do
        __vrlsTmp = 1
    end
    else do
        __vrlsTmp = __vrlsTmp + 1
    end
    __vrlsWindows.__vrlsTmp = VRWindow( __vrlsHWnd )
    __vrlsWindows.0 = __vrlsTmp
    do while( VRIsValidObject( VRWindow() ) = 1 )
        __vrlsEvent = VREvent()
        interpret __vrlsEvent
    end
    __vrlsTmp = __vrlsWindows.0
    __vrlsWindows.0 = __vrlsTmp - 1
    call VRWindow __vrlsWindows.__vrlsTmp
    __vrlsHWnd = ''
__vrlsDone:
return __vrlsHWnd

/*:VRX         __VXREXX____APPENDS__
*/
__VXREXX____APPENDS__:
/*
*/
return
/*:VRX         AII_Clear_Click
*/
AII_Clear_Click:
if debug_mode = 1 then say "AII_Clear_Click"

    if MultiSetEa = "No" then do
        call ClearEAdata
    end
    else if MultiSetEa = "Yes" then do
        bitmap_num_old = bitmap_num

        do i = 1 to MultiSetEaSelectedList.0
            bitmap_num = MultiSetEaSelectedList.i

            ok = VRSet( "DT_UseTypeSignal",  "Visible", 0 )
            ok = VRSet( "DT_UseColorSignal", "Visible", 0 )

            rc = SysPutEA( image.bitmap_num, ".COMMENTS", "" )
        end

        bitmap_num = bitmap_num_old
    end

return

/*:VRX         AII_Color_Click
*/
AII_Color_Click:

return

/*:VRX         AII_Type_Normal_Click
*/
AII_Type_Normal_Click:
if debug_mode = 1 then say "AII_Type_Normal_Click"

    BitmapImage = "Normal"
    ImageType = "n"

    call SetEaData

return

/*:VRX         AII_Type_Sized_10_Click
*/
AII_Type_Sized_10_Click:
if debug_mode = 1 then say "AII_Type_Sized_10_Click"

    Scale = 10
    BitmapImage = "Sized "Scale
    ImageType = "s"

    call SetEaData

return

/*:VRX         AII_Type_Sized_11_Click
*/
AII_Type_Sized_11_Click:
if debug_mode = 1 then say "AII_Type_Sized_11_Click"

    Scale = 11
    BitmapImage = "Sized "Scale
    ImageType = "s"

    call SetEaData

return

/*:VRX         AII_Type_Sized_12_Click
*/
AII_Type_Sized_12_Click:
if debug_mode = 1 then say "AII_Type_Sized_12_Click"

    Scale = 12
    BitmapImage = "Sized "Scale
    ImageType = "s"

    call SetEaData

return

/*:VRX         AII_Type_Sized_13_Click
*/
AII_Type_Sized_13_Click:
if debug_mode = 1 then say "AII_Type_Sized_13_Click"

    Scale = 13
    BitmapImage = "Sized "Scale
    ImageType = "s"

    call SetEaData

return

/*:VRX         AII_Type_Sized_14_Click
*/
AII_Type_Sized_14_Click:
if debug_mode = 1 then say "AII_Type_Sized_14_Click"

    Scale = 14
    BitmapImage = "Sized "Scale
    ImageType = "s"

    call SetEaData

return

/*:VRX         AII_Type_Sized_15_Click
*/
AII_Type_Sized_15_Click:
if debug_mode = 1 then say "AII_Type_Sized_15_Click"

    Scale = 15
    BitmapImage = "Sized "Scale
    ImageType = "s"

    call SetEaData

return

/*:VRX         AII_Type_Sized_16_Click
*/
AII_Type_Sized_16_Click:
if debug_mode = 1 then say "AII_Type_Sized_16_Click"

    Scale = 16
    BitmapImage = "Sized "Scale
    ImageType = "s"

    call SetEaData

return

/*:VRX         AII_Type_Sized_17_Click
*/
AII_Type_Sized_17_Click:
if debug_mode = 1 then say "AII_Type_Sized_17_Click"

    Scale = 17
    BitmapImage = "Sized "Scale
    ImageType = "s"

    call SetEaData

return

/*:VRX         AII_Type_Sized_18_Click
*/
AII_Type_Sized_18_Click:
if debug_mode = 1 then say "AII_Type_Sized_18_Click"

    Scale = 18
    BitmapImage = "Sized "Scale
    ImageType = "s"

    call SetEaData

return

/*:VRX         AII_Type_Sized_19_Click
*/
AII_Type_Sized_19_Click:
if debug_mode = 1 then say "AII_Type_Sized_19_Click"

    Scale = 19
    BitmapImage = "Sized "Scale
    ImageType = "s"

    call SetEaData

return

/*:VRX         AII_Type_Sized_1_Click
*/
AII_Type_Sized_1_Click:
if debug_mode = 1 then say "AII_Type_Sized_1_Click"

    Scale = 1
    BitmapImage = "Sized "Scale
    ImageType = "s"

    call SetEaData

return

/*:VRX         AII_Type_Sized_20_Click
*/
AII_Type_Sized_20_Click:
if debug_mode = 1 then say "AII_Type_Sized_20_Click"

    Scale = 20
    BitmapImage = "Sized "Scale
    ImageType = "s"

    call SetEaData

return

/*:VRX         AII_Type_Sized_2_Click
*/
AII_Type_Sized_2_Click:
if debug_mode = 1 then say "AII_Type_Sized_2_Click"

    Scale = 2
    BitmapImage = "Sized "Scale
    ImageType = "s"

    call SetEaData

return

/*:VRX         AII_Type_Sized_3_Click
*/
AII_Type_Sized_3_Click:
if debug_mode = 1 then say "AII_Type_Sized_3_Click"

    Scale = 3
    BitmapImage = "Sized "Scale
    ImageType = "s"

    call SetEaData

return

/*:VRX         AII_Type_Sized_4_Click
*/
AII_Type_Sized_4_Click:
if debug_mode = 1 then say "AII_Type_Sized_4_Click"

    Scale = 4
    BitmapImage = "Sized "Scale
    ImageType = "s"

    call SetEaData

return

/*:VRX         AII_Type_Sized_5_Click
*/
AII_Type_Sized_5_Click:
if debug_mode = 1 then say "AII_Type_Sized_5_Click"

    Scale = 5
    BitmapImage = "Sized "Scale
    ImageType = "s"

    call SetEaData

return

/*:VRX         AII_Type_Sized_6_Click
*/
AII_Type_Sized_6_Click:
if debug_mode = 1 then say "AII_Type_Sized_6_Click"

    Scale = 6
    BitmapImage = "Sized "Scale
    ImageType = "s"

    call SetEaData

return

/*:VRX         AII_Type_Sized_7_Click
*/
AII_Type_Sized_7_Click:
if debug_mode = 1 then say "AII_Type_Sized_7_Click"

    Scale = 7
    BitmapImage = "Sized "Scale
    ImageType = "s"

    call SetEaData

return

/*:VRX         AII_Type_Sized_8_Click
*/
AII_Type_Sized_8_Click:
if debug_mode = 1 then say "AII_Type_Sized_8_Click"

    Scale = 8
    BitmapImage = "Sized "Scale
    ImageType = "s"

    call SetEaData

return

/*:VRX         AII_Type_Sized_9_Click
*/
AII_Type_Sized_9_Click:
if debug_mode = 1 then say "AII_Type_Sized_9_Click"

    Scale = 9
    BitmapImage = "Sized "Scale
    ImageType = "s"

    call SetEaData

return

/*:VRX         AII_Type_Tiled_Click
*/
AII_Type_Tiled_Click:
if debug_mode = 1 then say "AII_Type_Tiled_Click"

    BitmapImage = "Tiled"
    ImageType = "t"

    call SetEaData

return

/*:VRX         AII_UnUsed_Click
*/
AII_UnUsed_Click:
if debug_mode = 1 then say "AII_UnUsed_Click"

    UseMode = "Unused"

    call SetEaDataUseMode

return

/*:VRX         AII_Use_Click
*/
AII_Use_Click:
if debug_mode = 1 then say "AII_Use_Click"

    UseMode = "Use"

    call SetEaDataUseMode

return

/*:VRX         BMP_Name_Click
*/
BMP_Name_Click:
if say debug_mode = 1 then say "BMP_Name_Click"

   ok = VRMethod( "LB_BitmapList", "SetFocus" )
   ok = VRSet( "LB_BitmapList", "Selected", bitmap_num )

return

/*:VRX         CB_AnimateWindow_Click
*/
CB_AnimateWindow_Click:
if debug_mode = 1 then say "CB_AnimateWindow_Click"

    set = VRGet( "CB_AnimateWindow", "Set" )
    select
        when set = 1 then do
            AnimateWindow = "Enabled"
        end
        when set = 0 then do
            AnimateWindow = "Disabled"
        end
    end

return

/*:VRX         CB_ChangeAtStartUp_Click
*/
CB_ChangeAtStartUp_Click:
if debug_mode = 1 then say "CB_ChangeAtStartUp_Click"

    set = VRGet( "CB_ChangeAtStartUp", "Set" )
    if set = 1 then do
        ChangeAtStartUp = 'Yes'
        ok = VRSet( GB_StartupBitmap, "Enabled", 1 )

        ok = VRSet( GB_StartupBitmap, "Enabled", 1 )

        ok = VRSet( "CB_StartupBitmap",      "Enabled", 1 )
        ok = VRSet( "PB_SetAsStartupBitmap", "Enabled", 1 )
        ok = VRSet( "EF_StartupBitmap",      "Enabled", 1 )
        ok = VRSet( "PB_ClearStartupBitmap", "Enabled", 1 )
        ok = VRSet( "PB_PutStartupBitmap",   "Enabled", 1 )
    end
    if set = 0 then do
        ChangeAtStartUp = 'No'
        ok = VRSet( GB_StartupBitmap, "Enabled", 0 )

        ok = VRSet( GB_StartupBitmap, "Enabled", 0 )

        ok = VRSet( "CB_StartupBitmap",      "Enabled", 0 )
        ok = VRSet( "PB_SetAsStartupBitmap", "Enabled", 0 )
        ok = VRSet( "EF_StartupBitmap",      "Enabled", 0 )
        ok = VRSet( "PB_ClearStartupBitmap", "Enabled", 0 )
        ok = VRSet( "PB_PutStartupBitmap",   "Enabled", 0 )
    end

return

/*:VRX         CB_CheckScreenSize_Click
*/
CB_CheckScreenSize_Click:
if debug_mode = 1 then say "CB_CheckScreenSize_Click"

    set = VRGet( "CB_CheckScreenSize", "Set" )
    if set = 1 then do
        CheckScreenSizeEverytime = "Yes"
        CheckScreenSize          = "Yet"
    end
    else do
        set = 0
        CheckScreenSizeEverytime = "No"
        CheckScreenSize          = "Examined"
    end

return

/*:VRX         CB_Color_Click
*/
CB_Color_Click:
if debug_mode = 1 then say "CB_Color_Click"

   set = VRGet( "CB_Color", "Set" )
   if set = 1 then do
      UseColor = "Yes"
      call GetEADataPreview
   end
   if set = 0 then do
      UseColor = "No"
      ok = VRSet( "DT_UseColorSignal", "Visible", 0 )
   end
   call WriteINItialFile

return

/*:VRX         CB_ColorOnly_Click
*/
CB_ColorOnly_Click:
if debug_mode = 1 then say "CB_ColorOnly_Click"

    set = VRGet( "CB_ColorOnly", "Set" )
    if set = 1 then do
        ColorOnly = "Yes"
        BackType  = "c"
    end
    if set = 0 then do
        ColorOnly = "No"
        BackType  = "i"
    end

    call WriteINItialFile

return

/*:VRX         CB_ExitAfter1stChange_Click
*/
CB_ExitAfter1stChange_Click:
if debug_mode = 1 then say "CB_ExitAFter1stChange_Click"

    set = VRGet( "CB_ExitAfter1stChange", "Set" )
    select
        when set = 0 then do
            ExitAfter1stChange = "Disabled"
        end
        when set = 1 then do
            ExitAfter1stChange = "Enabled"
        end
    end

return

/*:VRX         CB_ExternalCommand_Click
*/
CB_ExternalCommand_Click:
if debug_mode = 1 then say "CB_ExternalCommand_Click"

    set = VRGet( "CB_ExternalCommand", "Set" )
    select
        when set = 1 then do
            ExtCommandSwitch = "ON"
        end
        when set = 0 then do
            ExtCommandSwitch = "OFF"
        end
    end

    call SetExtCommandSwitch

return

/*:VRX         CB_FileSynchronize_Click
*/
CB_FileSynchronize_Click:
if debug_mode = 1 then say "CB_FileSynchronize_Click"

    set = VRGet( "CB_FileSynchronize", "Set" )
    select
        when set = 1 then do
            FileSynchronize = "Enabled"
            ok = VRMethod( "LB_BitmapList", "SetFocus" )
            ok = VRSet( "LB_BitmapList", "Selected", bitmap_num )
        end
        when set = 0 then do
            FileSynchronize = "Disabled"
        end
    end

return

/*:VRX         CB_FullFunction_Click
*/
CB_FullFunction_Click:
if debug_mode = 1 then say "CB_FullFunction_Click"

    set = VRGet( "CB_FullFunction", "Set" )
    if set = 1 then Function = 'Full'
    if set = 0 then Function = 'Minimum'

    if Function = 'Full' then do
        WallPosX = VRGet( "Window1", "Left" )
        if (WallPosX + FullSizeValue) > ScreenWidth then do
            WallPosX = ScreenWidth - FullSizeValue
            ok = VRSet( "Window1", "Left", WallPosX )
        end
    end

    call ChangeWindowSize

return

/*:VRX         CB_MaximumFileSize_Click
*/
CB_MaximumFileSize_Click:
if debug_mode = 1 then say "CB_MaximumFileSize_Click"

    set = VRGet( "CB_MaximumFileSize", "Set" )
    select
        when set = 1 then do
            MaximumFileSizeMode = "Enabled"
            ok = VRSet( "EF_MaximumFileSize", "Enabled", 1 )
            call CheckFileSize
            call ShowBitmapFileDetail
        end
        when set = 0 then do
            MaximumFileSizeMode = "Disabled"
            ok = VRSet( "EF_MaximumFileSize", "Enabled", 0 )
            ok = VRSet( "DT_FileDetail_Size", "BackColor", FileDetailColorBack )
        end
    end

return

/*:VRX         CB_RandomBGColor_Click
*/
CB_RandomBGColor_Click:
if debug_mode = 1 then say "CB_RandomBGColor_Click"

    set = VRGet( "CB_RandomBGColor", "Set" )
    if set = 1 then do
        RandomColor = "ON"

        call SetRGBColorSlider

        ok = VRSet( "PB_AcceptColor", "Enabled", 0 )
        call RecordColor
    end
    if set = 0 then do
        RandomColor = "OFF"

        call SetRGBColorSlider

        Red   = Red_rec
        Green = Green_rec
        Blue  = Blue_rec
        ok = VRSet( "PB_AcceptColor", "Enabled", 1 )
        call SetColorBars
        ExtCommandMode = "OFF"
    end

    call ChangeBitmap

    call WriteINItialFile

return

/*:VRX         CB_RandomTimer_Click
*/
CB_RandomTimer_Click:
if debug_mode = 1 then say "CB_RandomTimer_Click"

    set = VRGet( "CB_RandomTimer", "Set" )
    if set = 1 then RandomTimer = "ON"
    if set = 0 then RandomTimer = "OFF"

    call SetRandomTimer

return

/*:VRX         CB_ResizePicture_Click
*/
CB_ResizePicture_Click:
if debug_mode = 1 then say "CB_ResizePicture_Click"

    set = VRGet( "CB_ResizePicture", "Set" )
    if set = 1 then Resize = 'Yes'
    if set = 0 then Resize = 'No'

    ok = VRSet( "Pict_Preview", "ResizePicture", set )

return

/*:VRX         CB_StandardIORedirection_Click
*/
CB_StandardIORedirection_Click:
if debug_mode = 1 then say "CB_StandardIORedirection_Click"

    set = VRGet( "CB_StandardIORedirection", "Set" )
    if set = 1 then do
        StandardIORedirection = "Enabled"
        if debug_mode = 0 then do
            call VRRedirectStdio "on"
        end
    end
    if set = 0 then do
        StandardIORedirection = "Disabled"
        if debug_mode = 0 then do
            call VRRedirectStdio "off"
        end
    end

return

/*:VRX         CB_StartupBitmap_Click
*/
CB_StartupBitmap_Click:
if debug_mode = 1 then say "CB_StartupBitmap_Click"

    set = VRGet( "CB_StartupBitmap", "Set" )
    select
        when set = 1 then do
            StartupBitmap = "Enabled"
            ok = VRSet( "PB_SetAsStartupBitmap", "Enabled", 1 )
            ok = VRSet( "EF_StartupBitmap",      "Enabled", 1 )
            ok = VRSet( "PB_ClearStartupBitmap", "Enabled", 1 )
            ok = VRSet( "PB_PutStartupBitmap",   "Enabled", 1 )

            ok = VRSet( "EF_StartupBitmap", "BackColor", "<default>" )
        end
        when set = 0 then do
            StartupBitmap = "Disabled"
            ok = VRSet( "PB_SetAsStartupBitmap", "Enabled", 0 )
            ok = VRSet( "EF_StartupBitmap",      "Enabled", 0 )
            ok = VRSet( "PB_ClearStartupBitmap", "Enabled", 0 )
            ok = VRSet( "PB_PutStartupBitmap",   "Enabled", 0 )

            ok = VRSet( "EF_StartupBitmap", "BackColor", "PaleGray" )
        end
    end

return

/*:VRX         CB_SubDirectory_Click
*/
CB_SubDirectory_Click:
if debug_mode = 1 then say "CB_SubDirectory_Click"

   set = VRGet( "CB_SubDirectory", "Set" )
   if set = 1 then SubDir = ON
   if set = 0 then SubDir = OFF

   call GetFiles
   call WriteINItialFile

return

/*:VRX         CB_Type_Click
*/
CB_Type_Click:
if debug_mode = 1 then say "CB_Type_Click"

   set = VRGet( "CB_Type", "Set" )
   if set = 1 then do
      UseType = "Yes"
      call GetEADataPreview
   end
   if set = 0 then do
      UseType = "No"
      ok = VRSet( "DT_UseTypeSignal", "Visible", 0 )
   end

   call WriteINItialFile

return

/*:VRX         CB_UseBitmapEA_Click
*/
CB_UseBitmapEA_Click:
if debug_mode = 1 then say "CB_UseBitmapEA_Click"

   set = VRGet( "CB_UseBitmapEA", "Set" )
   if set = "1" then do
      UseBitmapEA = "Yes"
      ok = VRSet( "PB_AcceptAsBitmapData", "Enabled", 1 )
      ok = VRSet( "CB_Type",               "Enabled", 1 )
      ok = VRSet( "CB_Color",              "Enabled", 1 )
      ok = VRSet( "PB_ClearEA",            "Enabled", 1 )
      ok = VRSet( "PB_UseUnuse",           "Enabled", 1 )
      call GetEADataPreview
   end
   else if set = "0" then do
      UseBitmapEA = "No"
      ok = VRSet( "PB_AcceptAsBitmapData", "Enabled", 0 )
      ok = VRSet( "CB_Type",               "Enabled", 0 )
      ok = VRSet( "CB_Color",              "Enabled", 0 )
      ok = VRSet( "DT_UseTypeSignal",      "Visible", 0 )
      ok = VRSet( "DT_UseColorSignal",     "Visible", 0 )
      ok = VRSet( "PB_ClearEA",            "Enabled", 0 )
      ok = VRSet( "PB_UseUnuse",           "Enabled", 0 )
   end

   call WriteINItialFile

return

/*:VRX         CB_UseTimeSelector_Click
*/
CB_UseTimeSelector_Click:
if debug_mode = 1 then say "CB_UseTimeSelector_Click"

    set = VRGet( "CB_UseTimeSelector", "Set" )
    if set = 1 then do
        UseTimeSelector = "Yes"
        ok = VRSet( "PB_ModifyTimerUnitList", "Visible", 1 )
    end
    else do
        UseTimeSelector = "No"
        ok = VRSet( "PB_ModifyTimerUnitList", "Visible", 0 )
    end

    call SetTimerTime
    call SetTrigger
    call SetTimeButtons

return

/*:VRX         CB_UseWindowsTypeBitmap_Click
*/
CB_UseWIndowsTypeBitmap_Click:
if debug_mode = 1 then say "CB_CB_UseWIndowsTypeBitmap_Click"

    set = VRGet( "CB_UseWindowsTypeBitmap", "Set" )
    if set = 1 then do
        UseWindowsTypeBitmaps = "Yes"
    end
    if set = 0 then do
        UseWindowsTypeBitmaps = "No"
    end

return

/*:VRX         CB_WindowSize_Click
*/
CB_WindowSize_Click:
if debug_mode = 1 then say "CB_WindowSize_Click"

    set = VRGet( "CB_WindowSize", "Set" )
    if set = 1 then Minimize = 'Yes'
    if set = 0 then Minimize = 'No'

return

/*:VRX         CB_ZeroTimeFunction_Click
*/
CB_ZeroTimeFunction_Click:
if debug_mode = 1 then say "CB_ZeroTimeFunction_Click"

    set = VRGet( "CB_ZeroTimeFunction", "Set" )
    if      set = 1 then do
        ZeroTime = "Yes"
        ok = VRSet( "CB_RandomTimer", "Enabled", 0 )
        RandomTimer_rec = RandomTimer
        RandomTimer = "OFF"
    end
    else if set = 0 then do
        ZeroTime = "No"
        ok = VRSet( "CB_RandomTimer", "Enabled", 1 )
        RandomTimer = RandomTimer_rec
    end

return

/*:VRX         ChangeAtStartUp
*/
ChangeAtStartUp:
if debug_mode = 1 then say "ChangeAtStartUp"

    select
        when ChangeAtStartUp = "Yes" then do
            startup = 0
            call GetFiles

            if StartupBitmap = "Disabled" then do
                call SelectBitmap
                ok = VRSet( "Pict_Preview", "PicturePath", image.bitmap_num )
            end
            if StartupBitmap = "Enabled" then do
                do i = 1 to image.0
                    if image.i = StartupBitmapName then do
                        bitmap_num = i
                        call GetEAData
                        leave
                    end
                end
            end

            ok = VRSet( "Pict_Preview", "PicturePath", image.bitmap_num )

            call CheckFileSize
            call ShowBitmapFileDetail
            if MaximumFileSizeMode = "Enabled" then do
                if FileSize = "Standard" then do
                   call ChangeBitmap
                end
                else if FileSize = "Large" then do
                    call SelectBitmap
                end
            end
            else do
               call ChangeBitmap
            end
        end
        when ChangeAtStartUp = "No" then do
            bitmap_num_last_time = bitmap_num
            call GetFiles
            bitmap_num = bitmap_num_last_time
            if bitmap_num > 0 then do
                ok = VRSet( "BitmapName", "Caption", Name.bitmap_num )
                ok = VRSet( "Pict_Preview", "PicturePath", image.bitmap_num )
                if UseBitmapEA = "Yes" then do
                    call GetEADataPreview
                end
            end
        end
    end

return

/*:VRX         ChangeBitmap
*/
ChangeBitmap:
if debug_mode = 1 then say "ChangeBitmap"

    if bitmap_num <> 0 then do
        if startup = 0 then do

            /* for safe */
            ok = VRSet( "PB_ChangeASAP", "Enabled", 0 )
            ok = VRSet( "Pict_Preview",  "Enabled", 0 )
            ok = VRSet( "LB_BitmapList", "Enabled", 0 )
            /* for safe */

            if UseColor = "Yes" & data_red <> "NO_RESERVED" & data_red <> "" then do
                nop
            end
            else do
                if RandomColor = "ON" then call SetRandomColorValue
            end

            if BackType = "i" then do
                select
                    when MaximumFileSizeMode = "Enabled" then do
                        ok = VRSet( "BitmapName", "Caption", Name.bitmap_num )
                    end
                    when MaximumFileSizeMode = "Disabled" then do
                        ok = VRSet( "BitmapName", "Caption", Name.bitmap_num )
                    end
                end
                ok = VRSet( "Pict_Preview", "PicturePath", image.bitmap_num )
            end
            if BackType = "c" then do
                ok = VRSet( "BitmapName", "Caption", "Color Only..." )
            end

            ok = VRSet( "SPIN_Image", "ForeColor", "<default>" )
            ok = VRSet( "SPIN_Scale", "ForeColor", "<default>" )

            /* BitmapEA dataを使用した時の事前処理 */
            if UseBitmapEA = "Yes" then call GetEAData

            if UseMode = "Use" & FileSize = "Standard" then do
                if ExtCommandSwitch = "ON" & ExtCommandMode = "ON" then do
                    rc=SysFileTree(ExtCommandExe,'ExtCmd','of')

                    do i = 1 to ExternalCommandList.0
                        parse var ExternalCommandList.i e_cmd e_opt "," e_param "," e_status  
                        if (e_param = "") & (e_status = "Enabled") then do
                            title = "ExtCommand"
                            call SetTitleBar
                            address cmd "Start "e_cmd" "e_opt
                        end
                    end
                end
                ExtCommandMode = "ON"

                title = "Change"
                call SetTitleBar

                /* File Synchronize */
                if FileSynchronize = "Enabled" then do
                    FileSynchronize = "Enabled Active" 
                    ok = VRSet( "LB_BitmapList", "Selected", bitmap_num )
                    FileSynchronize = "Enabled" /* Parameterを戻す? Activeが意味不明（＾＾；なので... (16.Aug.1999) */
                end

                /* こうしないとOS/2形式以外のBitmapを張り付ける時何故か画面の再描画に不具合が生じる場合が多い。*/
                /* setup = 'BACKGROUND='image.bitmap_num','ImageType','Scale',,'Red' 'Green' 'Blue    */
                if UseWindowsTypeBitmaps = "Yes" then do
                    setup = 'BACKGROUND=,,,,'Red' 'Green' 'Blue
                    result = SysSetObjectData('<WP_DESKTOP>',setup)
                end
                setup = 'BACKGROUND='image.bitmap_num','ImageType','Scale','BackType','Red' 'Green' 'Blue
                result = SysSetObjectData('<WP_DESKTOP>',setup)
                if Sound = "ON" then call PlaySound

                Bitmaps = Bitmaps + 1
                i = bitmap_num

                if UseBitmapEA = "Yes" then do
                    parse var real_data ImageType Scale Red Green Blue
                end

                parse var setup . "=" data
                BitmapData = right(data, length(data) - length(BitmapDirectory) - 1)
                call WriteINItialFile

                title = "Normal"
                call SetTitleBar
            end
            else do
                call SelectBitmap
            end

            /* BitmapEA dataを使用した時の事後処理 */
            if UseBitmapEA = "Yes" then do
                BitmapImage = VRGet( "SPIN_Image", "Value" )
                call SetImageType
            end

            call WriteINItialFile

            /* for safe */
            ok = VRSet( "PB_ChangeASAP", "Enabled", 1 )
            ok = VRSet( "Pict_Preview",  "Enabled", 1 )
            ok = VRSet( "LB_BitmapList", "Enabled", 1 )
            /* for safe */

            /* Exit After 1st Change */
            if ExitAfter1stChange = "Enabled" then do
                call quit
            end
        end
    end

return
/*:VRX         ChangeWindowSize
*/
ChangeWindowSize:
if debug_mode = 1 then say "ChangeWindowSize"

    ok = VRSet( 'window1', 'Height', height )
    if Function = 'Full' then do
        if AnimateWindow = "Enabled" then do
            do size = NormalSizeValue to FullSizeValue by 1500
                ok = VRSet( 'window1', 'width', size )
            end
        end
        ok = VRSet( 'window1', 'width', FullSizeValue )
    end
    if Function = 'Minimum' then do
        if AnimateWindow = "Enabled" then do
            do size = FullSizeValue to NormalSizeValue by -1500
                ok = VRSet( 'window1', 'width', size )
            end
        end
        ok = VRSet( 'window1', 'width', NormalSizeValue )
    end

return
/*:VRX         CheckFileSize
*/
CheckFileSize:
if debug_mode = 1 then say "CheckFileSize"

    FileSize = "Standard"
    rc = SysFileTree( image.bitmap_num, "stem.", f )
    if stem.0 = 1 then do
        parse var stem.1 file_date file_time file_size file_attrib .
        if MaximumFileSizeMode = "Enabled" then do
            if file_size > MaximumFileSize * 1024 then do
                FileSize = "Large"
            end
        end
    end

return

/*:VRX         CheckScreenSize
*/
CheckScreenSize:
if debug_mode = 1 then say "CheckScreenSize"

   call VRLoadSecondary "SW_CheckScreenSize"

   ok = VRMethod(SW_CheckScreenSize, "Maximize")

   ok = VRSet( "DT_12", "Font", "32.Times New Roman Bold Italic" )
/* ok = VRSet( "DT_12", "Caption", "The Wall version "WallVersion" (Ken Kinoshita)" ) */
   ok = VRSet( "DT_12", "Caption", "The Wall version "WallVersion" (Pretty Pop)" ) 

   ScreenWidth  = VRGet(SW_CheckScreenSize, "width")
   ScreenHeight = VRGet(SW_CheckScreenSize, "height")

   if CheckScreenSizeEverytime = "No" then CheckScreenSize = "Examined"
   else                                    CheckScreenSize = "Yet"

   call WriteINItialFile

   ok = VRDestroy(SW_CheckScreenSize)

return

/*:VRX         ClearEAdata
*/
ClearEAdata:
if debug_mode = 1 then say "ClearEAdata"

    ok = VRSet( "DT_UseTypeSignal",  "Visible", 0 )
    ok = VRSet( "DT_UseColorSignal", "Visible", 0 )

    rc = SysPutEA( image.bitmap_num, ".COMMENTS", "" )

    BitmapImage = VRGet( "SPIN_Image", "Value" )
    call SetImageType

    enabled = VRGet( "SPIN_Scale", "Enabled" )
    if enabled = 1 then do
        ImageScale = VRGet( "SPIN_Scale", "Value" )
        parse var ImageScale Scale 'x' dummy
        Scale = Scale - 1
    end
    if enabled = 0 then do
        Scale = 0
    end

    UseMode = "Use"
    call SetBitmapUseMode

    if BitmapImage <> BitmapImage_old then do
        ExtCommandMode = "OFF"
        call ChangeBitmap
    end

return

/*:VRX         ClockPicture_Click
*/
ClockPicture_Click:
if debug_mode = 1 then say "ClockPicture_Click"

   if Switch = 'ON'  then Switch = 'OFF'
   else                   Switch = 'ON'

   call SetSwitch
   call WriteINItialFile

return

/*:VRX         ClockPicture_ContextMenu
*/
ClockPicture_ContextMenu:
if debug_mode = 1 then say "IPB_ClockPicture_ContextMenu"

   ok = VRMethod( "WallSwitch", "Popup")

return

/*:VRX         CountDown
*/
CountDown:
if debug_mode = 1 then say "CountDown"

    /* 他のREXX ProgramでSysDropFuncsが実行されたときに再度Loadする */
    rc = rxfuncadd( "sysloadfuncs", "rexxutil", "sysloadfuncs")
    if rc <> 1 then rc = sysloadfuncs()


    time2 = time2 + 1

    ok = VRSet( "TimeCounter", "Caption", time2 )

    wait   = time2    - time1
    remain = interval - wait

    if Timer <> "Second" then do
        /* ThinkPadなどでsleep modeから復帰した時にZeroTimeをあわせる機能 */
        if ZeroTime = "Yes" then do

            now_sec = right(time(), 2)
            maximum_difference = 1

            call SetSleepTimer

            /*
            now_time = time(m)
            */
            tt = time()
            parse var tt hh ":" mm ":" .
            now_time = hh * 60 + mm

            if (now_time <> start_time) then do
                real_time = (now_time - start_time)//interval
                /* say real_time now_time start_time interval */
                if (interval - real_time) <> remain then do
                    remain = interval - real_time
                    if remain > interval then do
                        remain = remain - interval
                    end
                end
            end
        end
    end

    if remain <= 0 then remain = interval
    if remain <  4 then ok = VRSet( "RemainValue", "BackColor", "Pink" )
    else                ok = VRSet( "RemainValue", "BackColor", "Black" )

    if remain = interval then do
        ok = VRSet( "RemainValue", "Caption", 0 )
        ok = VRSet( "RemainValue", "BackColor", "Yellow" )
        ok = VRSet( "RemainValue", "ForeColor", "Red" )
    end
    else do
        ok = VRSet( "RemainValue", "ForeColor", "White" )
        ok = VRSet( "RemainValue", "Caption", remain )
    end

    if wait >= interval then do
        call SelectBitmap
        time1 = time2
        if RandomTimer = "ON" & ZeroTime = "OFF" then do
            if interval_rec <> 0 then interval = random(1,interval_rec)
            ok = VRSet( "IntervalValue", "Caption", interval )
        end
        ok = VRSet( "RemainValue", "Caption", interval )
        ok = VRSet( "RemainValue", "ForeColor", "White" )
        ok = VRSet( "RemainValue", "BackColor", "Blue" )
    end

    if ExtCommandSwitch = "ON" then do
        do i = 1 to ExternalCommandList.0
            parse var ExternalCommandList.i e_cmd e_opt "," e_param "," e_status
            rc = SysFileTree( e_cmd, "stem", "of" )
            if translate(stem.1) = translate(e_cmd) then do

                RunThisExtCmd = "No"
                if e_param <> "" then do
                    tt = time()
                    parse var tt hh ":" mm ":" .
                    tt = hh":"mm
                    if tt = e_param then RunThisExtCmd = "Yes"
                end

                if RunThisExtCmd = "Yes" then do
                    title = "External Command : "e_cmd
                    call SetTitleBar
                    address cmd "Start "e_cmd" "e_opt
                end
            end
        end
    end

return

/*:VRX         EditINItialFile
*/
EditINItialFile:
if debug_mode = 1 then say "EditINItialFile"

   INI_file = WallDirectory'\Wall.ini'

   i= 1
   do until lines(INI_file) = 0
      ini_file_detail.i = strip(linein(INI_file))
      i = i + 1
   end
   call lineout INI_file

   ini_file_detail.0 = i - 1

   ok = VRMethod( "LB_EditINItialFile", "Clear" )

   ok = VRMethod( "LB_EditINItialFile", "AddStringList", "ini_file_detail.",  )

return

/*:VRX         EF_ExternalCommand_Change
*/
EF_ExternalCommand_Change:
if debug_mode = 1 then say "EF_ExternalCommand_Change"
/*
    if new_cmd = "No" then do
        ok = VRSet( "PB_AddExternalCommand", "Caption", "Change" )
    end
*/ 
    new_cmd = "No"

return

/*:VRX         EF_ExternalCommand_KeyPress
*/
EF_ExternalCommand_KeyPress: 

    ok = VRSet( "PB_ClearExternalCommand",  "Enabled", 1 )

return

/*:VRX         EF_MaximumFileSize_Change
*/
EF_MaximumFileSize_Change:

    MaximumFileSize = VRGet( "EF_MaximumFileSize", "Value" )

    call CheckFileSize
    call ShowBitmapFileDetail

return

/*:VRX         EF_RegistoryNumber_Change
*/
EF_RegistoryNumber_Change:

    ok = VRSet( "PB_Registory", "Enabled", 1 )

return

/*:VRX         EF_SoundPath_Change
*/
EF_SoundPath_Change:
if debug_mode = 1 then say "EF_SoundPath_Change"

    value = VRGet( "EF_SoundPath", "Value" )

    CheckSoundDirectory = "NotCorrect"
    if translate(value) = "CURRENT" then do
        SoundDirectory = "Current"
        ok = VRSet( "EF_SoundPath", "BackColor", "<default>" )
        CheckSoundDirectory = "Correct"
        call WriteINItialFile
    end
    else do
        EditSoundDirectory = value
        rc=SysFileTree(EditSoundDirectory'\*.wav','Check','of')
        if Check.0 = 0 then do
            ok = VRSet( "EF_SoundPath", "BackColor", NotCollectColor )
        end
        if Check.0 > 0 then do
            SoundDirectory = EditSoundDirectory
            ok = VRSet( "EF_SoundPath", "BackColor", "<default>" )
            CheckSoundDirectory = "Correct"
            call WriteINItialFile
        end
    end

    call SetSoundSwitch

return

/*:VRX         EF_StartupBitmap_Change
*/
EF_StartupBitmap_Change:
if debug_mode = 1 then say "EF_StartupBitmap_Change"

    value = VRGet( "EF_StartupBitmap", "Value" )
    rc = VRFileExists(value)
    if rc = 1 then do
        ok = VRSet( "EF_StartupBitmap", "BackColor", "<default>" )
        StartupBitmapName = VRGet( "EF_StartupBitmap", "Value" )
        call WriteINItialFile
    end
    else do
        if value = "" then do
            ok = VRSet( "EF_StartupBitmap", "BackColor", "<default>" )
            StartupBitmapName = VRGet( "EF_StartupBitmap", "Value" )
            call WriteINItialFile
        end
        else do
            ok = VRSet( "EF_StartupBitmap", "BackColor", NotCollectColor )
        end
    end

return

/*:VRX         Exit_SW_About
*/
Exit_SW_About:
if debug_mode = 1 then say "Exit_SW_About"

   ok = VRSet( "TM_About", "Enabled", 0 )
   ok = VRDestroy(SW_About)
   call Expand

return

/*:VRX         ExitRoutine
*/
ExitRoutine:
if debug_mode = 1 then say "ExitRoutine"

   call Reduction
   call VRLoadSecondary "SW_Exit"

return

/*:VRX         ExitWall_Yes_Click
*/
ExitWall_Yes_Click:
if debug_mode = 1 then say "ExitWall_Yes_Click"

   call Reduction
   call quit

return

/*:VRX         Expand
*/
Expand:
if debug_mode = 1 then say "Expand"

    ok = VRSet( "Window1", "Visible", 1 )

    if AnimateWindow = "Enabled" then do
        ok = VRSet( 'window1', 'width', NormalSizeValue )
        do size = 20 to height by 500
            ok = VRSet( 'window1', 'Height', size )
        end
        ok = VRSet( 'window1', 'Height', height )
        if Function = 'Full' then do
            do size = NormalSizeValue to FullSizeValue by 1500
                ok = VRSet( 'window1', 'width', size )
            end
            ok = VRSet( 'window1', 'width', FullSizeValue )
        end
    end

return

/*:VRX         FactorySetting
*/
FactorySetting:
if debug_mode = 1 then say "FactorySetting"

    /* default timer unit (minutes) */ /* Factory Settingの先頭に移動 (3.39 beta 4, 27.Aug.2000) */
    TimerUnit = 60000 /* [m-.] */

    /* default interval time */
    interval        = 30
    interval_unused = interval
    ok = VRSet( "IntervalValue", "Caption", Interval )
    ok = VRSet( "TimerSlider", "Percentile", 50 )

    SelectTimeUnitList="10m;20m;30m;40m;50m;1h;1h10m;1h20m;1h30m;1h40m;1h50m;2h"
    SelectedTimeUnit="30m"
    ok = VRSet( "SPIN_TimeSelecter", "Value", SelectedTimeUnit )
    call SetSelectTimeUnitList
    ok = VRMethod( "SPIN_TimeSelecter", "SetStringList", "TimeUnitList." )

    Timer = "Minute" /* add at 02.Apr.98 for bug fix */
    ok = VRSet( "SPIN_Unit", "Value", Timer )
/*  call SetTimeSliderTime */
    call SetTrigger
/*
    ok = VRSet( "SPIN_Unit", "Index", 1 )
*/
    ok = VRSet( "ImageDirectory", "Value", VRIniDir()||"\bitmap" )

    SubDir = 'OFF'
    ok = VRSet( "CB_SubDirectory", "Set", 0 )

    Order = 'Random'
    
    ok = VRSet( "RB_Random", "Set", 1 )
    ok = VRSet( "RB_Order", "Set", 0 )

    Resize = 'No'
    ok = VRSet( "CB_ResizePicture", "Set", 0 )
    ok = VRSet( "Pict_Preview", "ResizePicture", 0 )

    Minimize = 'No'
    ok = VRSet( "CB_WindowSize", "Set", 0 )

    ChangeAtStartUp = 'No'
    ok = VRSet( "CB_ChangeAtStartUp", "Set", 0 )

    /*
    Function = 'Minimum'
    call ChangeWindowSize
    ok = VRSet( "CB_FullFunction", "Set", 0 )
    */
    Function = 'Full'
    call ChangeWindowSize
    ok = VRSet( "CB_FullFunction", "Set", 1 )

    ImageType = "n"
    BitmapImage = 'Normal'
    ok = VRSet( "SPIN_Image", "Value", BitmapImage )

    ImageScale = '1x1'
    Scale = '1'
    ok = VRSet( "SPIN_Scale", "Value", ImageScale )

    bitmap_num = 0
    BitmapData = "<none>"

    Switch = 'ON'
    call SetSwitch

    RandomTimer = 'OFF'
    RandomTimer_rec = 'OFF'
    ok = VRSet( "CB_RandomTimer", "Set", 0 )

    Option = 'OFF'

    Red   = 105
    Green = 105
    Blue  = 105
    call SetColorBars

    RandomColor = "OFF"
    ok = VRSet( "CB_RandomBGColor", "Set", 0 )
    ok = VRSet( "PB_AcceptColor", "Enabled", 1 )
    call SetRGBColorSlider

    BackType = "i"
    ColorOnly = "No"
    ok = VRSet( "CB_ColorOnly", "Set", 0 )

    UseEAArea = '.COMMENTS'
    UseBitmapEA = "No"
    ok = VRSet( "CB_UseBitmapEA", "Set", 0 )
    ok = VRSet( "PB_AcceptAsBitmapData", "Enabled", 0 )

    UseType = "No"
    ImageType_detail = ""
    ok = VRSet( "CB_Type", "Set", 0 )
    ok = VRSet( "CB_Type", "Enabled", 0 )

    Uolor = "No"
    color_hex_value = ""
    ok = VRSet( "CB_Color", "Set", 0 )
    ok = VRSet( "CB_Color", "Enabled", 0 )

    ok = VRSet( "DT_UseTypeSignal", "Visible", 0 )
    ok = VRSet( "DT_UseColorSignal", "Visible", 0 )

    ok = VRSet( "PB_ClearEA", "Enabled", 0 )

    Sound = "ON"
    SoundVolume = 80
    ok = VRSet( "SL_SoundVolume", "Percentile", SoundVolume )
/*  SoundVolumeRibbonColor = "(238,130,238)" */
/*  SoundVolumeRibbonColor = "(218,112,214)" */
    SoundVolumeRibbonColor = "(255,250,205)"
    ok = VRSet( "SL_SoundVolume", "RibbonColor", SoundVolumeRibbonColor )
    SoundDirectory = 'Current'
    SoundDirectoryCheck = 'NotCorrect'
    ok = VRSet( "EF_SoundPath", "Value", SoundDirectory )
    ok = VRSet( "IPB_SoundSwitch", "PicturePath", "#130" )

    CheckScreenSizeEverytime = "No"
    ok = VRSet( "CB_CheckScreenSize", "Set", 0 )
    CheckScreenSize = "Yet"
    ScreenWidth  = 12358 /* 1024 * 768 */
    ScreenHeight =  9275 /* 1024 * 768 */

    WallEmr = "OFF"
    ok = VRSet( "IPB_WallEmr_Switch", "PicturePath", "#138" )
    WallEmrData = "<none>"

    ExtCommandSwitch = "OFF"
    call SetExtCommandSwitch
    ExtCommand = "<none>"
    ExternalCommandList.0 = 0
    ok = VRSet( "CB_ExternalCommand", "Set", 0 )
    ok = VRSet( "PB_SetExternalCommand", "Enabled", 0 )

    UseMode = "Use"
    ok = VRSet( "PB_UseUnuse", "Caption", "Use" )
    ok = VRSet( "PB_UseUnuse", "Enabled", 0 )
    ok = VRSet( "PB_UseUnuse", "BackColor", "PaleGray" )
    ok = VRSet( "PB_UseUnuse", "ForeColor", "DarkCyan" )

    UseWindowsTypeBitmaps = "No"
    ok = VRSet( "CB_UseWindowsTypeBitmap", "Set", 0 )

    UseTimeSelector = "No"
    ok = VRSet( "CB_UseTimeSelector", "Set", 0 )
    ok = VRSet( "PB_ModifyTimerUnitList", "Visible", 0 )
    call SetTimeButtons

    ZeroTime = "No"
    ok = VRSet( "CB_ZeroTimeFunction", "Set", 0 )
    ok = VRSet( "CB_RandomTimer", "Enabled", 1 )

    /* Image Button */
    ImageButtonColor = "(65,105,225)"
    ImageButtonTextColor = "(237,245,230)"

    NotCollectColor = "(216,191,216)"

    BmpImage = "Yes"
    ok = VRSet( "PB_BmpImage", "BackColor", ImageButtonColor )
    ok = VRSet( "PB_BmpImage", "ForeColor", ImageButtonTextColor )
    GifImage = "No"
    ok = VRSet( "PB_GifImage", "BackColor", "DarkGray" )
    ok = VRSet( "PB_GifImage", "ForeColor", "PaleGray" )
    JpgImage = "No"
    ok = VRSet( "PB_JpgImage", "BackColor", "DarkGray" )
    ok = VRSet( "PB_JpgImage", "ForeColor", "PaleGray" )
    TifImage = "No"
    ok = VRSet( "PB_TifImage", "BackColor", "DarkGray" )
    ok = VRSet( "PB_TifImage", "ForeColor", "PaleGray" )
    TgaImage = "No"
    ok = VRSet( "PB_TgaImage", "BackColor", "DarkGray" )
    ok = VRSet( "PB_TgaImage", "ForeColor", "PaleGray" )
    PcxImage = "No"
    ok = VRSet( "PB_PcxImage", "BackColor", "DarkGray" )
    ok = VRSet( "PB_PcxImage", "ForeColor", "PaleGray" )
    DibImage = "No"
    ok = VRSet( "PB_DibImage", "BackColor", "DarkGray" )
    ok = VRSet( "PB_DibImage", "ForeColor", "PaleGray" )

    if os2_version < "2.40" then do
        ok = VRSet( "PB_GifImage", "Enabled", 0 )
        ok = VRSet( "PB_JpgImage", "Enabled", 0 )
    end

    /* Default Font */
    /*
    Font = "9.WarpSans"
    */
    Font = "<NONE>"

    Registry = "Unregistered"
    RegisterNumber = "Unregistered"

    /* Animate Window */
    AnimateWindow = "Enabled"
    ok = VRSet( "CB_AnimateWindow", "Set", 1 )

    /* File Synchronize */
    FileSynchronize = "Disabled"
    ok = VRSet( "CB_FileSynchronize", "Set", 0 )

    /* Startup Bitmap Function */
    StartupBitmap = "Disabled"
    StartupBitmapName = ""
    ok = VRSet( "CB_StartupBitmap", "Set", 0 )

    /* Maximum File Size */
    MaximumFileSizeMode = "Disabled"
    ok = VRSet( "EF_MaximumFileSize", "Enabled", 0 )
    MaximumFileSize     = 1024 /* 1024KB = 1MB */
    ok = VRSet( "EF_MaximumFileSize", "Value", MaximumFileSize )
    FileSize = "Standard"
    file_size = 0

    /* File Detail Color */
    FileDetailColorBack     = "(065,105,225)"
    FileDetailColorFore     = "(255,255,255)"
    FileDetailColorSizeOver = "(255,020,147)"
    ok = VRSet( "DT_FileDetail_Date",   "BackColor", FileDetailColorBack )
    ok = VRSet( "DT_FileDetail_Date",   "ForeColor", FileDetailColorFore )
    ok = VRSet( "DT_FileDetail_Time",   "BackColor", FileDetailColorBack )
    ok = VRSet( "DT_FileDetail_Time",   "ForeColor", FileDetailColorFore )
    ok = VRSet( "DT_FileDetail_Attrib", "BackColor", FileDetailColorBack )
    ok = VRSet( "DT_FileDetail_Attrib", "ForeColor", FileDetailColorFore )
    ok = VRSet( "DT_FileDetail_Size",   "BackColor", FileDetailColorBack )
    ok = VRSet( "DT_FileDetail_Size",   "ForeColor", FileDetailColorFore )

    /* Standard I/O Redirection */
    StandardIORedirection = "Disabled" /* Default EnabledからDisabledに仕様変更 (3.39 beta 2, 05.Aug.2000) */
    /* 設定変更出来ない様に仕様変更 (3.39 beta 2, 05.Aug.2000) 
    ok = VRSet( "CB_StandardIORedirection", "Set", 1 )
    */
    if debug_mode = 0 then do
        call VRRedirectStdio "off"
    end

    /* Exit After 1st Change */
    ExitAFter1stChange = "Disabled"
    ok = VRSet( "CB_ExitAfter1stChange", "Set", 0 )

    /* Multiple Set Ea Function (New function from 3.19 beta 1) */
    MultiSetEa = "No"

    /* Default Image Viewer */
    ImageViewer = "ib.exe"
    ok = VRSet( "EF_GraphicViewer", "Value", VRParseFileName(ImageViewer, "N")"."VRParseFileName(ImageViewer, "E") )

return
/*:VRX         Fini
*/
Fini:
if debug_mode = 1 then say "Fini"
/* Finiをコメント・アウト (PopCD!で実績あり) */
/*
    window = VRWindow()
    call VRSet window, "Visible", 0
    drop window
*/
return 0

/*:VRX         GetEAData
*/
GetEAData:
if debug_mode = 1 then say "GetEAData"

    ok = VRSet( "DT_UseTypeSignal", "Visible", 0 )
    ok = VRSet( "DT_UseColorSignal", "Visible", 0 )

    rc = SysGetEA(image.bitmap_num, UseEAArea, "data")

    parse var data UseMode data_unuse_mode
    if UseMode = "Unused" then do
        parse var data_unuse_mode data_type data_scale data_red data_green data_blue
        ok = VRSet( "PB_UseUnuse", "Caption", "Unused" )
    end
    else do
        parse var data data_type data_scale data_red data_green data_blue
        UseMode = "Use"
        ok = VRSet( "PB_UseUnuse", "Caption", "Use" )

        real_data = ImageType" "Scale" "Red" "Green" "Blue

        if UseType = "Yes" then do
            if data_type   <> "NO_RESERVED" & data_type   <> "" then do
                ImageType = data_type
                if data_type = "n" then ImageType_detail = "Normal"
                if data_type = "s" then ImageType_detail = "Sized "data_scale
                if data_type = "t" then ImageType_detail = "Tiled"
                ok = VRSet( "DT_UseTypeSignal", "Visible", 1 )
                ok = VRSet( "DT_UseTypeSignal", "Caption", ImageType_detail )
                ok = VRSet( "SPIN_Image", "ForeColor", DarkCyan )
                ok = VRSet( "SPIN_Scale", "ForeColor", DarkCyan )
                ok = VRSet( "SPIN_Unit", "Value", data_type_value )
            end
            if data_scale  <> "NO_RESERVED" & data_scale  <> "" then do
                Scale     = data_scale
            end
        end
        if UseColor = "Yes" then do
            if data_red    <> "NO_RESERVED" & data_red    <> "" then do
                Red       = data_red
                ok = VRSet( "DT_UseColorSignal", "Visible", 1 )
            end
            if data_green  <> "NO_RESERVED" & data_green  <> "" then do
                Green     = data_green
            end
            if data_blue   <> "NO_RESERVED" & data_blue   <> "" then do
                Blue      = data_blue
            end
        end
    end

    call SetBitmapUseMode

return

/*:VRX         GetEADataPreview
*/
GetEADataPreview:
if debug_mode = 1 then say "GetEADataPreview"

    ok = VRSet( "DT_UseTypeSignal",  "Visible", 0 )
    ok = VRSet( "DT_UseColorSignal", "Visible", 0 )

    ImageType_detail = "" /* Default NULL (3.31 beta 2, 19.Aug.1999) */
    UseMode = "" /* Default NULL (3.31 beta 3, 20.Aug.1999) */

    rc = SysGetEA(image.bitmap_num, UseEAArea, "sample" )
    if sample <> "" then do

        parse var sample UseMode sample_unuse_mode
        if UseMode = "Unused" then do
            parse var sample_unuse_mode sample_type sample_scale sample_red sample_green sample_blue
            ok = VRSet( "PB_UseUnuse", "Caption", "Unused" )
        end
        else do
            parse var sample sample_type sample_scale sample_red sample_green sample_blue
            UseMode = "Use"
            ok = VRSet( "PB_UseUnuse", "Caption", "Use" )
        end

        if UseType = "Yes" then do
            if sample_type <> "NO_RESERVED" & sample_type <> "" then do
                ok = VRSet( "DT_UseTypeSignal",  "Visible", 1 )
                if sample_type = "n" then ImageType_detail = "Normal"
                if sample_type = "s" then ImageType_detail = "Sized "sample_scale
                if sample_type = "t" then ImageType_detail = "Tiled"
                ok = VRSet( "DT_UseTypeSignal", "Caption", ImageType_detail )
            end
        end
        if UseColor = "Yes" then do
            if sample_red  <> "NO_RESERVED" & sample_red  <> "" then do
                ok = VRSet( "DT_UseColorSignal", "Visible", 1 )
                color_hex_value = D2X(sample_red)""D2X(sample_green)""D2X(sample_blue)
                ok = VRSet( "DT_UseColorSignal", "Caption", color_hex_value )

                call SetBGColorPreview
            end
        end
        else do
            call SetBGColor
        end
    end
    else do
        call SetBGColor
        UseMode = "Use"
    end

    call SetBitmapUseMode

return

/*:VRX         GetFiles
*/
GetFiles:
if debug_mode = 1 then say "GetFiles"

   title = "Search"
   call SetTitleBar

   image.0 = 0

   if SubDir = "ON"  then SubDirectory = "os"
   if SubDir = "OFF" then SubDirectory = "of"

   Image_bmp.0 = 0
   Image_gif.0 = 0
   Image_jpg.0 = 0
   Image_tif.0 = 0
   Image_tga.0 = 0
   Image_pcx.0 = 0
   Image_dib.0 = 0

   if BmpImage = "Yes" then rc=SysFileTree(BitmapDirectory'\*.bmp', 'Image_bmp', SubDirectory)
   if os2_version >= "2.40" then do
      if GifImage = "Yes" then rc=SysFileTree(BitmapDirectory'\*.gif', 'Image_gif', SubDirectory)
      if JpgImage = "Yes" then rc=SysFileTree(BitmapDirectory'\*.jpg', 'Image_jpg', SubDirectory)
      if TifImage = "Yes" then rc=SysFileTree(BitmapDirectory'\*.tif', 'Image_tif', SubDirectory)
      if TgaImage = "Yes" then rc=SysFileTree(BitmapDirectory'\*.tga', 'Image_tga', SubDirectory)
      if PcxImage = "Yes" then rc=SysFileTree(BitmapDirectory'\*.pcx', 'Image_pcx', SubDirectory)
      if DibImage = "Yes" then rc=SysFileTree(BitmapDirectory'\*.dib', 'Image_dib', SubDirectory)
   end

   n = 0
   subtotal = 0

   if Image_bmp.0 <> 0 then do
      do n = 1 to image_bmp.0
         image.n = image_bmp.n
      end
   end
   if Image_gif.0 <> 0 then do
      do n = 1 to image_gif.0
         subtotal = image_bmp.0 + n
         image.subtotal = image_gif.n
      end
   end
   if Image_jpg.0 <> 0 then do
      do n = 1 to image_jpg.0
         subtotal = image_bmp.0 + image_gif.0 + n
         image.subtotal = image_jpg.n
      end
   end
   if Image_tif.0 <> 0 then do
      do n = 1 to image_tif.0
         subtotal = image_bmp.0 + image_gif.0 + image_jpg.0 + n
         image.subtotal = image_tif.n
      end
   end
   if Image_tga.0 <> 0 then do
      do n = 1 to image_tga.0
         subtotal = image_bmp.0 + image_gif.0 + image_jpg.0 +image_tif.0 + n
         image.subtotal = image_tga.n
      end
   end
   if Image_pcx.0 <> 0 then do
      do n = 1 to image_pcx.0
         subtotal = image_bmp.0 + image_gif.0 + image_jpg.0 + image_tif.0 + image_tga.0 + n
         image.subtotal = image_pcx.n
      end
   end
   if Image_dib.0 <> 0 then do
      do n = 1 to image_dib.0
         subtotal = image_bmp.0 + image_gif.0 + image_jpg.0 + image_tif.0 + image_tga.0 + image_pcx.0 + n
         image.subtotal = image_dib.n
      end
   end

   image.0 = image_bmp.0 + image_gif.0 + image_jpg.0 + image_tif.0 + image_tga.0 + image_pcx.0 + image_dib.0

   ok = VRSet( "DT_BitmapNum", "Caption", Image.0 )
   do n = 0 to Image.0
      Name.n = filespec('name',Image.n)
   end

   ok = VRMethod( "LB_BitmapList", "Clear" )
   ok = VRMethod( "LB_BitmapList", "AddStringList", "Name.",  )

   title = "Normal"
   call SetTitleBar

return

/*:VRX         Halt
*/
Halt:
if debug_mode = 1 then say "Halt"

    signal _VREHalt

return

/*:VRX         ImageDirectory_Change
*/
ImageDirectory_Change:
if debug_mode = 1 then say "ImageDirectory_Change"

    BitmapDirectory = VRGet( "ImageDirectory", "Value" )

    if change = 0 then do
        drive = translate(filespec("Drive",BitmapDirectory))
        do n = 1 to d.0
            if drive = d.n then do
                ok = VRSet( "SPIN_Drive", "Index", n )
                change = 1
            end
        end
    end
    else do
        change = 0
    end

    ok = VRMethod( "LB_Directory", "Clear" )
    ok = VRMethod( "LB_BitmapList", "Clear" )

    if (length(BitmapDirectory) <> lastpos("\",BitmapDirectory)) then do
        rc = VRFileExists(BitmapDirectory"\.")
        if rc = 1 then do
            ok = VRSet( "ImageDirectory", "BackColor", "<default>" )
            ok = VRSet( "LB_Directory",   "BackColor", "<default>" )
            ok = VRSet( "LB_BitmapList",  "BackColor", "<default>" )

            n = 1
            directory = VRDir(BitmapDirectory"\*","n","d")
            do while (directory <> "")
                dircheck = VRIsDIr(BitmapDirectory"\"directory)
                if ((dircheck = 1)&(directory <> ".")) then do
                    dir.n = directory
                    n = n + 1
                end
                directory = VRDir(,"n")
            end
            dir.0 = n - 1

            ok = VRMethod( "LB_Directory", "Clear" )
            ok = VRMethod( "LB_Directory", "AddStringList", "dir.",  )

            call GetFiles

            call WriteINItialFile
        end
        else if rc = 0 then do
            ok = VRSet( "ImageDirectory", "BackColor", NotCollectColor )
            ok = VRSet( "LB_Directory", "BackColor", NotCollectColor )
            ok = VRSet( "LB_BitmapList", "BackColor", NotCollectColor )
        end
    end
    else do
        ok = VRSet( "ImageDirectory", "BackColor", NotCollectColor )
        ok = VRSet( "LB_Directory", "BackColor", NotCollectColor )
        ok = VRSet( "LB_BitmapList", "BackColor", NotCollectColor )
    end

return
/*:VRX         Init
*/
Init:
if debug_mode = 1 then say "Init"

    /* Run Optionのargumentにdebugmodeを指定した場合の処置 */
    if translate(initArgs.1) =  "DEBUGMODE" then do
        ok = VrLoadSecondary( "SW_SelectRunMode", "w")
    end
    else do
        debug_mode = 0
    end

    /* The Wall Version */
    WallVersion = "3.50"

    call VRSet "console", "WindowListTitle", ""

    /* VX-REXX Message Consoleを消去 (from ver.3.11.a)*/
    /* -> Parameterで設定出来るように仕様変更 (from 3.13 beta 1)
    if debug_mode = 0 then do
        call VRRedirectStdio "off"
    end
    */

    call rxfuncadd sysloadfuncs, rexxutil, sysloadfuncs
    call sysloadfuncs

    /* OS/2 Version */
    os2_version = SysOs2Ver()

    /* Read Drive map */
    call ReadDriveMap

    bitmap_num = 0

    interval        = 0
    time1           = 0
    time2           = 0
    Bitmaps         = 0
    change          = 1
    startup         = 1
    bringup         = 1
    Window_Activate = 0

    start_timer  = "OFF"

    interval_rec    = 0
    interval_unused = 0

    start_time = 0
    now_time   = 0

    window_condition = "UnVisible"

    height            =   5160
    GeneralModeHeight = height
    DebugModeHeight   =   6842
    FullSizeValue     =  11160
    NormalSizeValue   =   3540

    clock_count = 0
    vary = "increase"
    ExtCommandMode = "ON"

    block_bringup_count = 0

    write_mode = "Disabled"

    WallDirectory = VRCurrDrive()||VRCurrDir()
    if right(WallDirectory, 1) = "\" then do
        WallDirectory = left(WallDirectory, length(WallDirectory) - 1)
    end

    ok = VRSet( "BitmapName", "Caption", "OS/2 Wallpaper Changer" )
    ok = VRSet( "ImageDirectory", "Value", VRIniDir()||"\bitmap" )

    rc=SysFileTree(WallDirectory'\WallEmr.Exe','WallEmr','of')
    if translate(WallEmr.1) = translate(WallDirectory"\WallEmr.Exe") then do
        ok = VRSet( "IPB_WallEmr_Switch", "Visible", 1 )
    end
    else do
        ok = VRSet( "IPB_WallEmr_Switch", "Visible", 0 )
    end

    /* MultiMedia REXX */
    call SearchMMOS2

    if mmos2 = "Disabled" then do
        ok = VRSet( "IPB_SoundSwitch", "Enabled", 0 )
        ok = VRSet( "EF_SoundPath",    "Enabled", 0 )
        ok = VRSet( "DT_Sound_Dir",    "Enabled", 0 )
        ok = VRSet( "PB_GifImage",     "Enabled", 0 )
        ok = VRSet( "PB_JpgImage",     "Enabled", 0 )

        ok = VRSet( "PB_TifImage",     "Enabled", 0 ) /* 追加 3.32 beta 1, Bug fix */
        ok = VRSet( "PB_TgaImage",     "Enabled", 0 ) /* 追加 3.32 beta 1, Bug fix */
        ok = VRSet( "PB_PcxImage",     "Enabled", 0 ) /* 追加 3.32 beta 1, Bug fix */
        ok = VRSet( "PB_DibImage",     "Enabled", 0 ) /* 追加 3.32 beta 1, Bug fix */
    end
    if mmos2 = "Enabled" then do
        rc = RXFUNCDROP("mciRxInit") /* rc = 1 : previously not installed */
        rc = RXFUNCADD("mciRxInit","MCIAPI","mciRxInit")
        rc = mciRxInit()

        ok = VRSet( "IPB_SoundSwitch", "Enabled", 1 )
        ok = VRSet( "EF_SoundPath",    "Enabled", 1 )
        ok = VRSet( "DT_Sound_Dir",    "Enabled", 1 )
        ok = VRSet( "PB_GifImage",     "Enabled", 1 )
        ok = VRSet( "PB_JpgImage",     "Enabled", 1 )

        ok = VRSet( "PB_TifImage",     "Enabled", 1 ) /* 追加 3.32 beta 1, Bug fix */
        ok = VRSet( "PB_TgaImage",     "Enabled", 1 ) /* 追加 3.32 beta 1, Bug fix */
        ok = VRSet( "PB_PcxImage",     "Enabled", 1 ) /* 追加 3.32 beta 1, Bug fix */
        ok = VRSet( "PB_DibImage",     "Enabled", 1 ) /* 追加 3.32 beta 1, Bug fix */
    end

    call FactorySetting
    call ReadINIFile
    call SetBGColor

    if Font = "<NONE>" then do
        Font_old = "9.WarpSans"
        Font = VRFontDialog( VRWindow(), "9.WarpSans", "The Wall "WallVersion" - Set font, anyway" )
        if Font = "" then Font = Font_old
    end

    call SetFont


    /* Registration */
    /*
    call Registration
    */
    Registry = "Registered" /* Freewareに変更 11.Sep.2004 */

    /* Debug Mode */
    if debug_mode = 1 then do
        height = DebugModeHeight
        ok = VRSet( "Window1", "height", height )
        call EditINItialFile
    end

    window = VRWindow()
    call VRMethod window, "CenterWindow"

    ok = VRSet( "Window1", "Left", WallPosX )
    ok = VRSet( "Window1", "Top",  WallPosY )

    if Minimize = "No" then do
        call VRSet window, "Visible", 1
        window_condition = "Visible"
    end

    call VRMethod window, "Activate"
    drop window

return
/*:VRX         InstallWaveFile
*/
InstallWaveFile:
if debug_mode = 1 then say "InstallWaveFile"

   if SoundDirectory = 'Current' then rc=SysFileTree(WallDirectory'\*.wav', 'Sounds','of')
   else                               rc=SysFileTree(SoundDirectory'\*.wav','Sounds','of')

   if Sounds.0 = 0 then Sound = "OFF"
   if Sounds.0 > 0 then Sound = "ON"

   call SetSoundSwitch
   call WriteINItialFile

return

/*:VRX         IPB_SoundSwitch_Click
*/
IPB_SoundSwitch_Click:
if debug_mode = 1 then say "IPB_SoundSwitch_Click"

    if Sound = 'ON'  then Sound = 'OFF'
    else                  Sound = 'ON'

    call SetSoundSwitch

    ok = VRMethod( "LB_BitmapList", "SetFocus" )

return

/*:VRX         IPB_SoundSwitch_ContextMenu
*/
IPB_SoundSwitch_ContextMenu:
if debug_mode = 1 then say "IPB_SoundSwitch_ContextMenu"

   ok = VRMethod( "SoundSwitch", "Popup")

return

/*:VRX         IPB_WallEmr_Switch_Click
*/
IPB_WallEmr_Switch_Click:
if debug_mode = 1 then say "IPB_WLemr_Switch_Click"

    if WallEmr = "ON" then do
        WallEmr = "OFF"
        ok = VRSet( "IPB_WallEmr_Switch", "PicturePath", "#138" )
    end
    else do
        WallEmr = "ON"
        ok = VRSet( "IPB_WallEmr_Switch", "PicturePath", "#136" )
    end

    ok = VRMethod( "LB_BitmapList", "SetFocus" )

return

/*:VRX         IPB_WallEmr_Switch_ContextMenu
*/
IPB_WallEmr_Switch_ContextMenu:
if debug_mode = 1 then say "IPB_WallEmr_Switch_ContextMenu"

   ok = VRMethod( "WallEmr", "Popup")

return

/*:VRX         LB_BitmapList_Click
*/
LB_BitmapList_Click:
if debug_mode = 1 then say "LB_BitmapList_Click"

   ok = VRMethod( "LB_BitmapList", "GetSelectedList", "MultiSetEaSelectedList." )

    if MultiSetEaSelectedList.0 = 1 then do
        MultiSetEa = "No"

        ok = VRSet( "OpenBitmap", "Enabled", 1 )

        if FileSynchronize = "Enabled Active" then do
            FileSynchronize = "Enabled"
        end
        else do
            title = "Change"
            call SetTitleBar

            selectedstring = VRGet( "LB_BitmapList", "SelectedString" )
            selected       = VRGet( "LB_BitmapList", "Selected" )
            i = selected
            bitmap_num = i

            call CheckFileSize
            call ShowBitmapFileDetail

            ok = VRSet( "Pict_Preview", "PicturePath", image.bitmap_num )
            /*
            ok = VRSet( "DT_SearchLoadIndicator", "Visible", 0 )
            */

            if UseBitmapEA = "Yes" then call GetEADataPreview

            title = "Normal"
            call SetTitleBar
        end
    end
    else if MultiSetEaSelectedList.0 > 1 then do
        MultiSetEa = "Yes"

        ok = VRSet( "Pict_Preview", "PicturePath", "#140" )
        ok = VRSet( "DT_UseTypeSignal",     "Caption", "" )
        ok = VRSet( "DT_UseColorSignal",    "Caption", "" )

        ok = VRSet( "DT_FileDetail_Date",   "Caption", "" )
        ok = VRSet( "DT_FileDetail_Time",   "Caption", "" )
        ok = VRSet( "DT_FileDetail_Attrib", "Caption", "" )
        ok = VRSet( "DT_FileDetail_Size",   "Caption", "" )

/*      ok = VRSet( "OpenBitmap", "Enabled", 0 ) *//* UseBitmapEAContextMenuに移動 3.31 beta 1, 16.Aug.1999 */
    end

return

/*:VRX         LB_BitmapList_ContextMenu
*/
LB_BitmapList_ContextMenu:
if debug_mode = 1 then say "LB_BitmapList_ContextMenu"

    if UseBitmapEA = "Yes" then do
        call UseBitmapEAContextMenu
    end

return

/*:VRX         LB_BitmapList_DoubleClick
*/
LB_BitmapList_DoubleClick:
if debug_mode = 1 then say "LB_BitmapList_DoubleClick"

    selectedstring = VRGet( "LB_BitmapList", "SelectedString" )
    selected = VRGet( "LB_BitmapList", "Selected" )
    bitmap_num = selected

    if MaximumFileSizeMode = "Enabled" then do
        call CheckFileSize

        if FileSize = "Standard" then do
           call ChangeBitmap
        end
        else if FileSize = "Large" then do
            call SelectBitmap
        end
    end
    else do
       call ChangeBitmap
    end

return

/*:VRX         LB_BitmapList_KeyPress
*/
LB_BitmapList_KeyPress:
if debug_mode = 1 then say "LB_BitmapList_KeyPress"

   /*
       Ctrl + u/U : {Ctrl}u   Use/Unuse
       Ctrl + t/T : {Ctrl}t   Tiled
       Ctrl + s/S : {Ctrl}s   Sized (Scale 1-20)
       Ctrl + n/N : {Ctrl}n   Normal
       Ctrl + c/C : {Ctrl}c   Clear EA Data
       Up key     : {Up}
       Down key   : {Down}
   */

   BitmapImage = VRGet( "SPIN_Image", "Value" )
   call SetImageType

   keystring = VRGet( "LB_BitmapList", "KeyString" )

   if UseBitmapEA = "Yes" &  keystring <> "{Up}" & keystring <> "{Down}" then do
      if keystring = "{Up}" | keystring = "{Down}" then do
         ok = VRSet( "DT_UseTypeSignal", "Visible", 0 )
         ok = VRSet( "DT_UseColorSignal", "Visible", 0 )
         call GetEADataPreview
      end
      else if translate(keystring) = "{CTRL}U" then do
         if   UseMode = "Use" then UseMode = "Unused"
         else UseMode = "Use"

         call SetBitmapUseMode

         rc = SysGetEA(image.i, UseEAArea, "PreviousData" )
         if PreviousData = "" then do
            rc = SysPutEA( image.i, ".COMMENTS", UseMode )
         end
         else do
            call PutEAData
         end
      end
      else if translate(keystring) = "{CTRL}C" then do
         call ClearEAdata
      end
      else if UseType = "Yes" then do
         visible = VRGet( "DT_UseTypeSignal", "Visible" )
         if visible = 0 then do
            ok = VRSet( "DT_UseTypeSignal", "Visible", 1 )
         end

         BitmapImage_old = BitmapImage
         if      translate(keystring) = "{CTRL}N" then do
            BitmapImage = "Normal"
            ImageType = "n"
         end
         else if translate(keystring) = "{CTRL}T" then do
            BitmapImage = "Tiled"
            ImageType = "t"
         end
         else if translate(keystring) = "{CTRL}S" then do
            Scale = Scale + 1
            if Scale > 20 then Scale = 1
            BitmapImage = "Sized "Scale
            ImageType = "s"
         end
         else do
            nop
         end

         ok = VRSet( "DT_UseTypeSignal", "Caption", BitmapImage )
         BitmapImage = BitmapImage_old

         call PutEaData
      end
   end

return

/*:VRX         LB_Directory_DoubleClick
*/
LB_Directory_DoubleClick:
if debug_mode = 1 then say "LB_Directory_DoubleClick"

   title = 'Search'
   call SetTitleBar

   selectedstring = VRGet( "LB_Directory", "SelectedString" )
   dirname = BitmapDirectory"\"selectedstring
   if selectedstring = ".." then do
      n.0 = 9
      parse var BitmapDirectory n.1 "\" n.2 "\" n.3 "\" n.4 "\" n.5 "\" n.6 "\" n.7 "\" n.8 "\" n.9 "\"
      do i= 1 to n.0
         if n.i = "" then leave
      end
      n.0 = i - 1
      dirname = n.1
      do i = 2 to (n.0 - 1)
         dirname = dirname||"\"||n.i
      end
   end
   change = 1
   ok = VRSet( "ImageDirectory", "Value", dirname )

return
/*:VRX         LB_EditINItialFile_Click
*/
LB_EditINItialFile_Click:
/*if debug_mode = 1 then say "LB_EditINItialFile_Click"*/

   selected = VRGet( "LB_EditINItialFile", "Selected" )
   ok = VRSet( "EF_INI_detail", "Value", ini_file_detail.selected )
   ok = VRMethod( "EF_INI_detail", "SetFocus" )

return

/*:VRX         LB_ExternalCommandList_Click
*/
LB_ExternalCommandList_Click:
if debug_mode = 1 then say "LB_ExternalCommandList_Click"
/*
    ok = VRSet( "PB_AddExternalCommand", "Caption", "Change" )
*/

    ok = VRSet( "PB_ChangeExternalCommand", "Enabled", 1 )
    ok = VRSet( "PB_RemoveExternalCommand", "Enabled", 1 )
    ok = VRSet( "PB_ClearExternalCommand",  "Enabled", 1 )

    selected = VRGet( "LB_ExternalCommandList", "Selected" )
    string = VRMethod( "LB_ExternalCommandList", "GetString", selected )

    parse var string string "," param "," exc_status

    if exc_status = "Enabled" then do
        ok = VRSet( "CB_EnabledExternalCommand", "Set", 1 )
    end
    else do
        ok = VRSet( "CB_EnabledExternalCommand", "Set", 0 )
    end

    ok = VRSet( "EF_ExternalCommand", "Value", string )

    if param = "Everytime" | param = "" then do
        ExtCommandRunMode = "CHANGED"

        ok = VRSet( "RB_RunWhenChanged", "Set", 1 )

        ok = VRSet( "SPIN_EC_Hour",   "Enabled", 0 )
        ok = VRSet( "SPIN_EC_Minute", "Enabled", 0 )
    end
    else do
        ExtCommandRunMode = "TIME"

        ok = VRSet( "RB_RunFixedTime", "Set", 1 )
        parse var param hh ":" mm
        ok = VRSet( "SPIN_EC_Hour", "Index", hh + 1 )
        ok = VRSet( "SPIN_EC_Minute", "Index", mm + 1 )

        ok = VRSet( "SPIN_EC_Hour",   "Enabled", 1 )
        ok = VRSet( "SPIN_EC_Minute", "Enabled", 1 )
    end

return

/*:VRX         MLE_SelectTimerUnitList_Change
*/
MLE_SelectTimerUnitList_Change:
if debug_mode = 1 then say "MLE_SelectTimerUnitList_Change"

    value = VRGet( "MLE_SelectTimerUnitList", "Value" )
    parse var value X.1";"X.2";"X.3";"X.4";"X.5";"X.6";"X.7";"X.8";"X.9";"X.10";"X.11";"X.12";"X.13";"X.14";"X.15";"X.16";"X.17";"X.18";"X.19";"X.20";"X.21";"X.22";"X.23";"X.24";"X.25";"X.26";"X.27";"X.28";"X.29";"X.30";"X.31";"X.32";"X.33";"X.34";"X.35";"X.36";"X.37";"X.38";"X.39";"X.40
    X.0 = 40
    Error = 0

    do i = 1 to X.0
        if X.i = "" then leave

        X_hours = 0
        X_minutes = 0
        dummy = ""

        if length(X.i) > 3 then do
            parse var X.i X_hours "h" X_minutes "m" dummy
        end
        else do
           if right(X.i,1) = "h" then do
              parse var X.i X_hours "h" dummy
           end
           if right(X.i,1) = "m" then do
              parse var X.i X_minutes "m" dummy
           end
        end

        /* check data */
        if datatype(X_hours)   = "CHAR"              then Error = 1
        if datatype(X_minutes) = "CHAR"              then Error = 1
        if X_hours = 0 & X_minutes = 0               then Error = 1
        if dummy = ""                                then nop
        else                                              Error = 1
        if right(X.i,1) = "h" | right(X.i,1) = "m"   then nop
        else                                              Error = 1
/*      if length(X.i) > 6                           then Error = 1 */

xxx = 0
if xxx = 1 then do
    say "-----------------------------"
    say "["right(X.i,1)"]["error"]"
end

    end
    if Error = 1 then do
        ok = VRSet( "MLE_SelectTimerUnitList", "ForeColor", "DarkRed" )
        ok = VRSet( "PB_MTUL_Save", "Enabled", 0 )
    end
    else do
        ok = VRSet( "MLE_SelectTimerUnitList", "ForeColor", "Black" )
        ok = VRSet( "PB_MTUL_Save", "Enabled", 1 )
    end

return

/*:VRX         OpenBitmap_Click
*/
OpenBitmap_Click:
if debug_mode = 1 then say "OpenBitmap_Click"
/*
    address cmd "start e:\pmview\pmview.exe" image.bitmap_num
*/
    address cmd "start" ImageViewer image.bitmap_num

return

/*:VRX         PB_AcceptAsBitmapData_Click
*/
PB_AcceptAsBitmapData_Click:
if debug_mode = 1 then say "PB_AcceptAsBitmapData_Click"

    call PutEAData

    if UseType  = "Yes" then ok = VRSet( "DT_UseTypeSignal",  "Visible", 1 )
    if UseColor = "Yes" then ok = VRSet( "DT_UseColorSignal", "Visible", 1 )

    call GetEADataPreview

    BitmapImage = BitmapImage_old

return

/*:VRX         PB_AcceptColor_Click
*/
PB_AcceptColor_Click:
if debug_mode = 1 then say "PB_AcceptColor_Click"

   call ChangeBitmap

return

/*:VRX         PB_AddExternalCommand_Click
*/
PB_AddExternalCommand_Click:
if debug_mode = 1 then say "PB_AddExternalCommand_Click"

    ok = VRSet( "PB_ChangeExternalCommand", "Enabled", 0 )
    ok = VRSet( "PB_RemoveExternalCommand", "Enabled", 0 )

    value = VRGet( "EF_ExternalCommand", "Value" )
    if value <> "" then do
        caption = VRGet( "PB_AddExternalCommand", "Caption" )

        if ExtCommandRunMode = "CHANGED" then do
            value = VRGet( "EF_ExternalCommand", "Value" )", "
        end
        else if ExtCommandRunMode = "TIME" then do
            value = VRGet( "EF_ExternalCommand", "Value" )", "ExtCommandTiming
        end

        set = VRGet( "CB_EnabledExternalCommand", "Set" )
        if set = 1 then do
            value = value",Enabled"
        end
        else do
            value = value",Disabled"
        end

        /*
        position = VRMethod( "LB_ExternalCommandList", "FindString", value, 1, "Exact" )

        if position = 1 then do
            ok = VRMethod( "LB_ExternalCommandList", "SetItemData", position, value )
        end
        else do
            position = VRMethod( "LB_ExternalCommandList", "AddString", value,  )
        end
        */
        position = VRMethod( "LB_ExternalCommandList", "AddString", value,  )

        ok = VRSet( "LB_ExternalCommandList", "Selected", position )
        ok = VRSet( "LB_ExternalCommandList", "Selected", position )
    end

    ok = VRMethod( "EF_ExternalCommand", "SetFocus" )

return

/*:VRX         PB_BmpImage_Click
*/
PB_BmpImage_Click:
if debug_mode = 1 then say "PB_BmpImage_Click"

    if BmpImage = "Yes" then do
        BmpImage = "No"
        ok = VRSet( "PB_BmpImage", "BackColor", "DarkGray" )
        ok = VRSet( "PB_BmpImage", "ForeColor", "PaleGray" )
    end
    else if BmpImage = "No" then do
        BmpImage = "Yes"
        ok = VRSet( "PB_BmpImage", "BackColor", ImageButtonColor )
        ok = VRSet( "PB_BmpImage", "ForeColor", ImageButtonTextColor )
    end

    call GetFiles

return

/*:VRX         PB_CancelSetExternalCommand_Click
*/
PB_CancelSetExternalCommand_Click:

    ok = VRDestroy( "SW_SetExternalCommands" )
    /*
    call Expand
    */
return

/*:VRX         PB_ChangeASAP_Click
*/
PB_ChangeASAP_Click:
if debug_mode = 1 then say "PB_ChangeASAP_Click"

    call SelectBitmap
    call ShowBitmapFileDetail

    if UseBitmapEA = "Yes" then call GetEADataPreview

    call WriteINItialFile

return

/*:VRX         PB_ChangeExternalCommand_Click
*/
PB_ChangeExternalCommand_Click: 

    if (new_cmd = "No") & (selected > 0) then do
        value = VRGet( "EF_ExternalCommand", "Value" )
        if value <> "" then do
            caption = VRGet( "PB_AddExternalCommand", "Caption" )

            ok = VRMethod( "LB_ExternalCommandList", "Delete", selected )

            if ExtCommandRunMode = "CHANGED" then do
                value = VRGet( "EF_ExternalCommand", "Value" )", "
            end
            else if ExtCommandRunMode = "TIME" then do
                value = VRGet( "EF_ExternalCommand", "Value" )", "ExtCommandTiming
            end

            set = VRGet( "CB_EnabledExternalCommand", "Set" )
            if set = 1 then do
                value = value",Enabled"
            end
            else do
                value = value",Disabled"
            end

            position = VRMethod( "LB_ExternalCommandList", "AddString", value, selected )

            /*
            ok = VRMethod( "LB_ExternalCommandList", "SetFocus" )
            */
            ok = VRSet( "LB_ExternalCommandList", "Selected", selected )

        end
    end

    ok = VRSet( "PB_ChangeExternalCommand", "Enabled", 0 )
    ok = VRSet( "PB_RemoveExternalCommand", "Enabled", 0 )

    ok = VRMethod( "EF_ExternalCommand", "SetFocus" )

return

/*:VRX         PB_ClearEA_Click
*/
PB_ClearEA_Click:
if debug_mode = 1 then say "PB_ClearEA_Click"

   call ClearEAdata

return

/*:VRX         PB_ClearExternalCommand_Click
*/
PB_ClearExternalCommand_Click: 

    ok = VRSet( "EF_ExternalCommand", "Value", "" )

    ok = VRSet( "PB_ChangeExternalCommand", "Enabled", 0 )
    ok = VRSet( "PB_RemoveExternalCommand", "Enabled", 0 )
    ok = VRSet( "PB_ClearExternalCommand",  "Enabled", 0 )

    ok = VRSet( "SPIN_EC_Hour",   "Index", 0 )
    ok = VRSet( "SPIN_EC_Minute", "Index", 0 )

    ok = VRSet( "CB_EnabledExternalCommand", "Set", 0 )

    ok = VRMethod( "EF_ExternalCommand", "SetFocus" )
    
return

/*:VRX         PB_ClearStartupBitmap_Click
*/
PB_ClearStartupBitmap_Click:
if debug_mode = 1 then say "PB_ClearStartupBitmap_Click"

    ok = VRSet( "EF_StartupBitmap", "Value", "" )

return

/*:VRX         PB_DibImage_Click
*/
PB_DibImage_Click:
if debug_mode = 1 then say "PB_DibImage_Click"

    if DibImage = "Yes" then do
        DibImage = "No"
        ok = VRSet( "PB_DibImage", "BackColor", "DarkGray" )
        ok = VRSet( "PB_DibImage", "ForeColor", "PaleGray" )
    end
    else if DibImage = "No" then do
        DibImage = "Yes"
        ok = VRSet( "PB_DibImage", "BackColor", ImageButtonColor )
        ok = VRSet( "PB_DibImage", "ForeColor", ImageButtonTextColor )
    end

    call GetFiles

return

/*:VRX         PB_Exit_Click
*/
PB_Exit_Click:
if debug_mode = 1 then say "PB_Exit_Click"

    call WriteINItialFile

    call Window1_Close

return

/*:VRX         PB_GifImage_Click
*/
PB_GifImage_Click:
if debug_mode = 1 then say "PB_GifImage_Click"

    if GifImage = "Yes" then do
        GifImage = "No"
        ok = VRSet( "PB_GifImage", "BackColor", "DarkGray" )
        ok = VRSet( "PB_GifImage", "ForeColor", "PaleGray" )
    end
    else if GifImage = "No" then do
        GifImage = "Yes"
        ok = VRSet( "PB_GifImage", "BackColor", ImageButtonColor )
        ok = VRSet( "PB_GifImage", "ForeColor", ImageButtonTextColor )
    end

    call GetFiles

return

/*:VRX         PB_Information_Click
*/
PB_Information_Click:
if debug_mode = 1 then say "PB_Information_Click"

    x = VRGet( "Window1", "Left" )
    y = VRGet( "Window1", "Top" )
    w = VRGet( "Window1", "Width" )
    h = VRGet( "Window1", "Height" )

    call Reduction

    OpenRegistryWindowTiming = "AfterStartup"
    call VRLoadSecondary "SW_Registry"

return

/*:VRX         PB_JpgImage_Click
*/
PB_JpgImage_Click:
if debug_mode = 1 then say "PB_JpgImage_Click"

    if JpgImage = "Yes" then do
        JpgImage = "No"
        ok = VRSet( "PB_JpgImage", "BackColor", "DarkGray" )
        ok = VRSet( "PB_JpgImage", "ForeColor", "PaleGray" )
    end
    else if JpgImage = "No" then do
        JpgImage = "Yes"
        ok = VRSet( "PB_JpgImage", "BackColor", ImageButtonColor )
        ok = VRSet( "PB_JpgImage", "ForeColor", ImageButtonTextColor )
    end

    call GetFiles

return

/*:VRX         PB_LoadIni_Click
*/
PB_LoadIni_Click:
if debug_mode = 1 then say "PB_LoadIni_Click"

   call EditINItialFile

return

/*:VRX         PB_ModifyTimerUnitList_Click
*/
PB_ModifyTimerUnitList_Click:
if debug_mode = 1 then say "PB_ModifyTimerUnitList_Click"

   call VRLoadSecondary "SW_ModifyTimerUnitList"

return

/*:VRX         PB_MTUL_Cancel_Click
*/
PB_MTUL_Cancel_Click:
if debug_mode = 1 then say "PB_MTUL_Cancel_Click"

    ok = VRDestroy(SW_ModifyTimerUnitList)

return

/*:VRX         PB_MTUL_Default_Click
*/
PB_MTUL_Default_Click:
if debug_mode = 1 then say "PB_MTUL_Default_Click"

    ok = VRSet( "MLE_SelectTimerUnitList", "Value", "10m;20m;30m;40m;50m;1h;1h10m;1h20m;1h30m;1h40m;1h50m;2h" )

return

/*:VRX         PB_MTUL_Save_Click
*/
PB_MTUL_Save_Click:
if debug_mode = 1 then say "PB_MTUL_Save_Click"

    SelectTimeUnitList = VRGet( "MLE_SelectTimerUnitList", "Value" )

    call WriteInitialFile
    call SetSelectTimeUnitList
    ok = VRMethod( "SPIN_TimeSelecter", "SetStringList", "TimeUnitList." )
    call WriteInitialFile
    ok = VRDestroy(SW_ModifyTimerUnitList)

return

/*:VRX         PB_NewExternalCommand_Click
*/
PB_NewExternalCommand_Click:
if denug_mode = 1 then say "PB_NewExternalCommand_Click"

    value = VRGet( "EF_ExternalCommand", "Value" )
    temp_dir = ""
    if value <> "" then do
        parse var value temp_exc " " .
        temp_dir = VRParseFileName(temp_exc, "D")":"VRParseFileName(temp_exc, "P")"\"
        ext_file_name = VRFileDialog( VRWindow(), "External Command","Open", temp_dir"*.cmd; *.exe; *.bat; *.com" )
    end
    else do
        ext_file_name = VRFileDialog( VRWindow(), "External Command","Open", "*.cmd; *.exe; *.bat; *.com" )
    end

    new_cmd = "No"
    if ext_file_name <> "" then do
        ok = VRSet( "EF_ExternalCommand", "Value", "" )

        ok = VRSet( "PB_AddExternalCommand", "Caption", "Add" )
        ok = VRSet( "EF_ExternalCommand", "Value", ext_file_name )
        new_cmd = "Yes"

        ok = VRSet( "PB_ClearExternalCommand",  "Enabled", 1 )
    end

    ok = VRMethod( "EF_ExternalCommand", "SetFocus" )

return


/*:VRX         PB_NotYet_Click
*/
PB_NotYet_Click:
if debug_mode = 1 then say "PB_NotYet_Click"

    ok = VRDestroy( "SW_Registry" )
    if OpenRegistryWindowTiming = "AfterStartup" then do
        call Expand
    end

return

/*:VRX         PB_PcxImage_Click
*/
PB_PcxImage_Click:
if debug_mode = 1 then say "PB_PcxImage_Click"

    if PcxImage = "Yes" then do
        PcxImage = "No"
        ok = VRSet( "PB_PcxImage", "BackColor", "DarkGray" )
        ok = VRSet( "PB_PcxImage", "ForeColor", "PaleGray" )
    end
    else if PcxImage = "No" then do
        PcxImage = "Yes"
        ok = VRSet( "PB_PcxImage", "BackColor", ImageButtonColor )
        ok = VRSet( "PB_PcxImage", "ForeColor", ImageButtonTextColor )
    end

    call GetFiles

return

/*:VRX         PB_PutStartupBitmap_Click
*/
PB_PutStartupBitmap_Click:
if debug_mode = 1 then say "PB_PutStartupBitmap_Click"

    value = VRGet( "EF_StartupBitmap", "Value" )

    do i = 1 to image.0
        if image.i = StartupBitmapName then do
            bitmap_num = i
            call GetEAData
            leave
        end
    end

    ok = VRSet( "Pict_Preview", "PicturePath", image.bitmap_num )

    call ChangeBitmap

return

/*:VRX         PB_Registory_Click
*/
PB_Registory_Click:

    value = VRGet( "EF_RegistoryNumber", "Value" )

    /* DEMO版用機能 */
    if left(RegisterNumber, 4) = "DEMO" then do
        regnum = RegisteredKey.0 - 1
    end
    else do
        regnum = RegisteredKey.0
    end

/*  do i = 1 to RegisteredKey.0 */
    do i = 1 to regnum
        if value = RegisteredKey.i then Registry = "Registered"
    end

    if Registry = "Registered" then do
        RegisterNumber = Value

        ok = VRDestroy( "SW_Registry" )

        call WriteINItialFile

        if OpenRegistryWindowTiming = "AfterStartup" then do
            call Expand
        end
    end
    else do
        ok = VRSet( "EF_RegistoryNumber", "Value", "" )
        ok = VRSet( "PB_Registory", "Enabled", 0 )
        ok = VRMethod( "EF_RegistoryNumber", "SetFocus" )
    end

return

/*:VRX         PB_RemoveExternalCommand_Click
*/
PB_RemoveExternalCommand_Click:
if debug_mode = 1 then say "PB_RemoveExternalCommand_Click"

    value = VRGet( "EF_ExternalCommand", "Value" )
    if value <> "" then do
        selected = VRGet( "LB_ExternalCommandList", "Selected" )
        if selected <> 0 then do
            ok = VRMethod( "LB_ExternalCommandList", "Delete", selected )
            ok = VRSet( "EF_ExternalCommand", "Value", "" )
        end
    end

    ok = VRSet( "PB_ChangeExternalCommand", "Enabled", 0 )
    ok = VRSet( "PB_RemoveExternalCommand", "Enabled", 0 )
    ok = VRSet( "PB_ClearExternalCommand",  "Enabled", 0 )

    ok = VRMethod( "EF_ExternalCommand", "SetFocus" )

return

/*:VRX         PB_RunDebugMode_Click
*/
PB_RunDebugMode_Click:

    debug_mode = 1

    ok = VRDestroy( "SW_SelectRunMode" )

return

/*:VRX         PB_RunNormalMode_Click
*/
PB_RunNormalMode_Click:

    debug_mode = 0

    ok = VRDestroy( "SW_SelectRunMode" )

return

/*:VRX         PB_SaveExternalCommands_Click
*/
PB_SaveExternalCommands_Click:
if debug_mode = 1 then say "PB_SaveExternalCommands_Click"

    ok = VRMethod( "LB_ExternalCommandList", "GetStringList", "ExternalCommandList." )

    call WriteINItialFile

    ok = VRDestroy( "SW_SetExternalCommands" )

return

/*:VRX         PB_SaveIni_Click
*/
PB_SaveIni_Click:
if debug_mode = 1 then say "PB_SaveIni_Click"

   ini_file_detail.selected = VRGet( "EF_INI_detail", "Value" )
   ok = VRMethod( "LB_EditINItialFile", "Clear" )

   ok = VRMethod( "LB_EditINItialFile", "AddStringList", "ini_file_detail.",  )


   outfile = WallDirectory'\Wall.ini'
   rc = SysFileDelete(outfile)

   call lineout outfile, ini_file_detail.1,1
   do i = 2 to ini_file_detail.0
      call lineout outfile, ini_file_detail.i
   end
   call lineout outfile

return

/*:VRX         PB_SetAsStartupBitmap_Click
*/
PB_SetAsStartupBitmap_Click:
if debug_mode = 1 then say "PB_SetAsStartupBitmap_Click"

    ok = VRSet( "EF_StartupBitmap", "Value", image.bitmap_num )
    StartupBitmapName = image.bitmap_num

    call WriteINItialFile

return

/*:VRX         PB_SetExternalCommand_Click
*/
PB_SetExternalCommand_Click:
if debug_mode = 1 then say "PB_SetExternalCommand_Click"

    x = VRGet( "Window1", "Left" )
    y = VRGet( "Window1", "Top" )
    w = VRGet( "Window1", "Width" )
    h = VRGet( "Window1", "Height" )

    /*
    call Reduction
    */
    call VRLoadSecondary "SW_SetExternalCommands", "w"

return

/*:VRX         PB_SetFont_Click
*/
PB_SetFont_Click:
if debug_mode = 1 then say "PB_SetFont_Click"

    Font_old = Font

    Font = VRFontDialog( VRWindow(), font, "Choose a font!")
    if Font = "" then Font = Font_old

    call SetFont

    call WriteInitialFile

return

/*:VRX         PB_SetGraphicViewer_Click
*/
PB_SetGraphicViewer_Click:
if debug_mode = 1 then say "PB_SetGraphicViewer_Click"

    ImageViewer_old = ImageViewer

    temp_dir = VRParseFileName(ImageViewer_old, "D")":"VRParseFileName(ImageViewer_old, "P")"\"
    ImageViewer = VRFileDialog( VRWindow(), "The Wall - Select Graphic Viewer", "Open", temp_dir"*.exe; *.com; *.bat; *.cmd" )

    if ImageViewer = "" then ImageViewer = ImageViewer_old

    ok = VRSet( "EF_GraphicViewer", "Value", VRParseFileName(ImageViewer, "N")"."VRParseFileName(ImageViewer, "E") )

return

/*:VRX         PB_TgaImage_Click
*/
PB_TgaImage_Click:
if debug_mode = 1 then say "PB_TgaImage_Click"

    if TgaImage = "Yes" then do
        TgaImage = "No"
        ok = VRSet( "PB_TgaImage", "BackColor", "DarkGray" )
        ok = VRSet( "PB_TgaImage", "ForeColor", "PaleGray" )
    end
    else if TgaImage = "No" then do
        TgaImage = "Yes"
        ok = VRSet( "PB_TgaImage", "BackColor", ImageButtonColor )
        ok = VRSet( "PB_TgaImage", "ForeColor", ImageButtonTextColor )
    end

    call GetFiles

return

/*:VRX         PB_TifImage_Click
*/
PB_TifImage_Click:
if debug_mode = 1 then say "PB_TifImage_Click"

    if TifImage = "Yes" then do
        TifImage = "No"
        ok = VRSet( "PB_TifImage", "BackColor", "DarkGray" )
        ok = VRSet( "PB_TifImage", "ForeColor", "PaleGray" )
    end
    else if TifImage = "No" then do
        TifImage = "Yes"
        ok = VRSet( "PB_TifImage", "BackColor", ImageButtonColor )
        ok = VRSet( "PB_TifImage", "ForeColor", ImageButtonTextColor )
    end

    call GetFiles

return

/*:VRX         PB_UseUnuse_Click
*/
PB_UseUnuse_Click:
if debug_mode = 1 then say ""

   if   UseMode = "Use" then UseMode = "Unused"
   else UseMode = "Use"

   call SetBitmapUseMode
   call PutEAData

return

/*:VRX         Pict_Preview_Click
*/
Pict_Preview_Click:
if debug_mode = 1 then say "Pict_Preview_Click"

    call CheckFileSize

    if FileSize = "Standard" then do
        call ChangeBitmap
    end
    else if FileSize = "Large" then do
        call SelectBitmap
    end

    call ShowBitmapFileDetail

return

/*:VRX         Pict_Preview_ContextMenu
*/
Pict_Preview_ContextMenu:
if debug_mode = 1 then say "Pict_Preview_ContextMenu"

    if UseBitmapEA = "Yes" then do
        call UseBitmapEAContextMenu
    end

return

/*:VRX         PlaySound
*/
PlaySound:
if debug_mode = 1 then say "PlaySound"

   call InstallWaveFile

   if Sound = "ON" then do
      sound_num = random(1,sounds.0)
      SoundFile = Sounds.sound_num

      MciCmd = "open "SoundFile" alias wav wait"
      MacRc = mciRxSendString(MciCmd, "RetSt", "0", "0")

      MciCmd = "capability wav device type wait"
      MacRc = mciRxSendString(MciCmd, "RetSt", "0", "0")

      MciCmd = "status wav length wait"
      MacRc = mciRxSendString(MciCmd, "RetSt", "0", "0")

      MciCmd = "set wav audio volume "SoundVolume" wait"
      MacRc = mciRxSendString(MciCmd, "RetSt", "0", "0")

      MciCmd = "play wav wait"
      ok = VRSet( "IPB_SoundSwitch", "PicturePath", "#134" )
      MacRc = mciRxSendString(MciCmd, "RetSt", "0", "0")
      ok = VRSet( "IPB_SoundSwitch", "PicturePath", "#130" )

      MciCmd = "close wav wait"
      MacRc = mciRxSendString(MciCmd, "RetSt", "0", "0")
   end

return

/*:VRX         PutEAData
*/
PutEAData:
if debug_mode = 1 then say "PutEAData"

    if UseType = "Yes" & UseColor = "Yes" then comment_detail = ImageType" "Scale" "Red" "Green" "Blue
    if UseType = "Yes" & UseColor = "No"  then comment_detail = ImageType" "Scale" NO_RESERVED NO_RESERVED NO_RESERVED"
    if UseType = "No"  & UseColor = "Yes" then comment_detail = "NO_RESERVED NO_RESERVED "Red" "Green" "Blue
    if UseType = "No"  & UseColor = "No"  then comment_detail = " "

    if UseMode = "Unused" then comment_detail = "Unused "comment_detail

    rc = SysPutEA( image.bitmap_num, UseEAArea, comment_detail )

return

/*:VRX         Quit
*/
Quit:
if debug_mode = 1 then say "Quit"

    window = VRWindow()
    call VRSet window, "Shutdown", 1
    drop window

return

/*:VRX         RB_Order_Click
*/
RB_Order_Click:
if debug_mode = 1 then say "RB_Order_Click"

    Order = 'Order'

return

/*:VRX         RB_Random_Click
*/
RB_Random_Click:
if debug_mode = 1 then say "RB_Random_Click"

    Order = 'Random'

return

/*:VRX         RB_RunFixedTime_Click
*/
RB_RunFixedTime_Click:
if debug_mode = 1 then say "RB_RunFixedTime_Click"

    ok = VRSet( "SPIN_EC_Hour",   "Enabled", 1 )
    ok = VRSet( "SPIN_EC_Minute", "Enabled", 1 )

    h = VRGet( "SPIN_EC_Hour", "Value" )
    m = VRGet( "SPIN_EC_Minute", "Value" )

    ExtCommandTiming = h":"m
    ExtCommandRunMode = "TIME"

return


/*:VRX         RB_RunWhenChanged_Click
*/
RB_RunWhenChanged_Click:
if debug_mode = 1 then say "RB_RunEveryTime_Click"

    ok = VRSet( "SPIN_EC_Hour",   "Enabled", 0 )
    ok = VRSet( "SPIN_EC_Minute", "Enabled", 0 )

    ExtCommandTiming = ""
    ExtCommandRunMode = "CHANGED"

return

/*:VRX         ReadDriveMap
*/
ReadDriveMap:
if debug_mode = 1 then say "ReadDriveMap"

   map = SysDriveMap("C:","USED")
   D.0 = 24
   parse upper var map D.1 D.2 D.3 D.4 D.5 D.6 D.7 D.8 D.9 D.10 D.11 D.12 D.13 D.14 D.15 D.16 D.17 D.18 D.19 D.20 D.21 D.22 D.23 D.24
   do drive = 1 to D.0
      if D.drive = "" then leave
   end
   D.0 = drive - 1

   ok = VRMethod( "SPIN_Drive", "SetStringList", "D." )

return

/*:VRX         ReadINIFile
*/
ReadINIFile:
if debug_mode = 1 then say "ReadINIFile"

    INI_file = WallDirectory'\Wall.ini'

    ExtCommandNum = 0

    do until lines(INI_file) = 0
        line_text=strip(linein(INI_file),,'=')
        parse var line_text keyword '=' detail options

        if left(keyword, 10) = "; Wall.ini" then do
            parse var keyword "(" old_version ")"
        end

        if detail <> "" then do

            select
                /* Bitmap Directory */
                when keyword = 'BitmapDirectory' then do
                    if options =  "" then BitmapDirectory = detail
                    if options <> "" then BitmapDirectory = detail" "options
                    ok = VRSet( "ImageDirectory", "Value", BitmapDirectory )
                end

                /* Serach SubDirectory */
                when keyword = 'SubDirectory' then do
                    SubDir = detail
                    if SubDir = 'ON'  then ok = VRSet( "CB_SubDirectory", "Set", 1 )
                    if SubDir = 'OFF' then ok = VRSet( "CB_SubDirectory", "Set", 0 )
                end

                /* Use Image Types : BMP */
                when keyword = 'BmpImage' then do
                    BmpImage = detail

                    select
                        when BmpImage = "No" then do
                            ok = VRSet( "PB_BmpImage", "BackColor", "DarkGray" )
                            ok = VRSet( "PB_BmpImage", "ForeColor", "PaleGray" )
                        end
                        when BmpImage = "Yes" then do
                            ok = VRSet( "PB_BmpImage", "BackColor", ImageButtonColor )
                            ok = VRSet( "PB_BmpImage", "ForeColor", ImageButtonTextColor )
                        end
                    end
                end

                /* Use Image Types : GIF */
                when keyword = 'GifImage' then do
                    if mmos2 = "Enabled"  then GifImage = detail
                    if mmos2 = "Disabled" then GifImage = "No"

                    select
                        when GifImage = "No" then do
                           ok = VRSet( "PB_GIfImage", "BackColor", "DarkGray" )
                           ok = VRSet( "PB_GifImage", "ForeColor", "PaleGray" )
                        end
                        when GifImage = "Yes" then do
                           ok = VRSet( "PB_GifImage", "BackColor", ImageButtonColor )
                           ok = VRSet( "PB_GifImage", "ForeColor", ImageButtonTextColor )
                        end
                    end
                end

                /* Use Image Types : JPG */
                when keyword = 'JpgImage' then do
                    if mmos2 = "Enabled"  then JpgImage = detail
                    if mmos2 = "Disabled" then JpgImage = "No"

                    select
                        when JpgImage = "No" then do
                           ok = VRSet( "PB_JpgImage", "BackColor", "DarkGray" )
                           ok = VRSet( "PB_JpgImage", "ForeColor", "PaleGray" )
                        end
                        when JpgImage = "Yes" then do
                           ok = VRSet( "PB_JpgImage", "BackColor", ImageButtonColor )
                           ok = VRSet( "PB_JpgImage", "ForeColor", ImageButtonTextColor )
                        end
                    end
                end

                /* Use Image Types : TIF */
                when keyword = 'TifImage' then do
                    if mmos2 = "Enabled"  then TifImage = detail
                    if mmos2 = "Disabled" then TifImage = "No"

                    select
                        when TifImage = "No" then do
                           ok = VRSet( "PB_TifImage", "BackColor", "DarkGray" )
                           ok = VRSet( "PB_TifImage", "ForeColor", "PaleGray" )
                        end
                        when  TifImage = "Yes" then do
                            ok = VRSet( "PB_TifImage", "BackColor", ImageButtonColor )
                            ok = VRSet( "PB_TifImage", "ForeColor", ImageButtonTextColor )
                        end
                    end
                end

                /* Use Image Types : TGA */
                when keyword = 'TgaImage' then do
                    if mmos2 = "Enabled"  then TgaImage = detail
                    if mmos2 = "Disabled" then TgaImage = "No"

                    select
                        when TgaImage = "No" then do
                            ok = VRSet( "PB_TgaImage", "BackColor", "DarkGray" )
                            ok = VRSet( "PB_TgaImage", "ForeColor", "PaleGray" )
                        end
                        when  TgaImage = "Yes" then do
                            ok = VRSet( "PB_TgaImage", "BackColor", ImageButtonColor )
                            ok = VRSet( "PB_TgaImage", "ForeColor", ImageButtonTextColor )
                        end
                    end
                end

                /* Use Image Types : PCX */
                when keyword = 'PcxImage' then do
                    if mmos2 = "Enabled"  then PcxImage = detail
                    if mmos2 = "Disabled" then PcxImage = "No"

                    select
                        when PcxImage = "No" then do
                            ok = VRSet( "PB_PcxImage", "BackColor", "DarkGray" )
                            ok = VRSet( "PB_PcxImage", "ForeColor", "PaleGray" )
                        end
                        when PcxImage = "Yes" then do
                            ok = VRSet( "PB_PcxImage", "BackColor", ImageButtonColor )
                            ok = VRSet( "PB_PcxImage", "ForeColor", ImageButtonTextColor )
                        end
                    end
                end

                /* Use Image Types : DIB */
                when keyword = 'DibImage' then do
                    if mmos2 = "Enabled"  then DibImage = detail
                    if mmos2 = "Disabled" then DibImage = "No"

                    select
                        when DibImage = "No" then do
                            ok = VRSet( "PB_DibImage", "BackColor", "DarkGray" )
                            ok = VRSet( "PB_DibImage", "ForeColor", "PaleGray" )
                        end
                        when DibImage = "Yes" then do
                            ok = VRSet( "PB_DibImage", "BackColor", ImageButtonColor )
                            ok = VRSet( "PB_DibImage", "ForeColor", ImageButtonTextColor )
                        end
                    end
                end

                /* Interval Time */
                when keyword = 'Interval' then do
                    interval        = detail
                    interval_unused = detail

                    select
                        when detail <> 0 then IntervalPercentile = (detail * 100) % 60
                        when detail = 0 then  IntervalPercentile = 0
                    end

                    ok = VRSet( "TimerSlider", "Percentile", IntervalPercentile )
                    ok = VRSet( "RemainValue", "Caption", detail )
                end

                /* Order Type */
                when keyword = 'Order' then do
                    Order = detail

                    select
                        when Order = 'Order' then do
                            ok = VRSet( "RB_Random", "Set", 0 )
                            ok = VRSet( "RB_Order", "Set", 1)
                        end
                        when Order = 'Random' then do
                            ok = VRSet( "RB_Random", "Set", 1 )
                            ok = VRSet( "RB_Order", "Set", 0)
                        end
                    end
                end

                /* Time Unit */
                when keyword = 'Timer' then do
                    Timer = detail

                    select
                        when Timer = 'Second' then index = 1
                        when Timer = 'Minute' then index = 2
                        when Timer = 'Hour'   then index = 3
                        /* Add at 02.Apr.98 for bug fix */
                        otherwise
                            nop
                    end

                    ok = VRSet( "SPIN_Unit", "Index", index )
                    call SetTrigger
                end

                /* Minimize Startup */
                when keyword = 'Minimize' then do
                    select
                        when detail = 'Yes' then do
                            ok = VRSet( "CB_WindowSize", "Set", 1 )
                            Minimize = 'Yes'
                        end
                        when detail = 'No' then do
                            ok = VRSet( "CB_WindowSize", "Set", 0 )
                            Minimize = 'No'
                        end
                    end
                end

                /* Resize Preview */
                when keyword = 'Resize' then do
                    Resize = detail
                    select
                        when detail = 'Yes' then set = 1
                        when detail = 'No'  then set = 0
                    end
                    ok = VRSet( "CB_ResizePicture", "Set", set )
                    ok = VRSet( "Pict_Preview", "ResizePicture", set )
                end

                /* Full Function */
                when keyword = 'Function' then do
                    select
                        when detail = 'Full'    then set = 1
                        when detail = 'Minimum' then set = 0
                    end
                    Function = detail
                    ok = VRSet( "CB_FullFunction", "Set", set )
                    call ChangeWindowSize
                end

                /* Animate Window */
                when keyword = "AnimateWindow" then do
                    AnimateWindow = detail
                    select
                        when AnimateWindow = "Enabled" then  ok = VRSet( "CB_AnimateWindow", "Set", 1 )
                        when AnimateWindow = "Disabled" then ok = VRSet( "CB_AnimateWindow", "Set", 0 )
                    end
                end

                /* Bitmap Image Type */
                when keyword = 'BitmapImage' then do
                    ok = VRSet( "SPIN_Scale", "Enabled", 0 )
                    select
                        when detail = 'Normal' then do
                            ImageType = "n"
                            ok = VRSet( "SPIN_Image", "Value", detail )
                        end
                        when detail = 'Tiled' then do
                            ImageType = "t"
                            ok = VRSet( "SPIN_Image", "Value", detail )
                        end
                        when detail = 'Sized' then do
                            ImageType = "s"
                            ok = VRSet( "SPIN_Image", "Value", detail )
                            ok = VRSet( "SPIN_Scale", "Enabled", 1 )
                        end
                        otherwise
                            nop
                    end
                end

                /* Bitmap Image Scale */
                when keyword = 'ImageScale' then do
                    ImageScale = detail
                    ok = VRSet( "SPIN_Scale", "Value", ImageScale )
                    parse var ImageScale Scale 'x' dummy
                end

                /* Wall Switch */
                when keyword = 'Switch' then do
                    Switch = detail
                    call SetSwitch
                end

                /* Random Timer */
                when keyword = 'RandomTimer' then RandomTimer = detail

                /* Change Bitmap at Startup */
                when keyword = 'ChangeAtStartUp' then ChangeAtStartUp = detail

                /* Option */
                when keyword = 'Option' then Option = detail

                /* Latest Bitmap Number */
                when keyword = 'BitmapNumber' then bitmap_num = detail

                /* Background Color (RGB) */
                when keyword = "Red"   then Red   = detail
                when keyword = "Green" then Green = detail
                when keyword = "Blue"  then Blue  = detail

                /* Random Background Color */
                when keyword = "RandomColor" then do
                    RandomColor = detail
                    select
                        when RandomColor = "ON" then do
                            ok = VRSet( "CB_RandomBGColor", "Set", 1 )
                            ok = VRSet( "PB_AcceptColor", "Enabled", 0 )
                            call SetRandomColorValue
                        end
                        when RandomColor = "OFF" then do
                            ok = VRSet( "CB_RandomBGColor", "Set", 0 )
                            ok = VRSet( "PB_AcceptColor", "Enabled", 1 )
                        end
                    end
                    call SetRGBColorSlider
                end

                /* Color Only */
                when keyword = "ColorOnly" then do
                    ColorOnly = detail
                    select
                        when ColorOnly = "Yes" then do
                            ok = VRSet( "CB_ColorOnly", "Set", 1 )
                            BackType = "c"
                        end
                        when ColorOnly = "No" then do
                            ok = VRSet( "CB_ColorOnly", "Set", 0 )
                            BackType = "i"
                        end
                    end
                end

                /* Use Bitmap EA Data Area */
                when keyword = "UseEAArea" | keyword = "UsingEAArea" then UseEAArea = detail

                when keyword = "UseBitmapEA" | keyword = "UsingBitmapEA" then do
                    UseBitmapEA = detail
                    select
                        when UseBitmapEA = "Yes" then do
                            ok = VRSet( "CB_UseBitmapEA", "Set", 1 )
                            ok = VRSet( "PB_AcceptAsBitmapData", "Enabled", 1 )
                            ok = VRSet( "CB_Type",               "Enabled", 1 )
                            ok = VRSet( "CB_Color",              "Enabled", 1 )
                            ok = VRSet( "PB_ClearEA",            "Enabled", 1 )
                            ok = VRSet( "PB_UseUnuse", "Enabled", 1 )
                        end
                        otherwise
                            nop
                    end
                end

                /* Use Type Data */
                when keyword = "UseType" | keyword = "UsingType" then do
                    UseType = detail
                    select
                        when UseType = "Yes" then ok = VRSet( "CB_Type", "Set", 1 )
                        when UseType = "No"  then ok = VRSet( "CB_Type", "Set", 0 )
                    end
                end

                /* Use Color Data */
                when keyword = "UseColor" | keyword = "UsingColor" then do
                    UseColor = detail
                    if      UseColor = "Yes" then ok = VRSet( "CB_Color", "Set", 1 )
                    else if UseColor = "No"  then ok = VRSet( "CB_Color", "Set", 0 )
/*
                    select
                        when UseColor = "Yes" then ok = VRSet( "CB_Color", "Set", 1 )
                        when UseColor = "No"  then ok = VRSet( "CB_Color", "Set", 0 )
                    end
*/
                end

                /* Sound */
                when keyword = "Sound" then do
                    select
                        when mmos2 = "Enabled" then do
                            Sound = detail
                        end
                        when mmos2 = "Disabled" then do
                            Sound = "OFF"
                            ok = VRSet( "IPB_SoundSwitch", "PicturePath", "#132" )
                        end
                    end
                end

                /* Sound Directory */
                when keyword = "SoundDirectory" then do
                    SoundDirectory = detail
                    ok = VRSet( "EF_SoundPath", "Value", SoundDirectory )
                    CheckSoundDirectory = "Correct"
                end

                /* Sound Volume */
                when keyword = "SoundVolume" then do
                    SoundVolume = detail
                    ok = VRSet( "SL_SoundVolume", "Percentile", SoundVolume )
                end

                /* Wall Position */
                when keyword = "WallPosX" then WallPosX = detail
                when keyword = "WallPosY" then WallPosY = detail

                /* Check Screen Width */
                when keyword = "CheckScreenSize" then CheckScreenSize = detail
                when keyword = "CheckScreenSizeEverytime" then CheckScreenSizeEverytime = detail

                /* Screen Width */
                when keyword = "ScreenWidth" then ScreenWidth = detail

                /* WallEmr Switch */
                when keyword = "WallEmr" then do
                    WallEmr = detail
                    select
                        when WallEmr = "ON" then do
                            ok = VRSet( "IPB_WallEmr_Switch", "PicturePath", "#136" )
                            rc=SysFileTree(WallDirectory'\WallEmr.Exe','WallEmr','of')
                            if translate(WallEmr.1) = translate(WallDirectory"\WallEmr.Exe") then do
                                title = "WallEmr"
                                call SetTitleBar
                                address cmd "Start "WallEmr.1
                                title = "Normal"
                            end
                        end
                        otherwise
                            ok = VRSet( "IPB_WallEmr_Switch", "PicturePath", "#138" )
                    end
                end

                /* External Command */
                when keyword = "ExtCommandSwitch" then do
                    ExtCommandSwitch = detail
                    call SetExtCommandSwitch
                end

                when keyword = "ExtCommand" then do
                    if detail <> "<none>" then do
                        ExtCommandNum = ExtCommandNum + 1
                        ExternalCommandList.ExtCommandNum = detail" "options
                        if (right(ExternalCommandList.ExtCommandNum, 7) <> "Enabled") & (right(ExternalCommandList.ExtCommandNum, 8) <> "Disabled") then do
                            ExternalCommandList.ExtCommandNum = ExternalCommandList.ExtCommandNum",Enabled"
                        end
                        ExternalCommandList.0 = ExtCommandNum
                    end
                end

                /* Use WINDOWS(TM) Type Bitmaps */
                when keyword = "UseWindowsTypeBitmaps" then do
                    UseWindowsTypeBitmaps = detail
                    select
                        when UseWindowsTypeBitmaps = "Yes" then ok = VRSet( "CB_UseWindowsTypeBitmap", "Set", 1 )
                        when UseWindowsTypeBitmaps = "No"  then ok = VRSet( "CB_UseWindowsTypeBitmap", "Set", 0 )
                    end
                end

                /* Use Select Time Unit - List, Selected Unit */
                when keyword = "UseTimeSelector"    then do
                    UseTimeSelector = detail
                    select
                        when UseTimeSelector = "Yes" then do
                            ok = VRSet( "CB_UseTimeSelector", "Set", 1 )
                            ok = VRSet( "PB_ModifyTimerUnitList", "Visible", 1 )
                        end
                        otherwise
                            ok = VRSet( "CB_UseTimeSelector", "Set", 0 )
                            ok = VRSet( "PB_ModifyTimerUnitList", "Visible", 0 )
                    end

                    call SetTimeButtons
                end

                when keyword = "SelectTimeUnitList" then do
                    SelectTimeUnitList = detail
                    call SetSelectTimeUnitList
                    ok = VRMethod( "SPIN_TimeSelecter", "SetStringList", "TimeUnitList." )
                end

                when keyword = "SelectedTimeUnit" then do
                    SelectedTimeUnit = detail
                    ok = VRSet( "SPIN_TimeSelecter", "Value", SelectedTimeUnit )
                end

                /* Zero Time Function */
                when keyword = "ZeroTimeFunction" then ZeroTime = detail

                /* Timer Unit value */
                when keyword = "TimerUnit" then do
                    TimerUnit = detail
                    call SetTrigger
                end

                /* Font */
                when keyword = "Font" then Font = strip(detail" "options)

/*
                /* Register Number */
                when keyword = "RegisterNumber" then RegisterNumber = detail
*/

                /* Startup Bitmap */
                when keyword = "StartupBitmap" then StartupBitmap = detail

                when keyword = "StartupBitmapName" then do
                    if option = "" then do
                        StartupBitmapName = detail
                    end
                    else do
                        StartupBitmapName = detail" "options
                    end

                    ok = VRSet( "EF_StartupBitmap", "Value", StartupBitmapName )
                end

                /* File Synchronize */
                when keyword = "FileSynchronize" then do
                    FileSynchronize = detail
                    if FileSynchronize = "Enabled" then do
                        ok = VRSet( "CB_FileSynchronize", "Set", 1 )
                    end
                end

                /* Maximum File Size Function */
                when keyword = "MaximumFileSizeMode" then do
                    MaximumFileSizeMode = detail
                    if MaximumFileSizeMode = "Enabled" then do
                        ok = VRSet( "CB_MaximumFileSize", "Set",     1 )
                        ok = VRSet( "EF_MaximumFileSize", "Enabled", 1 )
                    end
                    else if MaximumFileSizeMode = "Disabled" then do
                        ok = VRSet( "CB_MaximumFileSize", "Set",     0 )
                        ok = VRSet( "EF_MaximumFileSize", "Enabled", 0 )
                    end
                end
                when keyword = "MaximumFileSize" then do
                    MaximumFileSize = detail
                    ok = VRSet( "EF_MaximumFileSize", "Value", MaximumFileSize )
                end

/*
 * DefaultでDisabledのまま変更出来ない様に仕様変更(コメント・アウト) (3.39 beta 2, 05.Aug.2000) 
 *
 *
                /* VX-REXXのStandard IO RedirectionのON/OFF */
                when keyword = "StandardIORedirection" then do
                    StandardIORedirection = detail
                    if StandardIORedirection = "Enabled" then do
                        ok = VRSet( "CB_StandardIORedirection", "Set", 1 )
                    end
                    else if StandardIORedirection = "Disabled" then do
                        ok = VRSet( "CB_StandardIORedirection", "Set", 0 )
                        if debug_mode = 0 then do
                            call VRRedirectStdio "off"
                        end
                    end
                end
*/

                /* Exit After 1st Change */
                when keyword = "ExitAfter1stChange" then do
                    ExitAfter1stChange = detail
                    if ExitAfter1stChange = "Enabled" then do
                        ok = VRSet( "CB_ExitAfter1stChange", "Set", 1 )
                    end
                    else if ExitAfter1stChange = "Disabled" then do
                        ok = VRSet( "CB_ExitAfter1stChange", "Set", 0 )
                    end
                end

                /* Image Viewer */
                when keyword = "ImageViewer" then do
                    ImageViewer = detail
                    ok = VRSet( "EF_GraphicViewer", "Value", VRParseFileName(ImageViewer, "N")"."VRParseFileName(ImageViewer, "E") )
                end

                otherwise
                    /* COMMENT or NOT INI FILE ITEM */
                    nop
            end
        end
    end
    call lineout INI_file

    call SetColorBars

    call RecordColor

    /* Check Screen Size */
    if CheckScreenSizeEverytime = "Yes" then do
        ok = VRSet( "CB_CheckScreenSize", "Set", 1 )
        CheckScreenSize = "Yet"
    end

    if ScreenWidth < 2000 then CheckScreenSize = "Yet" /* <- for 2.09 beta version compatible */
    if      CheckScreenSize = "Examined" then NOP
    else if CheckScreenSize = "Yet"      then call CheckScreenSize

    /* Start Timer Parameter */
    start_timer = "ON"

    /* Zero Time Function使用時の設定 */
    call SetTimerTime
    call SetZeroTime

    /* Run special routine at first time of new version */
    if old_version <> WallVersion then do
        Option = "OFF"
        if CheckScreenSize = "Examined" then do
            call CheckScreenSize
        end
    end

    /* Change at Startup */
    if ChangeAtStartUp = 'Yes' then do
        ok = VRSet( "CB_ChangeAtStartUp", "Set", 1 )

        ok = VRSet( "GB_StartupBitmap", "Enabled", 1 )
        ok = VRSet( "CB_StartupBitmap", "Enabled", 1 )
    end
    else if ChangeAtStartUp = 'No' then do
        ok = VRSet( "CB_ChangeAtStartUp", "Set", 0 )

        ok = VRSet( "GB_StartupBitmap", "Enabled", 0 )
        ok = VRSet( "CB_StartupBitmap", "Enabled", 0 )
        ok = VRSet( "EF_StartupBitmap", "BackColor", "PaleGray" )
    end

    /* Start Up Bitmap */
    if StartupBitmap = "Enabled" then do
        ok = VRSet( "CB_StartupBitmap", "Set",       1 )
        ok = VRSet( "EF_StartupBitmap", "Enabled",   1 )
        ok = VRSet( "EF_StartupBitmap", "BackColor", "<default>" )

        ok = VRSet( "PB_SetAsStartupBitmap", "Enabled", 1 )
        ok = VRSet( "PB_ClearStartupBitmap", "Enabled", 1 )
        ok = VRSet( "PB_PutStartupBitmap",   "Enabled", 1 )
    end
    if StartupBitmap = "Disabled" then do
        ok = VRSet( "CB_StartupBitmap", "Set",       0 )
        ok = VRSet( "EF_StartupBitmap", "Enabled",   0 )
        ok = VRSet( "EF_StartupBitmap", "BackColor", "PaleGray" )

        ok = VRSet( "PB_SetAsStartupBitmap", "Enabled", 0 )
        ok = VRSet( "PB_ClearStartupBitmap", "Enabled", 0 )
        ok = VRSet( "PB_PutStartupBitmap",   "Enabled", 0 )
    end

    call SetSoundSwitch

    /* Change at StartUp */
    call ChangeAtStartUp

return
/*:VRX         RecordColor
*/
RecordColor:
if debug_mode = 1 then say "RecordColor"

   Red_rec   = Red
   Green_rec = Green
   Blue_rec  = Blue

return

/*:VRX         Reduction
*/
Reduction:
if debug_mode = 1 then say "Reduction"

    if AnimateWindow = "Enabled" then do
        if Function = 'Full' then do
            do size = FullSizeValue to NormalSizeValue by -1500
                ok = VRSet( 'window1', 'width', size )
            end
            ok = VRSet( 'window1', 'width', NormalSizeValue )
        end
        do size = height to 0 by -500
            if size < 500 then leave
            ok = VRSet( 'window1', 'Height', size )
        end

        ok = VRSet( 'window1', 'Height', 20 )
    end

    ok = VRSet( "Window1", "Visible", 0 )

return

/*:VRX         Registration
*/
Registration:
if debug_mode = 1 then say "Registration"

    /* --------------------------------------------- */
    /* REGISTRY                                      */
    /* KEY : 23011212N02                             */
    /*       W A L L N02                             */
    /* --------------------------------------------- */
    RegisteredKey.0 = 6
    RegisteredKey.1 = "23011212M01" /* 以前からのユーザー (Mailをくれたユーザー) */
    RegisteredKey.2 = "23011212N02" /* 新規登録ユーザー                          */
    RegisteredKey.3 = "23011212F03" /* 友達関係                                  */
    RegisteredKey.4 = "23011212IBM" /* IBM社内                                   */
    RegisteredKey.5 = "23011212S05" /* Speceial Version                          */
    RegisteredKey.6 = "DEMO1999"    /*  Demo with Time Bomb                      */

    Registry = "Unregistered"
    do i = 1 to RegisteredKey.0
        if RegisterNumber = RegisteredKey.i then Registry = "Registered"
    end

    /* DEMO用にTime Bomb機能でプロテクト */
    if left(RegisterNumber, 4) = "DEMO" then do
        CurDate = date("s")
        TimeBombDate = "20000101"  /* 1999年12月31日まで使用可 */

        if CurDate < TimeBombDate then do
            nop
        end
        else do
            Registry = "TIME IS UP"
        end
    end

    if Registry <> "Registered" then do
        ok = VRSet( "TM_SleepTimer", "Enabled", 0 )
        Switch = 'OFF'
        call SetSwitch
        ok = VRLoadSecondary( "SW_Registry", w )
        Switch = 'ON'
        call SetSwitch

        call ImageDirectory_Change
    end
    else if Registry = "Registered" then do
        ok = VRSet( "PB_Information", "Caption", "About" )
    end

return

/*:VRX         SearchMMOS2
*/
SearchMMOS2:
if debug_mode =1 then say "SearchMMOS2"

    boot_drive = left(VRIniDir(), 2)
    config_sys = boot_drive"\config.sys"

    mmos2 = "Disabled"
    do until lines(config_sys) = 0
        line_text=strip(linein(config_sys),,'=')

        if translate(left(line_text, 16)) = "DEVICE="boot_drive"\MMOS2\" then do
            mmos2 = "Enabled"
        end
    end
    call lineout config_sys

return

/*:VRX         SelectBitmap
*/
SelectBitmap:
if debug_mode = 1 then say "SelectBitmap"

    if Image.0 > 0 then do
        select
            when Order = "Random" then do
                select
                    when Image.0 > 1 then do
                        bitmap_num = random(1,Image.0)
                    end
                    otherwise do
                        nop
                    end
                end
            end
            when Order = "Order" then do
                bitmap_num = bitmap_num + 1
                if bitmap_num > image.0 then bitmap_num = 1
            end
            otherwise do
                nop
            end
        end
    end

    call CheckFileSize

    if MaximumFileSizeMode = "Enabled" then do
        if FileSize = "Standard" then do
           call ChangeBitmap
        end
        else if FileSize = "Large" then do
            call SelectBitmap
        end
    end
    else do
       call ChangeBitmap
    end

return

/*:VRX         SetBGColor
*/
SetBGColor:
if debug_mode = 1 then say "SetBGColor"

    ok = VRSet( "Pict_Preview", "BorderColor", "("Red","Green","Blue")" )

return

/*:VRX         SetBGColorPreview
*/
SetBGColorPreview:
if debug_mode = 1 then say "SetBGColorPreview"

    if UseBitmapEA = "Yes" then do
        ok = VRSet( "Pict_Preview",    "BorderColor", "("sample_red","sample_green","sample_blue")" )
    end
    else do
        ok = VRSet( "Pict_Preview",    "BorderColor", "("Red","Green","Blue")" )
    end

return

/*:VRX         SetBitmapUseMode
*/
SetBitmapUseMode:
if debug_mode = 1 then say "SetBitmapUseMode"

   if UseMode = "Unused" then do
      ok = VRSet( "PB_UseUnuse", "Caption",   "Unused" )
      ok = VRSet( "PB_UseUnuse", "BackColor", "PaleGray" )
      ok = VRSet( "PB_UseUnuse", "ForeColor", "DarkGray" )

      ok = VRSet( "PB_AcceptAsBitmapData", "Enabled", 0 )
      ok = VRSet( "CB_Type",               "Enabled", 0 )
      ok = VRSet( "CB_Color",              "Enabled", 0 )
      ok = VRSet( "DT_UseTypeSignal",      "Enabled", 0 )
      ok = VRSet( "DT_UseColorSignal",     "Enabled", 0 )
   end
   else if UseMode = "Use" then do
      ok = VRSet( "PB_UseUnuse", "Caption",   "Use" )
      ok = VRSet( "PB_UseUnuse", "BackColor", "PaleGray" )
      ok = VRSet( "PB_UseUnuse", "ForeColor", "DarkCyan" )

      ok = VRSet( "PB_AcceptAsBitmapData", "Enabled", 1 )
      ok = VRSet( "CB_Type",               "Enabled", 1 )
      ok = VRSet( "CB_Color",              "Enabled", 1 )
      ok = VRSet( "DT_UseTypeSignal",      "Enabled", 1 )
      ok = VRSet( "DT_UseColorSignal",     "Enabled", 1 )
   end

return

/*:VRX         SetColorBars
*/
SetColorBars:
if debug_mode = 1 then say "SetColorBars"

    if (Red*100)//255 <> 0 then fix = 1
    else                        fix = 0
    RedPercentile = (Red * 100) % 255 + fix
    ok = VRSet( "SL_Red", "Percentile", RedPercentile )

    if (Green*100)//255 <> 0 then fix = 1
    else                          fix = 0
    GreenPercentile = (Green * 100) % 255 + fix
    ok = VRSet( "SL_Green", "Percentile", GreenPercentile )

    if (Blue*100)//255 <> 0 then fix = 1
    else                         fix = 0
    BluePercentile = (Blue * 100) % 255 + fix
    ok = VRSet( "SL_Blue", "Percentile", BluePercentile )

    /* Add 27.Aug.2000, 3.39 beta 4 */
    call SL_Red_Change
    call SL_Green_Change
    call SL_Blue_Change

return

/*:VRX         SetEaData
*/
SetEaData:
if debug_mode = 1 then say "SetEaData"

    ok = VRSet( "DT_UseTypeSignal",  "Visible", 1 )

    if MultiSetEa = "No" then do
        ok = VRSet( "DT_UseTypeSignal", "Caption", BitmapImage )

        call PutEaData

        call ChangeBitmap
    end
    else if MultiSetEa = "Yes" then do
        bitmap_num_old = bitmap_num

        ok = VRSet( "DT_UseTypeSignal", "Caption", BitmapImage )

        do i = 1 to MultiSetEaSelectedList.0
            bitmap_num = MultiSetEaSelectedList.i

            call PutEaData
        end

        bitmap_num = bitmap_num_old
    end

return

/*:VRX         SetEaDataUseMode
*/
SetEaDataUseMode:
if debug_mode = 1 then say "SetEaDataUseMode"

    ok = VRSet( "DT_UseTypeSignal",  "Visible", 1 )

    if MultiSetEa = "No" then do
        call PutEaData

        call ChangeBitmap
    end
    else if MultiSetEa = "Yes" then do
        bitmap_num_old = bitmap_num

        do i = 1 to MultiSetEaSelectedList.0
            bitmap_num = MultiSetEaSelectedList.i

            call PutEaData
        end

        bitmap_num = bitmap_num_old
    end

    call SetBitmapUseMode

return

/*:VRX         SetExtCommandSwitch
*/
SetExtCommandSwitch:
if debug_mode = 1 then say "SetExtCmmandSwitch"

    if ExtCommandSwitch = "ON" then do
        ok = VRSet( "CB_ExternalCommand", "Set", 1 )
        ok = VRSet( "PB_SetExternalCommand", "Enabled", 1 )
    end
    else if ExtCommandSwitch = "OFF" then do
        ok = VRSet( "CB_ExternalCommand", "Set", 0 )
        ok = VRSet( "PB_SetExternalCommand", "Enabled", 0 )
    end

return

/*:VRX         SetFont
*/
SetFont:
if debug_mode = 1 then say "SetFont"

    ok = VRSet("TimerSlider"             , "Font", Font )
    ok = VRSet("ImageDirectory"          , "Font", Font )
    ok = VRSet("DT_Bitmap_Directory"     , "Font", Font )
    ok = VRSet("DT_Timer"                , "Font", Font )
    ok = VRSet("BMP_Name"                , "Font", Font )
    ok = VRSet("BitmapName"              , "Font", Font )
    ok = VRSet("CB_SubDirectory"         , "Font", Font )
    ok = VRSet("RB_Random"               , "Font", Font )
    ok = VRSet("RB_Order"                , "Font", Font )
    ok = VRSet("SPIN_Unit"               , "Font", Font )
    ok = VRSet("IntervalValue"           , "Font", Font )
    ok = VRSet("DT_Interval"             , "Font", Font )
    ok = VRSet("DT_Remaining"            , "Font", Font )
    ok = VRSet("RemainValue"             , "Font", Font )
    ok = VRSet("PB_Exit"                 , "Font", Font )
    ok = VRSet("DT_UNIT1"                , "Font", Font )
    ok = VRSet("DT_UNIT2"                , "Font", Font )
    ok = VRSet("CB_WindowSize"           , "Font", Font )
    ok = VRSet("PB_Information"          , "Font", Font )
    ok = VRSet("LB_BitmapList"           , "Font", Font )
    ok = VRSet("DT_Bitmap_List"          , "Font", Font )
    ok = VRSet("DT_BitmapNum"            , "Font", Font )
    ok = VRSet("PB_ChangeASAP"           , "Font", Font )
    ok = VRSet("LB_Directory"            , "Font", Font )
    ok = VRSet("DT_Directory"            , "Font", Font )
    ok = VRSet("SPIN_Drive"              , "Font", Font )
    ok = VRSet("DT_Drive"                , "Font", Font )
    ok = VRSet("CB_ResizePicture"        , "Font", Font )
    ok = VRSet("CB_FullFunction"         , "Font", Font )
    ok = VRSet("CB_AnimateWindow"        , "Font", Font )
    ok = VRSet("CB_ChangeAtStartUp"      , "Font", Font )
    ok = VRSet("SPIN_Scale"              , "Font", Font )
    ok = VRSet("SPIN_Image"              , "Font", Font )
    ok = VRSet("DT_Image"                , "Font", Font )
    ok = VRSet("CB_RandomTimer"          , "Font", Font )
    ok = VRSet("SL_Red"                  , "Font", Font )
    ok = VRSet("SL_Green"                , "Font", Font )
    ok = VRSet("SL_Blue"                 , "Font", Font )
    ok = VRSet("DT_Red"                  , "Font", Font )
    ok = VRSet("DT_Green"                , "Font", Font )
    ok = VRSet("DT_Blue"                 , "Font", Font )
    ok = VRSet("CB_RandomBGColor"        , "Font", Font )
    ok = VRSet("PB_AcceptColor"          , "Font", Font )
    ok = VRSet("CB_ColorOnly"            , "Font", Font )
    ok = VRSet("DT_UseTypeSignal"        , "Font", Font )
    ok = VRSet("DT_UseColorSignal"       , "Font", Font )
    ok = VRSet("EF_SoundPath"            , "Font", Font )
    ok = VRSet("DT_Sound_Dir"            , "Font", Font )
    ok = VRSet("DT_SoundVolume"          , "Font", Font )
    ok = VRSet("PB_UseUnuse"             , "Font", Font )
    ok = VRSet("CB_UseWindowsTypeBitmap" , "Font", Font )
    ok = VRSet("CB_Color"                , "Font", Font )
    ok = VRSet("CB_Type"                 , "Font", Font )
    ok = VRSet("PB_ClearEA"              , "Font", Font )
    ok = VRSet("PB_AcceptAsBitmapData"   , "Font", Font )
    ok = VRSet("CB_UseBitmapEA"          , "Font", Font )
    ok = VRSet("CB_UseTimeSelector"      , "Font", Font )
    ok = VRSet("SPIN_TimeSelecter"       , "Font", Font )
    ok = VRSet("CB_CheckScreenSize"      , "Font", Font )
    ok = VRSet("CB_ZeroTimeFunction"     , "Font", Font )
    ok = VRSet("PB_BmpImage"             , "Font", Font )
    ok = VRSet("PB_GifImage"             , "Font", Font )
    ok = VRSet("PB_JpgImage"             , "Font", Font )
    ok = VRSet("PB_TifImage"             , "Font", Font )
    ok = VRSet("PB_TgaImage"             , "Font", Font )
    ok = VRSet("PB_PcxImage"             , "Font", Font )
    ok = VRSet("PB_DibImage"             , "Font", Font )
    ok = VRSet("PB_ModifyTimerUnitList"  , "Font", Font )
    ok = VRSet("LB_EditINItialFile"      , "Font", Font )
    ok = VRSet("PB_SaveIni"              , "Font", Font )
    ok = VRSet("PB_LoadIni"              , "Font", Font )
    ok = VRSet("EF_INI_detail"           , "Font", Font )
    ok = VRSet( "PB_SetFont"             , "Font", Font )
    ok = VRSet( "DT_TimerFunction"       , "Font", Font )

    /* External Command */
    ok = VRSet( "CB_ExternalCommand"     , "Font", Font )
    ok = VRSet( "PB_SetExternalCommand"  , "Font", Font )

    /* Startup Bitmap Function */
    ok = VRSet( "CB_StartupBitmap",      "Font", Font )
    ok = VRSet( "PB_SetAsStartupBitmap", "Font", Font )
    ok = VRSet( "PB_ClearStartupBitmap", "Font", Font )
    ok = VRSet( "EF_StartupBitmap",      "Font", Font )
    ok = VRSet( "PB_PutStartupBitmap",   "Font", Font )

    /* File Synchronize */
    ok = VRSet( "CB_FileSynchronize",    "Font", Font )

    /* Maximum File Size */
    ok = VRSet( "CB_MaximumFileSize", "Font", Font )
    ok = VRSet( "EF_MaximumFileSize", "Font", Font )
    ok = VRSet( "DT_6", "Font", font )

    /* File Detail */
    ok = VRSet( "DT_FileDetail_Date",   "Font", Font )
    ok = VRSet( "DT_FileDetail_Time",   "Font", Font )
    ok = VRSet( "DT_FileDetail_Attrib", "Font", Font )
    ok = VRSet( "DT_FileDetail_Size",   "Font", Font )

    ok = VRSet( "CB_StandardIORedirection", "Font", Font )

    ok = VRSet( "CB_ExitAfter1stChange", "Font", Font )

    /* Graphic Viewer/Opener */
    ok = VRSet( "DT_GraphicViewer", "Font", Font )
    ok = VRSet( "EF_GraphicViewer", "Font", Font )
    ok = VRSet( "PB_SetGraphicViewer", "Font", Font )

return

/*:VRX         SetImageType
*/
SetImageType:
if debug_mode = 1 then say "SetImageType"

   if BitmapImage = "Normal" then ImageType = "n"
   if BitmapImage = "Tiled"  then ImageType = "t"
   if BitmapImage = "Sized"  then ImageType = "s"

return

/*:VRX         SetRandomColorValue
*/
SetRandomColorValue:
if debug_mode = 1 then say "SetRandomColorValue"

   Red   = random(0,255)
   Green = random(0,255)
   Blue  = random(0,255)

   call SetColorBars
   call SetBGColor

return

/*:VRX         SetRandomTimer
*/
SetRandomTimer:
if debug_mode = 1 then say "SetRandomTimer"

   if startup = 0 then do
      if RandomTimer = "ON" then do
         interval_rec = interval
      end
      if RandomTimer = "OFF" then do
         interval = interval_rec
         ok = VRSet( "IntervalValue", "Caption", interval )
      end
   end

return

/*:VRX         SetRGBColorSlider
*/
SetRGBColorSlider:
if debug_mode = 1 then say "SetRGBColorSlider"

    select
        when RandomColor = "ON" then do
            ok = VRSet( "SL_Red", "Enabled", 0 )
            ok = VRSet( "DT_Red", "Enabled", 0 )

            ok = VRSet( "SL_Green", "Enabled", 0 )
            ok = VRSet( "DT_Green", "Enabled", 0 )

            ok = VRSet( "SL_Blue", "Enabled", 0 )
            ok = VRSet( "DT_Blue", "Enabled", 0 )
        end
        when RandomColor = "OFF" then do
            ok = VRSet( "SL_Red", "Enabled", 1 )
            ok = VRSet( "DT_Red", "Enabled", 1 )

            ok = VRSet( "SL_Green", "Enabled", 1 )
            ok = VRSet( "DT_Green", "Enabled", 1 )

            ok = VRSet( "SL_Blue", "Enabled", 1 )
            ok = VRSet( "DT_Blue", "Enabled", 1 )
        end
    end

return

/*:VRX         SetSelectTimeUnitList
*/
SetSelectTimeUnitList:
if debug_mode = 1 then say "SetSelectTimeUnitList"

   S.0 = 40
   parse var SelectTimeUnitList S.1";"S.2";"S.3";"S.4";"S.5";"S.6";"S.7";"S.8";"S.9";"S.10";"S.11";"S.12";"S.13";"S.14";"S.15";"S.16";"S.17";"S.18";"S.19";"S.20";"S.21";"S.22";"S.23";"S.24";"S.25";"S.26";"S.27";"S.28";"S.29";"S.30";"S.31";"S.32";"S.33";"S.34";"S.35";"S.36";"S.37";"S.38";"S.39";"S.40
   do List = 1 to S.0
      if S.List = "" then leave
   end
   TimeUnitList.0 = List - 1

   TimeUnitList = ""
   do List = 1 to TimeUnitList.0
      TimeUnitList.List = S.List
   end

return

/*:VRX         SetSleepTimer
*/
SetSleepTimer:
if debug_mode = 1 then say "SetSleepTimer"

  if 60 > now_sec & now_sec > maximum_difference then do
       /* 1.誤差分をsleepさせるとても原始的な方法 */
       /* rc = SysSleep(60 - now_sec)             */

       /* 2.Main Timerを制御するTimerを使用する方法  */
       /*   MainTimerのON/OFFを制御して誤差を修正する*/
       /*
       1)MainTimerを停止
       2)制御TimerのIntervalを誤差時間にセットして始動
       3)制御タイマーカウント時にMainTimerを始動
       4)制御タイマーを停止
       */
       /* 23/Apr/97 : 実装 */
       sleep_time = (60 - now_sec) * 1000
       SleepTimer = "Start"
       ok = VRSet( "TM_SleepTimer", "Delay", sleep_time )

       ok = VRSet( "TM_MainTimer", "Enabled", 0 )
       ok = VRSet( "ClockPicture", "PicturePath", "#122" )
       ok = VRSet( "TM_SleepTimer", "Enabled", 1 )
    end

return

/*:VRX         SetSoundSwitch
*/
SetSoundSwitch:
if debug_mode = 1 then say "SetSoundSwitch"

    if Sound = "ON" then do
        ok = VRSet( "IPB_SoundSwitch", "PicturePath", "#130" )
        ok = VRSet( "DT_Sound_Dir", "Enabled", 1 )
        ok = VRSet( "EF_SoundPath", "Enabled", 1 )
        ok = VRSet( "EF_SoundPath", "BackColor", "<default>" )
        ok = VRSet( "SL_SoundVolume", "Enabled", 1 )
        ok = VRSet( "SL_SoundVolume", "RibbonColor", SoundVolumeRibbonColor )
    end
    if Sound = "OFF" then do
        ok = VRSet( "IPB_SoundSwitch", "PicturePath", "#132" )
        ok = VRSet( "DT_Sound_Dir", "Enabled", 0 )
        ok = VRSet( "EF_SoundPath", "Enabled", 0 )
        ok = VRSet( "EF_SoundPath", "BackColor", "PaleGray" )
        ok = VRSet( "SL_SoundVolume", "Enabled", 0 )
        ok = VRSet( "SL_SoundVolume", "RibbonColor", "DarkGray" )
    end

    if CheckSoundDirectory = "NotCorrect" then do
        ok = VRSet( "EF_SoundPath", "BackColor", NotCollectColor )
    end

return

/*:VRX         SetSwitch
*/
SetSwitch:
if debug_mode = 1 then say "SetSwitch"
    
    if Switch = 'ON' then do
        ok = VRSet( "TM_MainTimer", "Enabled", 1 )
        ok = VRSet( "TimerSlider", "Percentile", percent_record )
        if UseTimeSelector = "Yes" then do
            ok = VRSet( "TimerSlider", "RibbonColor", "DarkGray" )
        end
        else do
            ok = VRSet( "TimerSlider", "RibbonColor", "(255,250,205)" )
        end
        ok = VRSet( "ClockPicture", "PicturePath", "#120" )
    end
    if Switch = 'OFF' then do
        ok = VRSet( "TM_MainTimer", "Enabled", 0 )
        percent_record = VRGet('TimerSlider','percentile')
        ok = VRSet( "ClockPicture", "PicturePath", "#124" )
        ok = VRSet( "TimerSlider", "RibbonColor", "DarkGray" )
    end

return

/*:VRX         SetTimeButtons
*/
SetTimeButtons:
if debug_mode = 1 then say "SetTimeButtons"

   if UseTimeSelector = "Yes" then do
      ok = VRSet( "SPIN_TimeSelecter", "Visible", 1 )
      ok = VRSet( "SPIN_Unit",         "Visible", 0 )
      ok = VRSet( "TimerSlider",       "Enabled", 0 )
      ok = VRSet( "TimerSlider",       "RibbonColor", "DarkGray" )
   end
   else do
      ok = VRSet( "SPIN_TimeSelecter", "Visible", 0 )
      ok = VRSet( "SPIN_Unit",         "Visible", 1 )
      ok = VRSet( "TimerSlider",       "Enabled", 1 )
      if Switch = "ON" then do
         ok = VRSet( "TimerSlider",       "RibbonColor", "(255,250,205)" )
      end
      else if Switch = "OFF" then do
         ok = VRSet( "TimerSlider",       "RibbonColor", "DarkGray" )
      end
   end

return

/*:VRX         SetTimerTime
*/
SetTimerTime:
if debug_mode = 1 then say "SetTimerTime"

   if UseTimeSelector = "Yes" then do
      SelectedTimeUnit = VRGet( "SPIN_TimeSelecter", "Value" )

      interval_rec = interval
      parse var SelectedTimeUnit time_unit_1 "h" time_unit_2 "m" dummy
      if translate(right(time_unit_1,1)) = "M" then do
         parse var time_unit_1 time_unit_2 "m"
         time_unit_1 = 0
      end

      interval_unused = interval
      interval = 0
      if time_unit_1 <> "" then interval = time_unit_1 * 60
      if time_unit_2 <> "" then interval = interval + time_unit_2

      if RandomTimer = "ON" & ZeroTime = "No" then do
         interval_rec = interval
         if interval_rec <> 0 then interval = random(1,interval_rec)
         ok = VRSet( "IntervalValue", "Caption", interval )
      end
      ok = VRSet( "IntervalValue", "Caption", interval )

      if Switch = 'ON' then do
         call SetTrigger
         call WriteINItialFile
      end
   end
   else do
      Interval = Interval_unused
      call SetTimeSliderTime
   end

   time2 = time2 -1
   call CountDown

return

/*:VRX         SetTimeSliderTime
*/
SetTimeSliderTime:
if debug_mode = 1 then say "SetTimeSliderTime"

    if startup = 0 then do
        if UseTimeSelector = "No" then do
            percent = VRGet('TimerSlider','percentile')

            /* Time Silder = 0 のときThe Wallが落ちる問題があり、それをここで回避するようにした(16.Jul.98 3.12 beta 3)。*/
            if percent = 0 then percent = 1

            if Switch = 'OFF' then percent = percent_record

            interval = 60 * percent % 100
            if (60 * percent / 100 - interval) <> 0 then interval = interval + 1

            if RandomTimer = "ON" then do
                interval_rec = interval
                if interval_rec <> 0 then interval = random(1,interval_rec)
                ok = VRSet( "IntervalValue", "Caption", interval )
            end
            ok = VRSet( "IntervalValue", "Caption", interval )

            if Switch = 'ON' then do
                call SetTrigger
                call WriteINItialFile
            end
        end
    end

return

/*:VRX         SetTitleBar
*/
SetTitleBar:
if debug_mode = 1 then say "SetTitleBar"

    select
        when title = "Normal" then do
            ok = VRSet("Window1", "Caption", "The Wall "WallVersion)
        end
        when title = "Search" then do
            ok = VRSet("Window1", "Caption", "The Wall "WallVersion" - Searching bitmap files...")
        end
        when title = "Change" then do
            ok = VRSet("Window1", "Caption", "The Wall "WallVersion" - Loading bitmap file...")
        end
        when title = "WallEmr" then do
            ok = VRSet("Window1", "Caption", "The Wall "WallVersion" - Run WallEmr!")
        end
        when title = "ExtCommand" then do
            ok = VRSet("Window1", "Caption", "The Wall "WallVersion" - Run External Command `"e_cmd"'")
        end
        otherwise
            nop
    end

return

/*:VRX         SetTrigger
*/
SetTrigger:
if debug_mode = 1 then say "SetTrigger"

    if Timer = 'Second' then do
        ok = VRSet( "SPIN_Unit", "Value", Second )
        ok = VRSet( "TM_MainTimer", "Delay", TimerUnit % 60 )
        ok = VRSet( "DT_UNIT1", "Caption", "[s]" )
        ok = VRSet( "DT_UNIT2", "Caption", "[s]" )
    end

    if Timer = 'Minute' then do
        ok = VRSet( "SPIN_Unit", "Value", Minute )
        ok = VRSet( "TM_MainTimer", "Delay", TimerUnit )
        ok = VRSet( "DT_UNIT1", "Caption", "[m]" )
        ok = VRSet( "DT_UNIT2", "Caption", "[m]" )
    end

    if Timer = 'Hour' then do
        ok = VRSet( "SPIN_Unit", "Value", Minute )
        ok = VRSet( "TM_MainTimer", "Delay", TimerUnit * 60 )
        ok = VRSet( "DT_UNIT1", "Caption", "[h]" )
        ok = VRSet( "DT_UNIT2", "Caption", "[h]" )
    end

    /* Timer Unit変更前の単位が秒の場合、ここで秒の差分を測定して誤差を調整する (17.Jul.98 3.12 beta 4) */
    call SetSleepTimer

    if UseTimeSelector = "Yes" then do
        ok = VRSet( "SPIN_Unit", "Value", Minute )
        ok = VRSet( "TM_MainTimer", "Delay", TimerUnit )
        ok = VRSet( "DT_UNIT1", "Caption", "[m]" )
        ok = VRSet( "DT_UNIT2", "Caption", "[m]" )
    end
    else do
        /* TimerをSecondにした時はSleepする必要がない(16.Jul.98 3.12 beta 3)。 */
        /* Timer = "Second"時だけSleep Timerを解除 */
        /* その他の場合は再度状況を判断し、Sleep TimerをSetする場合はSetしなおす */
        if Timer = 'Second' then do
            call TM_SleepTimer_Trigger
        end
    end

return

/*:VRX         SetWallPosition
*/
SetWallPosition:
if debig_mode = 1 then say "GetWindowPosition"

   if window_condition = "Visible" & Window_Activate = 1 then do
      WallPosX = VRGet( "Window1", "Left" )
      WallPosY = VRGet( "Window1", "Top" )
      if (WallPosX <> WallPosX_old) | (WallPosY <> WallPosY_old) then call WriteINItialFile
      WallPosX_old = WallPosX
      WallPosY_old = WallPosY
   end

return

/*:VRX         SetZeroTime
*/
SetZeroTime:
if debug_mode = 1 then say "SetZeroTime"

    select
        when ZeroTime = "Yes" then do
            ok = VRSet( "IntervalValue", "Caption", interval )

            start_time = 0
            start_time = time(m)
            parse value time() with . ":" minutes ":" .

            i = 0
            do until minutes < interval * i
                i = i + 1
            end

            if      minutes // interval = 0 then wait_time = 0
            else if interval * i >= 60      then wait_time = 60             - minutes
            else                                 wait_time = (interval * i) - minutes

            time2 = interval - (wait_time + 1)
            start_time = start_time + wait_time

            if RandomTimer = "ON" then do
                RandomTimer_rec = RandomTimer
                ok = VRSet( "CB_RandomTimer", "Set", 1 )
            end
            RandomTimer = "OFF"

            ok = VRSet( "CB_ZeroTimeFunction", "Set", 1 )
            ok = VRSet( "CB_RandomTimer", "Enabled", 0 )
        end

        when ZeroTime = "No" then do
            /* Random Timer */
            if RandomTimer = "ON" then do
                ok = VRSet( "CB_RandomTimer", "Set", 1 )
                call SetRandomTimer
                if interval_rec <> 0 then interval = random(1,interval_rec)
                Random_Startup = 1
            end

            ok = VRSet( "IntervalValue", "Caption", interval )
            ok = VRSet( "RemainValue", "Caption", interval )

            ok = VRSet( "CB_ZeroTimeFunction", "Set", 0 )
            ok = VRSet( "CB_RandomTimer", "Enabled", 1 )
        end
    end

return

/*:VRX         ShowBitmapFileDetail
*/
ShowBitmapFileDetail:
if debug_mode = 1 then say "ShowBitmapFileDetail"

    parse var file_date fd1 "/" fd2 "/" fd3
    file_date = right(fd1, 2, "0")"/"right(fd2, 2, "0")"/"right(fd3, 2, "0")
    ok = VRSet( "DT_FileDetail_Date", "Caption", file_date )

    parse var file_time ft1 ":" ft2
    ft3 = left(ft2, 2)
    ft4 = right(ft2, 1)
    if ft4 = "p" then ft1 = ft1 + 12
    file_time = right(ft1, 2, "0")":"right(ft3, 2, "0")
    ok = VRSet( "DT_FileDetail_Time", "Caption", file_time )

    ok = VRSet( "DT_FileDetail_Attrib", "Caption", file_attrib )

    ok = VRSet( "DT_FileDetail_Size", "BackColor", FileDetailColorBack )
    if MaximumFileSizeMode = "Enabled" then do
        call CheckFileSize

        if FileSize = "Large" then do
            ok = VRSet( "DT_FileDetail_Size", "BackColor", FileDetailColorSizeOver )
        end
    end

    if file_size >= 1024 then do
        ok = VRSet( "DT_FileDetail_Size", "ForeColor", "(255,255,225)" )
        ok = VRSet( "DT_FileDetail_Size", "Caption", file_size % 1024" KB" )
    end
    else do
        ok = VRSet( "DT_FileDetail_Size", "ForeColor", "(000,255,154" )
        ok = VRSet( "DT_FileDetail_Size", "Caption", file_size" byte" )
    end

return

/*:VRX         SL_Blue_Change
*/
SL_Blue_Change:
if debug_mode = 1 then say "SL_Blue_Change"

    BluePercentile = VRGet( "SL_Blue", "Percentile" )
    Blue = 255 * BluePercentile % 100

    ok = VRSet( "SL_Blue", "RibbonColor", "(0,0,"Blue")" )
    ok = VRSet( "DT_Blue", "Caption", d2x(Blue,2) )

    if RandomColor = "OFF" then do
        call SetBGColor
        /*
        call WriteINItialFile
        */
    end

return

/*:VRX         SL_Green_Change
*/
SL_Green_Change:
if debug_mode = 1 then say "SL_Green_Change"

    GreenPercentile = VRGet( "SL_Green", "Percentile" )
    Green = 255 * GreenPercentile % 100

    ok = VRSet( "SL_Green", "RibbonColor", "(0,"Green",0)" )
    ok = VRSet( "DT_Green", "Caption", d2x(Green,2) )

    if RandomColor = "OFF" then do
        call SetBGColor
    end

return

/*:VRX         SL_Red_Change
*/
SL_Red_Change:
if debug_mode = 1 then say "SL_Red_Change"

    RedPercentile = VRGet( "SL_Red", "Percentile" )
    Red = 255 * RedPercentile % 100

    ok = VRSet( "SL_Red", "RibbonColor", "("Red",0,0)" )
    ok = VRSet( "DT_Red", "Caption", d2x(Red,2) )

    if RandomColor = "OFF" then do
        call SetBGColor
    end

return

/*:VRX         SL_SoundVolume_Change
*/
SL_SoundVolume_Change:

    percentile = VRGet( "SL_SoundVolume", "Percentile" )
    SoundVolume = percentile

return

/*:VRX         SPIN_Drive_Change
*/
SPIN_Drive_Change:
if debug_mode = 1 then say "SPIN_Drive_Change"

   call ReadDriveMap
   if change = 0 then do
      /*
      ok = VRSet( "DT_SearchLoadIndicator", "Visible", 1 )
      */
      ok = VRSet( "ImageDirectory", "Value", VRGet("SPIN_Drive","Value"))
      change = 1
   end
   else do
      change = 0
   end

return

/*:VRX         SPIN_EC_Hour_Change
*/
SPIN_EC_Hour_Change:
if debug_mode = 1 then say "SPIN_EC_Hour_Change"

    h = VRGet( "SPIN_EC_Hour", "Value" )
    m = VRGet( "SPIN_EC_Minute", "Value" )

    ExtCommandTiming = h":"m

return

/*:VRX         SPIN_EC_Minute_Change
*/
SPIN_EC_Minute_Change:
if debug_mode = 1 then say "SPIN_EC_Minute_Change"

    h = VRGet( "SPIN_EC_Hour", "Value" )
    m = VRGet( "SPIN_EC_Minute", "Value" )

    ExtCommandTiming = h":"m

return

/*:VRX         SPIN_Image_Change
*/
SPIN_Image_Change:
if debug_mode = 1 then say "SPIN_Image_Change"

    if bringup = 0 then do
        ok = VRSet( "SPIN_Scale", "Enabled", 0 )
        sized = 0

        BitmapImage_old = BitmapImage

        BitmapImage = VRGet( "SPIN_Image", "Value" )
        call SetImageType

        if BitmapImage = "Sized" then do
            ok = VRSet( "SPIN_Scale", "Enabled", 1 )
            sized = 1
        end

        if BitmapImage <> BitmapImage_old then do
            ExtCommandMode = "OFF"
            call ChangeBitmap
        end
    end

return

/*:VRX         SPIN_Scale_Change
*/
SPIN_Scale_Change:
if debug_mode = 1 then say "SPIN_Scale_Change"

   if bringup = 0 then do
      if ImageType = "s" then do
         ImageScale = VRGet( "SPIN_Scale", "Value" )
         parse var ImageScale Scale 'x' dummy
         call WriteINItialFile
         ExtCommandMode = "OFF"
         call ChangeBitmap
      end
   end

return

/*:VRX         SPIN_TimeSelecter_Change
*/
SPIN_TimeSelecter_Change:
if debug_mode = 1 then say "SPIN_TimeSelecter_Change"

   if startup = 0 then do
      call SetTimerTime
   end

return

/*:VRX         SPIN_Unit_Change
*/
SPIN_Unit_Change:
if debug_mode = 1 then say "SPIN_Unit_Change"

    Timer = VRGet( "SPIN_Unit", "Value" )
    call SetTrigger
    call WriteINItialFile

return

/*:VRX         SW_CheckScreenSize_Close
*/
SW_CheckScreenSize_Close:
if debug_mode = 1 then say "SW_CheckScreenSize_Close"

    call SW_CheckScreenSize_Fini

return

/*:VRX         SW_CheckScreenSize_Create
*/
SW_CheckScreenSize_Create:
if debug_mode = 1 then say "SW_CheckScreenSize_Create"

    call SW_CheckScreenSize_Init

return

/*:VRX         SW_CheckScreenSize_Fini
*/
SW_CheckScreenSize_Fini:
if debug_mode = 1 then say "SW_CheckScreenSize_Fini"

    window = VRInfo( "Window" )
    call VRDestroy window
    drop window

return
/*:VRX         SW_CheckScreenSize_Init
*/
SW_CheckScreenSize_Init:
if debug_mode = 1 then say "SW_CheckScreenSize_Init"

    window = VRInfo( "Object" )
    if( \VRIsChildOf( window, "Notebook" ) ) then do
        call VRMethod window, "CenterWindow"
        call VRSet window, "Visible", 1
        call VRMethod window, "Activate"
    end
    drop window

return

/*:VRX         SW_ModifyTimerUnitList_Close
*/
SW_ModifyTimerUnitList_Close:
    call SW_ModifyTimerUnitList_Fini
return

/*:VRX         SW_ModifyTimerUnitList_Create
*/
SW_ModifyTimerUnitList_Create:
    call SW_ModifyTimerUnitList_Init
return

/*:VRX         SW_ModifyTimerUnitList_Fini
*/
SW_ModifyTimerUnitList_Fini:
    window = VRInfo( "Window" )
    call VRDestroy window
    drop window
return
/*:VRX         SW_ModifyTimerUnitList_Init
*/
SW_ModifyTimerUnitList_Init:

   ok = VRSet( "MLE_SelectTimerUnitList", "Value", SelectTimeUnitList )

   current_window_width = VRGet("Window1", "Width")

   ok = VRSet("PB_MTUL_Save"            ,"Font", Font )
   ok = VRSet("PB_MTUL_Cancel"          ,"Font", Font )
   ok = VRSet("MLE_SelectTimerUnitList" ,"Font", Font )
   ok = VRSet("PB_MTUL_Default"         ,"Font", Font )

    window = VRInfo( "Object" )
    if( \VRIsChildOf( window, "Notebook" ) ) then do
        call VRMethod window, "CenterWindow"

      ok = VRSet( "SW_ModifyTimerUnitList", "Left", WallPosX )

      ok = VRSet( "SW_ModifyTimerUnitList", "Width", current_window_width )
      ok = VRSet( "MLE_SelectTimerUnitList", "Width", current_window_width )

        call VRSet window, "Visible", 1
        call VRMethod window, "Activate"
    end
    drop window

return

/*:VRX         SW_Registry_Close
*/
SW_Registry_Close:
    call SW_Registry_Fini
return

/*:VRX         SW_Registry_Create
*/
SW_Registry_Create:
    call SW_Registry_Init
return

/*:VRX         SW_Registry_Fini
*/
SW_Registry_Fini:
    window = VRInfo( "Window" )
    call VRDestroy window
    drop window
return
/*:VRX         SW_Registry_Init
*/
SW_Registry_Init:

    ok = VRSet( "DT_RegistryType",    "Font", font )
    ok = VRSet( "DT_3",               "Font", font )
    ok = VRSet( "DT_5",               "Font", font )
    ok = VRSet( "EF_RegistoryNumber", "Font", font )
    ok = VRSet( "PB_Registory",       "Font", font )
    ok = VRSet( "PB_NotYet",          "Font", font )

    ok = VRSet( "GB_7",            "Font", font )
    ok = VRSet( "DT_EmailAddress", "Font", font )
    ok = VRSet( "EF_EmailAddress", "Font", font )
    ok = VRSet( "DT_Url",          "Font", font )
    ok = VRSet( "EF_Url",          "Font", font )

    ok = VRSet( "Pict_1", "PicturePath", "#118" )

    window = VRInfo( "Object" )
    if( \VRIsChildOf( window, "Notebook" ) ) then do
        call VRMethod window, "CenterWindow"

        if OpenRegistryWindowTiming = "AfterStartup" then do
            w2 = VRGet( "SW_Registry", "Width" )
            h2 = VRGet( "SW_Registry", "Height" )
            x = x + (w - w2) / 2
            y = y + (h - h2) / 2
            ok = VRSet( "SW_Registry", "Left", x )
            ok = VRSet( "SW_Registry", "Top",  y )

            if Registry = "Registered" then do
                /*
                ok = VRSet( "DT_5", "Caption", "Your Register Number" )

                ok = VRSet( "EF_RegistoryNumber", "Value", RegisterNumber )
                ok = VRSet( "EF_RegistoryNumber", "ReadOnly", 1 )
                ok = VRSet( "EF_RegistoryNumber", "BackColor", "PaleGray" )
                */
                ok = VRSet( "DT_5", "Visible", 0 )
                ok = VRSet( "EF_RegistoryNumber", "Visible", 0 )
                /*
                ok = VRSet( "PB_NotYet",   "Top", 943 )
                ok = VRSet( "SW_Registry", "Height", 1674 )
                */
                ok = VRSet( "PB_NotYet",   "Top",    1927 )
                ok = VRSet( "SW_Registry", "Height", 2638 )

                ok = VRSet( "PB_Registory", "Visible", 0 )
                ok = VRSet( "PB_NotYet", "Caption", "Return" )

                ok = VRSet( "DT_RegistryType", "BackColor", "(32,178,170)" )
                ok = VRSet( "DT_RegistryType", "ForeColor", "White" )
/*
                ok = VRSet( "DT_RegistryType", "Caption", " Registered " )
*/
                ok = VRSet( "DT_RegistryType", "Caption", " Freeware " )

                /* Demo版表示 */
                if left(RegisterNumber, 4) = "DEMO" then do
                    ok = VRSet( "DT_RegistryType", "Caption", " DEMO " )
                end
            end
        end

        reg_cnt = 0

        reg_red   = 123
        reg_green = 104
        reg_blue  = 238

        call VRSet window, "Visible", 1
        call VRMethod window, "Activate"
    end
    drop window
return

/*:VRX         SW_SelectRunMode_Close
*/
SW_SelectRunMode_Close:
    call SW_SelectRunMode_Fini
return

/*:VRX         SW_SelectRunMode_Create
*/
SW_SelectRunMode_Create:
    call SW_SelectRunMode_Init
return

/*:VRX         SW_SelectRunMode_Fini
*/
SW_SelectRunMode_Fini:
    window = VRInfo( "Window" )
    call VRDestroy window
    drop window
return
/*:VRX         SW_SelectRunMode_Init
*/
SW_SelectRunMode_Init:
    window = VRInfo( "Object" )
    if( \VRIsChildOf( window, "Notebook" ) ) then do
        call VRMethod window, "CenterWindow"
        call VRSet window, "Visible", 1
        call VRMethod window, "Activate"
    end
    drop window
return

/*:VRX         SW_SetExternalCommands_Activate
*/
SW_SetExternalCommands_Activate:

return

/*:VRX         SW_SetExternalCommands_Close
*/
SW_SetExternalCommands_Close:
    call SW_SetExternalCommands_Fini
return

/*:VRX         SW_SetExternalCommands_Create
*/
SW_SetExternalCommands_Create:
    call SW_SetExternalCommands_Init
return

/*:VRX         SW_SetExternalCommands_Fini
*/
SW_SetExternalCommands_Fini:
    window = VRInfo( "Window" )
    call VRDestroy window
    drop window
return
/*:VRX         SW_SetExternalCommands_Init
*/
SW_SetExternalCommands_Init:

    /* Set Font */
    ok = VRSet( "LB_ExternalCommandList",      "Font", Font )
    ok = VRSet( "RB_RunWhenChanged",           "Font", Font )
    ok = VRSet( "RB_RunFixedTime",             "Font", Font )
    ok = VRSet( "SPIN_EC_Hour",                "Font", Font )
    ok = VRSet( "SPIN_EC_Minute",              "Font", Font )
    ok = VRSet( "DT_TimeColon",                "Font", Font )
    ok = VRSet( "EF_ExternalCommand",          "Font", Font )
    ok = VRSet( "PB_NewExternalCommand",       "Font", Font )
    ok = VRSet( "PB_AddExternalCommand",       "Font", Font )
    ok = VRSet( "PB_RemoveExternalCommand",    "Font", Font )
    ok = VRSet( "PB_SaveExternalCommands",     "Font", Font )
    ok = VRSet( "PB_CancelSetExternalCommand", "Font", Font )
    ok = VRSet( "CB_EnabledExternalCommand",   "Font", Font )
    ok = VRSet( "PB_ClearExternalCommand",     "Font", Font )

    do i = 1 to 24
        ec_h.i = right(i -1 , 2, "0")
    end
    ec_h.0 = i
    ok = VRMethod( "SPIN_EC_Hour", "SetStringList", "ec_h." )

    do i = 1 to 60
        ec_m.i = right(i - 1, 2, "0")
    end
    ec_m.0 = i
    ok = VRMethod( "SPIN_EC_Minute", "SetStringList", "ec_m." )

    new_cmd = "No"
    ExtCommandTiming = ""
    ExtCommandRunMode = "CHANGED" /* or TIME */

    selected = 0

    ok = VRSet( "RB_RunWhenChanged", "Set", 1 )
    ok = VRSet( "SPIN_EC_Hour", "Enabled", 0 )
    ok = VRSet( "SPIN_EC_Minute", "Enabled", 0 )

    ok = VRSet( "PB_ChangeExternalCommand", "Enabled", 0 )   
    ok = VRSet( "PB_RemoveExternalCommand", "Enabled", 0 )
    ok = VRSet( "PB_ClearExternalCommand",  "Enabled", 0 )
    

    ok = VRMethod( "LB_ExternalCommandList", "AddStringList", "ExternalCommandList.", 1 )

    ok = VRMethod( "EF_ExternalCommand", "SetFocus" )

    window = VRInfo( "Object" )
    if( \VRIsChildOf( window, "Notebook" ) ) then do
        call VRMethod window, "CenterWindow"

        w2 = VRGet( "SW_SetExternalCommands", "Width" )
        h2 = VRGet( "SW_SetExternalCommands", "Height" )
        x = x + (w - w2) / 2
        y = y + (h - h2) / 2
        ok = VRSet( "SW_SetExternalCommands", "Left", x )
        ok = VRSet( "SW_SetExternalCommands", "Top",  y )

        call VRSet window, "Visible", 1
        call VRMethod window, "Activate"
    end
    drop window
return

/*:VRX         TimerSlider_Change
*/
TimerSlider_Change:
if debug_mode = 1 then say "TimerSlider_Change"
    
    if startup = 0 then do
        call SetTimeSliderTime

        time2 = time2 - 1
        call CountDown
    end

return
/*:VRX         TM_MainTimer_Trigger
*/
TM_MainTimer_Trigger:
/*if debug_mode = 1 then say "TM_MainTimer_Trigger"*/
    
    if start_timer = "ON" then do
        call CountDown
    end

return

/*:VRX         TM_Registry_Trigger
*/
TM_Registry_Trigger:

    reg_cnt = reg_cnt + 1

    select
        when reg_cnt = 6 then do
            ok = VRSet( "Pict_1", "PicturePath", "#110" )
        end
        when reg_cnt = 12 then do
            ok = VRSet( "Pict_1", "PicturePath", "#118" )
        end
        when reg_cnt = 18 then do
            ok = VRSet( "Pict_1", "PicturePath", "#110" )
        end
        when reg_cnt = 24 then do
            ok = VRSet( "Pict_1", "PicturePath", "#118" )
        end

        when reg_cnt = 30 then do
            /*
            if Sound = "ON" then do
                call PlaySound
            end
            */
            ok = VRSet( "Pict_1", "PicturePath", "#110" )
            ok = VRSet( "DT_1", "Caption", "he Wall " )
        end
        when reg_cnt = 31 then do
            ok = VRSet( "DT_1", "Caption", "e Wall  " )
        end
        when reg_cnt = 32 then do
            ok = VRSet( "DT_1", "Caption", " Wall   " )
        end
        when reg_cnt = 33 then do
            ok = VRSet( "DT_1", "Caption", "Wall    " )
        end
        when reg_cnt = 34 then do
            ok = VRSet( "DT_1", "Caption", "all     " )
        end
        when reg_cnt = 35 then do
            ok = VRSet( "DT_1", "Caption", "ll      " )
        end
        when reg_cnt = 36 then do
            ok = VRSet( "Pict_1", "PicturePath", "#118" )
            ok = VRSet( "DT_1", "Caption", "l      T" )
        end
        when reg_cnt = 37 then do
            ok = VRSet( "DT_1", "Caption", "      Th" )
        end
        when reg_cnt = 38 then do
            ok = VRSet( "DT_1", "Caption", "     The" )
        end
        when reg_cnt = 39 then do
            ok = VRSet( "DT_1", "Caption", "    The " )
        end
        when reg_cnt = 41 then do
            ok = VRSet( "DT_1", "Caption", "   The W" )
        end
        when reg_cnt = 42 then do
            ok = VRSet( "Pict_1", "PicturePath", "#110" )
            ok = VRSet( "DT_1", "Caption", "  The Wa" )
        end
        when reg_cnt = 43 then do
            ok = VRSet( "DT_1", "Caption", " The Wal" )
        end
        when reg_cnt = 44 then do
            ok = VRSet( "DT_1", "Caption", "The Wall" )
        end

        when reg_cnt = 48 then do
            ok = VRSet( "Pict_1", "PicturePath", "#118" )
            reg_cnt = 0
        end

        otherwise do

        end
    end

return

/*:VRX         TM_SleepTimer_Trigger
*/
TM_SleepTimer_Trigger:
if debug_mode = 1 then say "TM_SleepTimer_Trigger"

   ok = VRSet( "TM_MainTimer", "Enabled", 1 )
   ok = VRSet( "TM_SleepTimer", "Enabled", 0 )
   ok = VRSet( "ClockPicture", "PicturePath", "#120" )
   SleepTimer = "Stop"
   call CountDown

return

/*:VRX         UseBitmapEAContextMenu
*/
UseBitmapEAContextMenu:
if debug_mode = 1 then say "UseBitmapEAContextMenu"

    if UseType = "Yes" then do
        ok = VRSet( "AII_Type_Normal", "Enabled", 1 )
        ok = VRSet( "AII_Type_Tiled",  "Enabled", 1 )
        ok = VRSet( "AII_Type_Sized",  "Enabled", 1 )
    end
    if UseType = "No" then do
        ok = VRSet( "AII_Type_Normal", "Enabled", 0 )
        ok = VRSet( "AII_Type_Tiled",  "Enabled", 0 )
        ok = VRSet( "AII_Type_Sized",  "Enabled", 0 )
    end

    /* Reset Check */
    ok = VRSet( "AII_Use",    "checked", 1 ) /* Default = Use */
    ok = VRSet( "AII_UnUsed", "checked", 0 )
    ok = VRSet( "AII_Type_Normal", "checked", 0 )
    ok = VRSet( "AII_Type_Tiled",  "checked", 0 )
    ok = VRSet( "AII_Type_Sized_1",  "checked", 0 )
    ok = VRSet( "AII_Type_Sized_2",  "checked", 0 )
    ok = VRSet( "AII_Type_Sized_3",  "checked", 0 )
    ok = VRSet( "AII_Type_Sized_4",  "checked", 0 )
    ok = VRSet( "AII_Type_Sized_5",  "checked", 0 )
    ok = VRSet( "AII_Type_Sized_6",  "checked", 0 )
    ok = VRSet( "AII_Type_Sized_7",  "checked", 0 )
    ok = VRSet( "AII_Type_Sized_8",  "checked", 0 )
    ok = VRSet( "AII_Type_Sized_9",  "checked", 0 )
    ok = VRSet( "AII_Type_Sized_10", "checked", 0 )
    ok = VRSet( "AII_Type_Sized_11", "checked", 0 )
    ok = VRSet( "AII_Type_Sized_12", "checked", 0 )
    ok = VRSet( "AII_Type_Sized_13", "checked", 0 )
    ok = VRSet( "AII_Type_Sized_14", "checked", 0 )
    ok = VRSet( "AII_Type_Sized_15", "checked", 0 )
    ok = VRSet( "AII_Type_Sized_16", "checked", 0 )
    ok = VRSet( "AII_Type_Sized_17", "checked", 0 )
    ok = VRSet( "AII_Type_Sized_18", "checked", 0 )
    ok = VRSet( "AII_Type_Sized_19", "checked", 0 )
    ok = VRSet( "AII_Type_Sized_20", "checked", 0 )
    aii_selected_type = "OpenBitmap" /* Default */


    if MultiSetEa = "No" then do
        /* Open Bitmap */
        ok = VRSet( "OpenBitmap", "Enabled", 1 )

        /* Set Check */
        if UseMode = "Used" then do
            ok = VRSet( "AII_Use",    "checked", 1 )
        end
        else if UseMode = "Unused" then do
            ok = VRSet( "AII_UnUsed", "checked", 1 )
        end

        if ImageType_detail = "Normal" then do
            ok = VRSet( "AII_Type_Normal", "checked", 1 )
            aii_selected_type = "AII_Type_Normal"
        end
        else if ImageType_detail = "Tiled" then do
            ok = VRSet( "AII_Type_Tiled",  "checked", 1 )
            aii_selected_type = "AII_Type_Tiled"
        end
        else if left(ImageType_detail, 5) = "Sized" then do
            parse var ImageType_detail . csz
            ok = VRSet( "AII_Type_Sized_"csz, "checked", 1 )
            aii_selected_type = "AII_Type_Sized"
        end
    
        if UseColor = "Yes" then do
            ok = VRSet( "AII_Color", "Enabled", 1 )
        end
        if UseColor = "No" then do
            ok = VRSet( "AII_Color", "Enabled", 0 )
        end
    end
    else if MultiSetEa = "Yes" then do
        /* Open Bitmap */
        ok = VRSet( "OpenBitmap", "Enabled", 0 )
    end    


    ok = VRMethod( "AII_Type", "Popup") 
/*
    ok = VRMethod( "AII_Type", "Popup", , ,aii_selected_type,  ) 
*/

return

/*:VRX         Window1_Activate
*/
Window1_Activate:
if debug_mode = 1 then say "Window1_Activate"

   Window_Activate  = 1
   startup          = 0
   bringup          = 0
   window_condition = "Visible"

   call SetWallPosition

return

/*:VRX         Window1_Close
*/
Window1_Close:
if debug_mode = 1 then say "Window1_Close"

   ok = VRMethod( "ExitWall", "Popup")

return

/*:VRX         Window1_Deactivate
*/
Window1_Deactivate:
if debug_mode = 1 then say "Window1_Deactivate"

   window_condition = "UnVisible"
   call SetWallPosition

return

/*:VRX         Window1_Resize
*/
Window1_Resize:
if debug_mode = 1 then say "Window1_Resize"

   call SetWallPosition

return

/*:VRX         WriteINItialFile
*/
WriteINItialFile:
if debug_mode = 1 then say "WriteINItialFile"

    if bringup = 0 then do

        outfile = WallDirectory'\Wall.ini'
        if write_mode = "Disabled" then do
            rc = SysFileDelete(outfile)
        end

        write_mode = "Enabled"

        call lineout outfile, ';',1
        if Registry = "Registered" then do
            call lineout outfile, '; Wall.ini - The Wall INItial file ('WallVersion')'
        end
        else do
            call lineout outfile, '; Wall.ini - The Wall INItial file (Unregistered 'WallVersion')'
        end
        call lineout outfile, ';'
        call lineout outfile, 'BitmapDirectory='BitmapDirectory
        call lineout outfile, 'SubDirectory='SubDir

        call lineout outfile, 'BmpImage='BmpImage
        call lineout outfile, 'GifImage='GifImage
        call lineout outfile, 'JpgImage='JpgImage
        call lineout outfile, 'TifImage='TifImage
        call lineout outfile, 'TgaImage='TgaImage
        call lineout outfile, 'PcxImage='PcxImage
        call lineout outfile, 'DibImage='DibImage

        call lineout outfile, 'BitmapImage='BitmapImage
        call lineout outfile, 'ImageScale='ImageScale
        call lineout outfile, 'UseWindowsTypeBitmaps='UseWindowsTypeBitmaps
        call lineout outfile, 'BitmapNumber='bitmap_num
        call lineout outfile, 'BitmapData='BitmapData

        call lineout outfile, 'Function='Function
        call lineout outfile, 'AnimateWindow='AnimateWindow
        call lineout outfile, 'FileSynchronize='FileSynchronize

        call lineout outfile, 'MaximumFileSizeMode='MaximumFileSizeMode
        call lineout outfile, 'MaximumFileSize='MaximumFileSize

        call lineout outfile, 'Minimize='Minimize
        call lineout outfile, 'Order='Order

        call lineout outfile, 'WallPosX='WallPosX
        call lineout outfile, 'WallPosY='WallPosY

        call lineout outfile, "Font="Font

        call lineout outfile, 'CheckScreenSizeEverytime='CheckScreenSizeEverytime
        call lineout outfile, 'CheckScreenSize='CheckScreenSize
        call lineout outfile, 'ScreenWidth='ScreenWidth
        call lineout outfile, 'ScreenHeight='ScreenHeight

        call lineout outfile, "ExitAfter1stChange="ExitAfter1stChange

        call lineout outfile, 'ColorOnly='ColorOnly
        call lineout outfile, 'Resize='Resize

        call lineout outfile, 'TimerUnit='TimerUnit
        if UseTimeSelector = "No" then do
            if RandomTimer      = "ON"  then do
                call lineout outfile, 'Interval='Interval_rec
            end
            else if RandomTimer = "OFF" then do
                call lineout outfile, 'Interval='Interval
            end
        end
        else if UseTimeSelector = "Yes" then do
            call lineout outfile, "Interval="Interval_unused
        end

        call lineout outfile, 'Timer='Timer
        call lineout outfile, 'Switch='Switch

        call lineout outfile, 'ZeroTimeFunction='ZeroTime
        if ZeroTime = "Yes" then do
            call lineout outfile, 'RandomTimer='RandomTimer_rec
        end
        else do
            call lineout outfile, 'RandomTimer='RandomTimer
        end

        call lineout outfile, 'UseTimeSelector='UseTimeSelector
        call lineout outfile, 'SelectTimeUnitList='SelectTimeUnitList
        call lineout outfile, 'SelectedTimeUnit='SelectedTimeUnit

        if RandomColor = "ON" then do
            call lineout outfile, 'Red='Red_rec
            call lineout outfile, 'Green='Green_rec
            call lineout outfile, 'Blue='Blue_rec
        end
        else if RandomColor = "OFF" then do
            call lineout outfile, 'Red='Red
            call lineout outfile, 'Green='Green
            call lineout outfile, 'Blue='Blue
        end

        call lineout outfile, "RandomColor="RandomColor

        call lineout outfile, 'UseEAArea='UseEAArea
        call lineout outfile, 'UseBitmapEA='UseBitmapEA
        call lineout outfile, 'UseType='UseType
        call lineout outfile, 'UseColor='UseColor

        call lineout outfile, 'ChangeAtStartUp='ChangeAtStartUp
        call lineout outfile, 'StartupBitmap='StartupBitmap
        call lineout outfile, 'StartupBitmapName='StartupBitmapName

        call lineout outfile, 'Sound='Sound
        call lineout outfile, 'SoundDirectory='SoundDirectory
        call lineout outfile, "SoundVolume="SoundVolume
        call lineout outfile, "ImageViewer="ImageViewer

/*
        if debug_mode = 0 then call lineout outfile, 'Mode=General'
        if debug_mode = 1 then call lineout outfile, 'Mode=debug'
*/
        call lineout outfile, 'WallEmr='WallEmr

        call lineout outfile, 'ExtCommandSwitch='ExtCommandSwitch
        select
            when ExternalCommandList.0 = 0 then do
                call lineout outfile, 'ExtCommand=<none>'
            end
            when ExternalCommandList.0 <> 0 then do
                do i = 1 to ExternalCommandList.0
                    call lineout outfile, 'ExtCommand='ExternalCommandList.i
                end
            end
        end

/*
 * DefaultでDisabledのまま変更出来ない様に仕様変更(コメント・アウト) (3.39 beta 2, 05.Aug.2000) 
 *
 *
        call lineout outfile, "StandardIORedirection="StandardIORedirection
 */

/* become Freeware, 11.Nov.2004
        call lineout outfile, 'RegisterNumber='RegisterNumber
*/
        call lineout outfile, 'Option='Option

        call lineout outfile

        write_mode = "Disabled"

    end

return

