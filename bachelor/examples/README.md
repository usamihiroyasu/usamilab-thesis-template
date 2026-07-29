# 内容入り記入例

このディレクトリは，アブストラクト，metadata，研究業績，図，表，式および本文参照の書き方を示す架空例です．いずれも通常のビルドには読み込まれません．次のパスはすべてプロジェクトルートを基準にしています．

| 記入例 | 対応する通常ファイル | 確認できる内容 |
|---|---|---|
| `examples/abstract-example.tex` | `content/abstract.tex` | 1頁アブストラクト，図表，数式，引用 |
| `examples/metadata-example.tex` | `metadata.tex` | 題目，氏名，学籍番号等の書誌情報 |
| `examples/achievements-example.tex` | `content/achievements.tex` | 学部生向けの研究業績欄 |
| `examples/acknowledgements-example.tex` | `acknowledgements.tex` | 謝辞の構成と簡潔な記載例 |
| `examples/ai-usage-example.tex` | `ai-usage.tex` | 生成AI等の利用範囲，検証および著者責任の申告例 |
| `examples/chapters/01-introduction-example.tex` | `chapters/01-introduction.tex` | 背景，目的，貢献，論文構成 |
| `examples/chapters/02-background-example.tex` | `chapters/02-background.tex` | 技術的背景，関連研究，位置づけ |
| `examples/chapters/03-problem-example.tex` | `chapters/03-problem.tex` | 入出力，仮定，記号，評価課題 |
| `examples/chapters/04-method-example.tex` | `chapters/04-method.tex` | 提案手法，図，数式，本文参照 |
| `examples/chapters/05-experiments-example.tex` | `chapters/05-experiments.tex` | 実験条件，表，本文参照，考察 |
| `examples/chapters/06-conclusion-example.tex` | `chapters/06-conclusion.tex` | 結論，限界，今後の課題 |

## 安全な使い方

1. 試す前にOverleafプロジェクトを複製するか，Source ZIPをダウンロードして退避する．
2. 通常ファイルと対応する例を，ブラウザの別タブまたは別ウィンドウで並べて確認し，必要なLaTeXの構造だけを通常ファイルへ移す．
3. `examples/`のファイル自体はMain documentに指定せず，通常原稿から`\input`しない．
4. 移した直後に，氏名，学籍番号，研究内容，数値，図表，結果および研究業績を自分の内容へ置き換える．
5. 全文検索で「架空の記入例」「情報太郎」「20XX」「XX」を検索する．`examples/`，README，WRITING_GUIDE，CHECKLIST，CHANGELOG，LICENSE，NOTICEおよびクラス／スタイル内の定義にある説明用の一致は対象外とする．`metadata.tex`，`content/`，`chapters/`，`ai-usage.tex`，`acknowledgements.tex`，`appendix.tex`および生成PDFに例示内容が残っていないことを確認してから`CHECKLIST.md`を実施する．

可視注記は「［架空の記入例・提出不可］」へ統一しています．提出原稿では例を丸ごと転用せず，構成，文章の役割およびLaTeXの書き方だけを参考にしてください．

記載された研究，データ，数値，結果，人物，研究業績およびAI利用状況はすべて架空であり，提出物へ転用できません．ただし，`references.bib`に収録したCVPR，NeurIPSおよびarXivの論文は実在します．引用する前に原論文を読み，自分の記述を文献内容と照合してください．

`abstract-example.tex`には文章と`\cite`だけがあり，参考文献一覧の出力命令はありません．独立アブストラクトでは`abstract.tex`が引用文献を末尾へ1回出力します．卒業論文の`main.tex`は，埋込みアブストラクトの引用文献をアブスト内へ，本文で引用した文献を巻末へ，それぞれ1回出力します．通常ファイル側へ`\printbibliography`や`\nocite`を追加しないでください．

`ai-usage-example.tex`は，生成AI等を利用した場合の申告構成だけを示します．利用していない場合は`ai-usage.tex`をコメントだけのままにし，例を転記しません．利用した場合は，提出時点の大学・部局・指導教員の規則を確認し，サービス名・モデル名・版または利用期間，用途，入力情報，検証方法および著者責任を実際の記録へ置き換えます．申告は卒業論文本文の謝辞前にだけ置き，独立アブストラクトには含めません．生成AI等が研究方法または評価へ関与した場合は，方法・実験の章にも再現可能な条件を記載します．

例中の宇佐美ら\cite{usami2026darkcurrent}は，AI利用の申告形式を説明する参考例として引用しています．姿勢推定の技術的な関連研究として引用しているわけではありません．自分の論文でこの文献を引用する場合も，実際の記述との対応を確認してください．

`examples/figures/`には，実写調の合成入力画像，連続動作の合成画像，編集可能なSVG原稿，LuaLaTeXから直接読み込むPDF版を収録しています．図中の人物は架空であり，実在する被験者や研究成果を示しません．生成由来，ライセンスおよびSHA-256は`examples/figures/ATTRIBUTION.md`を参照してください．

このディレクトリの記入例はCreative Commons Attribution 4.0 International（CC BY 4.0）で提供します．図版の生成由来とファイル単位の条件は`examples/figures/ATTRIBUTION.md`に従います．
https://creativecommons.org/licenses/by/4.0/
