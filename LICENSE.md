# ライセンス範囲

Version 2.0.0，2026-07-29

この文書は，宇佐美研究室 卒業論文・修士論文テンプレートVersion 2.0.0の配布対象と，ライセンスの適用範囲を整理するものです．公開状態は`PUBLISHED_WITH_KNOWN_OVERLEAF_FREE_PLAN_LIMIT`です．

## 1．LaTeXソース

Version 2.0.0の最終配布ZIPへ収録する，宇佐美研究室テンプレートとして新規に作成または再実装したLaTeXソースには，LaTeX Project Public License 1.3c以降を適用します．ただし，`examples/`以下の記入例は第2節および第3節のライセンスを適用します．LPPLの対象には，次を含みます．

- `examples/`以下を除く`.tex`ファイル
- `.cls`ファイル
- `.sty`ファイル
- ビルド設定と，LaTeXソースに直接付随する設定ファイル

上記ファイル内のソースコメントと利用者向け説明も，ファイルを構成するLaTeXソースの一部としてLPPLの対象とします．

各配布ZIPには，適用する`LICENSE`と来歴を示す`NOTICE.md`を収録します．本ファイルは，卒業論文用と修士論文用をまとめた公開ページ側で配布範囲を示します．

## 2．記入例とプレビュー

Version 2.0.0用に新規作成した次の内容には，Creative Commons Attribution 4.0 Internationalを適用します．ただし，`examples/figures/ATTRIBUTION.md`に別のライセンスを明記した画像または埋込み素材には，その個別条件を優先します．

- `examples/`以下の記入例，架空の研究業績および説明文
- 各配布ZIPの`README.md`，`WRITING_GUIDE.md`，`CHECKLIST.md`，`NOTICE.md`，`CHANGELOG.md`および`figures/README.md`
- 本リリースのルートにある`README.md`，`PUBLICATION_CHECKLIST.md`，`VALIDATION_REPORT.md`および`LICENSE.md`
- Version 2.0.0の記入例から最終生成するプレビューPDF

通常の`.tex`，`.cls`および`.sty`内にある説明コメントは本節の「説明文」には含めず，第1節のLPPLを適用します．

プレビューPDFは，Version 2.0.0の最終ソースから再生成し，`VALIDATION_REPORT.md`へSHA-256を記録したものだけを公開対象とします．

表示例：

```text
Usami Laboratory Bachelor’s and Master’s Thesis Templates v2.0.0
© 2026 Usami Laboratory
Example content licensed under CC BY 4.0
LaTeX source licensed under LPPL 1.3c or later
```

## 3．同梱する記入例図版

学部用`examples/figures/`には，本テンプレート用に画像生成モデルで作成した実写調の合成人物画像と，それらを組み込んだ模式図を収録します．これらはCC BY 4.0です．実在の被験者，実験または研究成果を示しません．

修士用`examples/figures/ct-abdomen-cc0.png`は，Wikimedia CommonsでCC0 1.0として公開された腹部CT画像です．`ct-diffusion-pipeline.svg`，`ct-diffusion-pipeline.pdf`，`ct-diffusion-abstract.svg`および`ct-diffusion-abstract.pdf`の図構成はCC BY 4.0ですが，埋め込まれた元CT画像にはCC0 1.0が適用されます．

各ファイルの生成由来または原典，URL，ライセンス，取得日およびSHA-256は，各配布物の`examples/figures/ATTRIBUTION.md`に記録します．`examples/`に対する包括的なCC BY 4.0表示は，このファイル単位の条件を上書きしません．

## 4．ライセンス対象外

次の資料は，Version 2.0.0のライセンス対象外です．また，最終配布物へ収録しません．

- 正本として参照した提出版PDF群
- 対応する過去のLaTeX履歴
- 奥居先生または石原先生のテンプレートに由来する旧クラス／スタイル
- 提出者が作成した文章，図，表，写真，実験結果
- 大学または研究室のロゴ，商標，公式様式
- 第3節および各`examples/figures/ATTRIBUTION.md`で収録条件を明記したものを除く，第三者が権利を持つ画像，フォント，ソフトウェア
- DICOM，NIfTI，動画，データセット，学習済み重み，チェックポイント
- 個人情報，匿名化前の研究データ，アクセス制限資料

提出版と過去ソースは，構造と外観を確認するための内部参照資料です．それらの権利を，本テンプレートのライセンスによって許諾するものではありません．

## 5．実在文献と名称

記入例に掲載する実在文献の書誌情報，論文名，会議名，著者名，DOI等は，出典を識別するための事実情報です．文献本文，図表，ロゴ，商標に対して，本テンプレートのライセンスを適用しません．

NeurIPS，CVPR，MICCAI，MIRU，情報処理学会等の名称は，各権利者に帰属します．名称の掲載は，提携，承認，後援を意味しません．

## 6．架空の記入例

「情報太郎」の氏名，題目，研究業績等は記入方法を示すための例です．架空の研究業績には，「［架空の記入例・提出不可］」を表示します．利用者は，自分の提出原稿でこれらを実際の情報へ置き換える必要があります．

## 7．大学・研究室の承認

本テンプレートは，卒業論文と修士論文の作成を支援する研究室向け資料です．大学の公式様式，学部・研究科による承認物，または提出要件そのものを置き換えるものではありません．年度ごとの提出要領と指導教員の指示が優先されます．

## 8．再配布時の条件

再配布または改変版の公開時には，次を維持してください．

- LaTeXソースに対するLPPLの表示
- 記入例に対するCC BY 4.0の表示
- `examples/figures/ATTRIBUTION.md`に記録した個別のライセンス，出典および帰属表示
- 原著作者と改変者の区別
- 版番号と変更履歴
- 本ファイルに記載した対象外資料の不収録
- 大学または研究室の公式承認を示すとの誤認を避ける表示

Version 2.0.0の最終配布物の内容と本ライセンス範囲が一致していることは，公開前の検証記録で確認済みです．
