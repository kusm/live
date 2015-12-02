Debian 8.x (Jessie) Live DVD/USB image for Department of Mathematics, Kyoto University
======================================================================================

Copyright(c) 2015: Youhei SASAKI <uwabami@math.kyoto-u.ac.jp>

目次
----

* Debian Live について
  1. Live DVD/USB として使う
  2. DVD の差分を USB メモリに保存する
  3. よくある質問
* Debian Live のカスタマイズ
  

Debian Live について
--------------------

この DVD/USB は，Debian Live Project の live-build (=> 4.0~) を用いて制作されました．
Debian GNU/Linux 8.x (Jessie)ベースで作られており，京都大学数学教室で設置している Linux 端末の環境を気軽に試せるようになっています
(幾つかのソフトウェア，例えば Maple や Mathematica は使えませんが)．

Live DVD/USB として使う
-----------------------

Debian Live を起動するにはメニューの「Live」を選択します．それぞれのメ
ニューは以下のようになっています．

* amd64:
  * Intel Pentium IV 以降，64bit モードで起動します．

* amd64 (fail-safe)
  * すべてのオプションを無効にして起動するモードです．うまく起動できない場
    合に試してみてください．

起動時のパラメータを追加するには, メニューの上で TAB キーを押して追加します．

DVD の差分を USB メモリに保存する
---------------------------------

Debian Live は，起動時に「persistence」というラベル名の ext2/3/4パーティ
ションをみつけると，自動的にマウントし DVD の差分を保存します．DVD から
起動して作業した後，作業内容を保存したい場合には，ラベルをつけた USB メ
モリを用意して下さい．

よくある質問
-------------

* Q. ネットワークに接続するには?
* A. network-manager を使用します．
  * 右上のネットワークのアイコンをクリックして設定して下さい．

* Q. ログイン画面に戻ってしまいました/ロックされてしまいました．
* A. ユーザー名とパスワードは以下のとおりです．

  > ユーザー名: user
  > パスワード: live

* Q. 日本語入力はどうするの?
* A. uim-anthy or uim-mozc を入れてあります．

* Q. root 権限になるには，どうすればいいですか?
* A. sudo を使って下さい．

* Q. キーボードが英語(日本語)キーボード配列になっている
* A. lightdm のログイン画面で日本語(英語)キーボードを選択してください．

Debian Live のカスタマイズについて
-----------------------------------

この DVD/USB のイメージを作成するためのレシピは github で公開しています．
カスタマイズをおこなうには Debian GNU/Linux 上で作業をする必要があります
が，Live DVD 上からもカスタマイズは可能ですので，興味のある方はチャレン
ジしてみてください．

カスタマイズには 10GB 程度の保存領域が必要になるので，USB 接続 HDD など
を用意して保存領域を確保する必要があります．

以下のコマンドによりビルドすることができます．

 $ apt-get install live-build live-config 
 $ git clone git://github.com/kusm/live.git
 $ cd live
 $ make

live-build の設定については, Debian Live のサイトを見るのが一番です．
日本語の資料では，関西 Debian 勉強会の資料があるのでそれを参考にすると
よいでしょう．

関西 Debian 勉強会  資料
http://tokyodebian.alioth.debian.org/pdf/debianmeetingresume200906-kansai.pdf

DebianLive - Debian Wiki (英語)
http://wiki.debian.org/DebianLive

Debian Live Manual (英語)
http://live.debian.org/live-manual/html/

どんな環境なの?
===============

`config/package-lists/' にあるファイルに書かれているパッケージ(およびこれらの依存パッケージ)が導入されています．
簡単に言えば「日本語MATE」デスクトップ環境に，TeX と数学関連ソフトウェア(R, GeoGebra, Coq, maxima, macaulay2 etc.) を追加した環境です．
数学関連のソフトウェアはもっと増やしたいので，是非リクエストを下さい．

MathLibre という，もっと有名で完成度高いのあるのに，なんで新しい環境作っているの?
=================================================================================

端的に言えば，「Desktop 環境が違うから」です．実の所，それ以外には理由が無いかもしれません(ですけれど，ホラ，環境変わると嫌な人って多いですよね)．配布用に「DVD に収める」必要が無いので，サイズ制限に関しては特に何も考えていません．

デフォルト設定からの点
======================

...to be written ...
