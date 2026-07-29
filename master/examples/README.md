# 内容入り記入例（修士・2頁）

以下は，配置と書き方を確認するための架空例です．可視注記はすべて「［架空の記入例・提出不可］」です．いずれも通常のビルドには読み込まれません．次のパスはすべてプロジェクトルートを基準にしています．

| 記入例 | 移す先 |
|---|---|
| `examples/metadata-example.tex` | `metadata.tex` |
| `examples/abstract-example.tex` | `content/abstract.tex` |
| `examples/achievements-example.tex` | `content/achievements.tex` |
| `examples/ai-usage-example.tex` | `ai-usage.tex` |
| `examples/acknowledgements-example.tex` | `acknowledgements.tex` |
| `examples/chapters/01-introduction-example.tex` | `chapters/01-introduction.tex` |
| `examples/chapters/02-background-example.tex` | `chapters/02-background.tex` |
| `examples/chapters/03-problem-example.tex` | `chapters/03-problem.tex` |
| `examples/chapters/04-method-example.tex` | `chapters/04-method.tex` |
| `examples/chapters/05-experiments-example.tex` | `chapters/05-experiments.tex` |
| `examples/chapters/06-conclusion-example.tex` | `chapters/06-conclusion.tex` |

## 安全な使い方

1. 試す前にOverleafプロジェクトを複製するか，Source ZIPをダウンロードして退避する．
2. 通常ファイルと対応する例を，ブラウザの別タブまたは別ウィンドウで並べて確認し，必要なLaTeXの構造だけを通常ファイルへ移す．
3. `examples/`のファイル自体はMain documentに指定せず，通常原稿から`\input`しない．
4. 移した直後に，氏名，学籍番号，研究内容，数値，図表，結果および研究業績を自分の内容へ置き換える．
5. 全文検索で「架空の記入例」「情報太郎」「20XX」「XX」を検索する．`examples/`，README，WRITING_GUIDE，CHECKLIST，CHANGELOG，LICENSE，NOTICEおよびクラス／スタイル内の定義にある説明用の一致は対象外とする．`metadata.tex`，`content/`，`chapters/`，`ai-usage.tex`，`acknowledgements.tex`，`appendix.tex`および生成PDFに例示内容が残っていないことを確認してから`CHECKLIST.md`を実施する．

`abstract-example.tex`は必要項目，LaTeX記法および根拠密度を示す高密度な例であり，同じ文章量を要求するものではありません．読みやすさを優先し，2頁は本文の削減と図表整理で満たし，余白，文字サイズまたはスタイルを変更して押し込みません．`metadata-example.tex`先頭の警告はPDFへ表示されないため，値を一括転記せず，全項目を実際の書誌情報へ置き換えてください．

記載された研究，データ，数値，結果，人物はすべて架空であり，提出物へ転用できません．参考文献は実在しますが，必ず原論文を読んでから`references.bib`と原稿へ採用してください．`abstract-example.tex`は節見出し，本文，図表，数式および`\cite`を含みますが，参考文献一覧を出力しません．独立アブストラクトでは`abstract.tex`が一覧を1回だけ出力します．修士論文本体はアブストラクトを読み込まず，本文で引用した文献だけを`main.tex`が巻末へ出力します．例を移した後も，`\printbibliography`と`\nocite`を`content/abstract.tex`へ追加しないでください．

`ai-usage-example.tex`は，生成AI等を実際に利用した学生が，必要な構造と文章密度を確認するための架空例です．利用していない場合は例を移さず，`ai-usage.tex`をコメントだけのままにします．利用した場合は，架空のサービス，モデル，期間，用途および確認内容をすべて自身の記録へ置き換え，可視注記を削除します．この申告は修士論文本体の謝辞前だけに出力し，独立2頁アブストラクトへは組み込みません．生成AI等が研究方法または評価へ関与した場合は，申告に加えて方法・実験章へ条件と限界を記載します．提出時点の大学・研究科・専攻の規則と指導教員の指示を優先してください．

記入例で引用する[宇佐美らの論文](https://arxiv.org/abs/2606.15610)は，AI利用の範囲と人間による検証責任を分けて示す申告形式の参考例です．医用画像処理の技術的な先行研究として機械的に引用するものではありません．実際にこの申告形式を参考にした場合，または自身の研究内容と論旨上の関係がある場合だけ，原論文を読んで引用してください．AI利用規則の確認先として，[中部大学「生成AI利用ガイドライン（第2報）」](https://www.chubu.ac.jp/news/24270/)と[IEEEの著者向け指針](https://open.ieee.org/author-guidelines-for-artificial-intelligence-ai-generated-text/)も参照してください．

`examples/figures/`には，再配布可能なCC0腹部CT画像，編集可能なSVG原稿，LuaLaTeXから直接読み込むPDF版を収録しています．CT画像の原典，ライセンス，取得日およびSHA-256は`examples/figures/ATTRIBUTION.md`に記録しています．図へ重畳した臓器ラベル，生成過程，モデル出力および数値はすべて架空です．記入例を利用した提出原稿からは，「情報太郎」，「［架空の記入例・提出不可］」，架空の症例数・数値・結果をすべて除き，自身の研究内容へ置き換えてください．

このディレクトリの記入例は原則としてCreative Commons Attribution 4.0 International（CC BY 4.0）で提供します．ただし，`ct-abdomen-cc0.png`と各模式図に埋め込まれた同一CT画像はCC0 1.0です．ファイル単位の条件は`examples/figures/ATTRIBUTION.md`に従い，この包括的なCC BY 4.0表示で上書きしません．
https://creativecommons.org/licenses/by/4.0/
