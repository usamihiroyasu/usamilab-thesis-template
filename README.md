# 宇佐美研究室 卒業論文・修士論文テンプレート

Version 2.0.0

公開状態：`PUBLISHED_WITH_KNOWN_OVERLEAF_FREE_PLAN_LIMIT`

宇佐美研究室で，卒業論文，修士論文，およびそれぞれの提出用アブストラクトを作成するためのLuaLaTeXテンプレートです．卒業論文アブストラクトは1ページ，修士論文アブストラクトは2ページに固定しています．ポスター，スライド，学会原稿等は対象としていません．

本テンプレートは研究室の執筆支援資料であり，中部大学，学部，研究科または専攻の公式様式ではありません．提出時点の要領と指導教員の指示を優先してください．

## 配布物

| 区分 | Overleaf | Source ZIP | 記入例PDF |
|---|---|---|---|
| 卒業論文・1ページアブスト | [read-onlyプロジェクトをコピー](https://ja.overleaf.com/read/wjfdwtkmmssf#e2b65e) | [Version 2.0.0 ZIP](https://github.com/usamihiroyasu/usamilab-thesis-template/releases/download/v2.0.0/usamilab-bachelor-thesis-template-v2.0.0.zip) | [論文本体](previews/bachelor-thesis-filled-example.pdf)／[アブスト](previews/bachelor-abstract-1page-filled-example.pdf) |
| 修士論文・2ページアブスト | [read-onlyプロジェクトをコピー](https://ja.overleaf.com/read/qcsynfyrmycw#26cab2) | [Version 2.0.0 ZIP](https://github.com/usamihiroyasu/usamilab-thesis-template/releases/download/v2.0.0/usamilab-master-thesis-template-v2.0.0.zip) | [論文本体](previews/master-thesis-filled-example.pdf)／[アブスト](previews/master-abstract-2page-filled-example.pdf) |

- [GitHub Release v2.0.0](https://github.com/usamihiroyasu/usamilab-thesis-template/releases/tag/v2.0.0)
- [宇佐美研究室 資料](https://usamilab.org/resources/)

卒業論文用と修士論文用は独立しています．一つのプロジェクト内で学位区分を切り替える方式ではありません．

## Overleafで使う

1. 上表のread-only共有リンクを開き，`Menu`から`Copy Project`（プロジェクトをコピー）を選ぶ．共有元は編集せず，自分のアカウントへ作成されたコピーを編集する．
2. `Settings`でCompilerを`LuaLaTeX`，TeX Liveを`2025`以降に設定する．
3. 論文本体を作るときはMain documentを`main.tex`，アブストラクトだけを作るときは`abstract.tex`にする．
4. 各ディレクトリの`README.md`に従って`metadata.tex`と本文ファイルを編集し，`Recompile from scratch`で最終確認する．

修士論文では，図目次と表目次を`metadata.tex`から個別にON／OFFできます．卒業論文では両方とも固定OFFです．

Overleaf無料プランでは，両テンプレートの`main.tex`と`abstract.tex`が，LuaTeX-jaの初回フォントキャッシュ生成中にコンパイル時間上限へ達する場合があります．2026-07-29の実機確認では，4文書ともタイムアウト画面のErrorsは0件でした．同一ソースはTeX Live 2025のローカル環境でクリーンビルド済みです．時間上限に達する場合は，次のローカル手順を使用してください．

## ローカルで使う

TeX Live 2025以降，LuaLaTeX，Biberおよびlatexmkを使用します．

```bash
git clone https://github.com/usamihiroyasu/usamilab-thesis-template.git
cd usamilab-thesis-template/bachelor  # 修士論文は master
latexmk main.tex
latexmk abstract.tex
```

生成物を消して再構築する場合は`latexmk -C`を実行します．高解像度画像が多い場合，Overleafの容量または処理時間の制約に達する場合は，ReleaseのSource ZIPまたはこのリポジトリを取得してローカルでビルドしてください．DICOM，NIfTI，動画，データセット，モデル重み，実験出力一式はOverleafや本リポジトリへ置かず，掲載に必要な最終図だけを管理対象にします．

## 参考文献番号

論文本体とアブストラクトは，別々の`refsection`で採番します．一方へ引用を追加しても，もう一方の番号は変わりません．卒業論文の埋込みアブストと単独アブストは同じ本文を使うため，引用順と番号が一致します．修士論文本体と独立アブストは別文書なので，同じ文献でも番号が異なる場合があります．

章ファイルやアブスト本文へ`\printbibliography`または`\nocite`を追加しないでください．参考文献一覧は`main.tex`と`abstract.tex`がそれぞれ1回だけ出力します．

## 生成AI等を利用した場合

生成AI等を利用した場合だけ，`ai-usage.tex`へサービス名，モデル，利用期間，用途，入力情報の範囲，出力の検証方法および著者の最終責任を，実際の利用記録に基づいて記載します．未使用の場合はコメントだけの状態を維持します．AIをデータ処理，分析，推論または評価器として研究方法へ組み込んだ場合は，申告だけでなく，方法章または実験章にも再現可能な条件と人手検証を記載してください．

記入例は「［架空の記入例・提出不可］」です．氏名，研究内容，数値，研究業績，謝辞およびAI利用状況を，実際の内容へ置き換えてください．研究業績は架空ですが，参考文献例はNeurIPS，CVPR，MICCAI等の実在文献です．

## 検証

Version 2.0.0は，TeX Live 2025で論文本体と独立アブストのクリーンビルド，ページ数，引用分離，任意のAI利用申告，ZIP再展開およびPDF描画を検証しています．卒業論文アブストは1ページ，修士論文アブストは2ページです．詳細は[検証報告](docs/VALIDATION_REPORT.md)を参照してください．

Overleafでは，卒業論文用と修士論文用を独立したプロジェクトとしてアップロードし，LuaLaTeX，TeX Live 2025へ設定して閲覧リンクを公開しました．無料プランでは4文書とも上記の時間上限へ達したため，Overleaf上の生成PDFではなく，同一ソースのローカル検証結果を正式なビルド証跡としています．

`SHA256SUMS`には，GitHub Releaseで配布する2つのSource ZIPと，`previews/`の記入例PDF 4点のSHA-256を記録しています．

## ライセンスと来歴

LaTeXソースはLaTeX Project Public License 1.3c以降，記入例と文書は原則としてCreative Commons Attribution 4.0 Internationalです．第三者素材には，`examples/figures/ATTRIBUTION.md`に記載した個別条件を優先します．配布範囲の詳細は[LICENSE.md](LICENSE.md)，各テンプレートの来歴は`bachelor/NOTICE.md`と`master/NOTICE.md`を参照してください．

本テンプレートの再構成にあたり，卒業論文テンプレートをご提供いただいた奥居先生に感謝します．提供された旧テンプレート内の記載によれば，そのクラスファイルは石原進先生作成のものを基にしていました．本版は旧ファイルを収録せず，宇佐美研究室がLuaLaTeX向けに再実装しています．氏名の記載は，両先生による現行版の監修，承認または内容保証を意味しません．
