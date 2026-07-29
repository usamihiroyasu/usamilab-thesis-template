\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{usamilab-thesis}[2026/07/29 v2.0.0 Usami Lab thesis]

% 旧テンプレートのコードは転記せず，提出済みPDFの版面を
% TeX Live標準のLuaLaTeX用クラス上で再実装する．
\LoadClass[a4paper,12pt,oneside,openany]{ltjsbook}

\RequirePackage[ipaex]{luatexja-preset}
\RequirePackage{geometry}
\geometry{
  top=30mm,
  bottom=30mm,
  left=25mm,
  right=25mm,
  headheight=16pt,
  headsep=5mm,
  footskip=10mm
}
\RequirePackage{graphicx}
\RequirePackage{xcolor}
\RequirePackage{booktabs}
\RequirePackage{tabularx}
\RequirePackage{capt-of}
\RequirePackage{amsmath,amssymb,mathtools,bm}
\RequirePackage{siunitx}
\RequirePackage{listings}
\RequirePackage{fancyhdr}
\RequirePackage{usamilab-common}

\setlength{\parindent}{1em}
\setlength{\parskip}{0pt}
\renewcommand{\baselinestretch}{1.28}
\setcounter{tocdepth}{2}

\renewcommand{\contentsname}{目　次}
\renewcommand{\listfigurename}{図　目　次}
\renewcommand{\listtablename}{表　目　次}

% 目次だけ行間をわずかに詰め，ページ下端で項目が欠けることを防ぐ．
% 本文，図目次，表目次の行間には影響しない．
\newcommand{\MakeThesisTableOfContents}{%
  \begingroup
    \renewcommand{\baselinestretch}{1.12}\normalsize
    \tableofcontents
  \endgroup}

% ltjsbook既定の章間隔では，項目数によって章見出しがページ下端へ
% 孤立するため，目次内の章間隔だけを控えめに詰める．
\makeatletter
\renewcommand*{\l@chapter}[2]{%
  \ifnum \c@tocdepth >\m@ne
    \addpenalty{-\@highpenalty}%
    \addvspace{0.5em \@plus\jsc@mpt}%
    \begingroup
      \parindent\z@
      \rightskip\@tocrmarg
      \parfillskip-\rightskip
      \leavevmode\headfont
      \setlength\@lnumwidth{\jsc@tocl@width}%
      \advance\@lnumwidth 2.683\zw
      \advance\leftskip\@lnumwidth
      \hskip-\leftskip
      #1\nobreak\hfil\nobreak
      \hbox to\@pnumwidth{\hss#2}\par
      \penalty\@highpenalty
    \endgroup
  \fi}
\makeatother

\definecolor{usamilabblue}{HTML}{243B5A}
\lstset{
  basicstyle=\ttfamily\small,
  frame=single,
  breaklines=true,
  numbers=left,
  numberstyle=\scriptsize\color{gray},
  keywordstyle=\bfseries\color{usamilabblue},
  commentstyle=\itshape\color{gray},
  showstringspaces=false
}

\pagestyle{fancy}
\fancyhf{}
\fancyhead[R]{\small\bfseries\nouppercase{\rightmark}}
\fancyfoot[R]{\small\itshape\thepage}
\renewcommand{\headrulewidth}{0.4pt}
\renewcommand{\footrulewidth}{0pt}
\renewcommand{\chaptermark}[1]{\markboth{第\thechapter 章\quad#1}{}}
\renewcommand{\sectionmark}[1]{\markright{\thesection\quad#1}}
\fancypagestyle{plain}{%
  \fancyhf{}%
  \fancyfoot[R]{\small\itshape\thepage}%
  \renewcommand{\headrulewidth}{0pt}%
}
\fancypagestyle{plainhead}{%
  \fancyhf{}%
  \fancyfoot[R]{\small\itshape\thepage}%
  \renewcommand{\headrulewidth}{0pt}%
}
\fancypagestyle{plainfoot}{%
  \fancyhf{}%
  \fancyfoot[R]{\small\itshape\thepage}%
  \renewcommand{\headrulewidth}{0pt}%
}

% 提出版の章扉に合わせ，上下を近接した二重罫線とする．
% 目次，謝辞，参考文献等の番号なし見出しには罫線を付けない．
\makeatletter
\long\def\@makecaption#1#2{%
  \vskip\abovecaptionskip
  \sbox\@tempboxa{\small #1: #2}%
  \ifdim \wd\@tempboxa>\hsize
    {\small #1: #2\par}%
  \else
    \global\@minipagefalse
    \hb@xt@\hsize{\hfil\box\@tempboxa\hfil}%
  \fi
  \vskip\belowcaptionskip
}
\renewcommand{\@makechapterhead}[1]{\hbox{}%
  % LuaLaTeX-jaの行箱差を補正し，提出版の上端位置へ合わせる．
  \vskip -6pt
  \hrule height 1pt\relax
  \vskip 1pt
  \hrule height 2pt\relax
  \vskip \dimexpr3\baselineskip-14pt\relax
  {\parindent\z@\raggedright\normalfont
    \ifnum\c@secnumdepth>\m@ne
      \huge\bfseries
      \setlength\@tempdima{\linewidth}%
      \if@mainmatter
        \setbox\z@\hbox{\@chapapp\thechapter\@chappos\quad}%
        \addtolength\@tempdima{-\wd\z@}%
        \unhbox\z@\nobreak
      \fi
      \vtop{\hsize\@tempdima #1\par}%
    \fi
  }%
  \vskip \dimexpr4\baselineskip-12pt\relax
  \hrule height 2pt\relax
  \vskip 1pt
  \hrule height 1pt\relax
  \vskip 2.5\baselineskip
}
\renewcommand{\@makeschapterhead}[1]{\hbox{}%
  % 目次・謝辞・参考文献は提出版と同じ簡潔な位置へ置く．
  \vskip \dimexpr2\baselineskip-25pt\relax
  {\parindent\z@\raggedright\normalfont\huge\bfseries
    \setlength\@tempdima{\linewidth}%
    \vtop{\hsize\@tempdima #1\par}}%
  \vskip \dimexpr3\baselineskip-25pt\relax
}
\makeatother

\newcommand{\MakeThesisTitle}{%
  \begin{titlepage}
    \thispagestyle{empty}
    \centering
    \vspace*{13mm}
    {\LARGE \UsamiThesisYear 年度\UsamiThesisDocumentName\par}
    \vspace{20mm}
    \setlength{\fboxsep}{2mm}%
    \noindent\fbox{%
      \parbox[c][\dimexpr24mm-2\fboxsep-2\fboxrule\relax][c]%
        {\dimexpr\textwidth-2\fboxsep-2\fboxrule\relax}{%
        \centering\LARGE\bfseries \UsamiThesisTitle\par}}%
    \vspace{45mm}
    {\large \UsamiAffiliation\par}
    \vspace{4mm}
    {\Large\bfseries \UsamiStudentID\quad \UsamiStudentName\par}
    \ifUsamiMaster\else
      \vspace{7mm}
      {\large \UsamiSubmissionDate\par}
    \fi
    \vfill
    \begin{flushright}
      {\large \UsamiSupervisorLabel　\UsamiSupervisor\par}
    \end{flushright}
    \vspace{15mm}
  \end{titlepage}
}

\newcommand{\MakeThesisColophon}{%
  \clearpage
  \thispagestyle{empty}
  \begingroup
    \null\vfill
    \begin{flushright}
      \rule{0.86\textwidth}{0.8pt}\par
      \vspace{2mm}
      \parbox{0.86\textwidth}{%
        \raggedleft
        {\large\bfseries \UsamiThesisTitle\par}
        \vspace{1.5mm}
        {\large \UsamiStudentID\quad \UsamiStudentName\par}
        \vspace{1mm}
        （\UsamiColophonAffiliationText）\par
        \vspace{4mm}
        \UsamiSubmissionDate\par
      }
      \vspace{2mm}
      \rule{0.86\textwidth}{0.8pt}\par
    \end{flushright}
    \vspace*{8mm}
  \endgroup
}

\makeatletter
\AtBeginDocument{%
  \@ifpackageloaded{hyperref}{%
    \pdfstringdefDisableCommands{\def\\{ }}%
    \hypersetup{
      unicode=true,
      colorlinks=true,
      linkcolor=black,
      citecolor=black,
      urlcolor=usamilabblue,
      pdfborder={0 0 0},
      pdftitle={\UsamiThesisTitle},
      pdfauthor={\UsamiStudentName},
      pdfsubject={\UsamiLaboratory \UsamiThesisDocumentName}
    }%
  }{}%
}
\makeatother
