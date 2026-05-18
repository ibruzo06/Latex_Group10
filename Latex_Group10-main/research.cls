%% research.cls — Custom class for undergraduate research paper
%% XeLaTeX compatible — Times New Roman via fontspec

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{research}[2025/01/01 Undergraduate Research Paper Class]

%% Base class
\LoadClass[12pt,letterpaper]{article}

%% ── Packages ──────────────────────────────────────────────────────────────
\RequirePackage[top=1in,bottom=1in,left=1in,right=1in]{geometry}
\RequirePackage{setspace}

%% fontspec — XeLaTeX native font loader (must come early)
\RequirePackage{fontspec}
\setmainfont{Times New Roman}
\setsansfont{Arial}
\setmonofont{Courier New}

\RequirePackage{titlesec}
\RequirePackage{titletoc}
\RequirePackage{fancyhdr}
\RequirePackage{graphicx}
\RequirePackage{booktabs}
\RequirePackage{longtable}
\RequirePackage{array}
\RequirePackage{tabularx}
\RequirePackage{multirow}
\RequirePackage{caption}
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{enumitem}
\RequirePackage{url}
\RequirePackage{ragged2e}
\RequirePackage{indentfirst}
\RequirePackage{xcolor}
\RequirePackage{float}
\RequirePackage{placeins}

%% natbib BEFORE hyperref — numeric [1] [2] style
\RequirePackage[numbers,sort&compress]{natbib}

%% hyperref after natbib
\RequirePackage{hyperref}
\RequirePackage{microtype}

%% ── Line Spacing ──────────────────────────────────────────────────────────
\doublespacing

%% ── Paragraph formatting ──────────────────────────────────────────────────
\setlength{\parindent}{0.5in}
\setlength{\parskip}{0pt}

%% ── Section Headings ──────────────────────────────────────────────────────
\titleformat{\section}
  {\normalfont\fontsize{12}{14}\bfseries}{\thesection}{1em}{}

\titleformat{\subsection}
  {\normalfont\fontsize{12}{14}\bfseries}{\thesubsection}{1em}{}

\titleformat{\subsubsection}
  {\normalfont\fontsize{12}{14}\bfseries\itshape}{\thesubsubsection}{1em}{}

\titlespacing*{\section}{0pt}{12pt}{6pt}
\titlespacing*{\subsection}{0pt}{10pt}{4pt}
\titlespacing*{\subsubsection}{0pt}{8pt}{4pt}

%% ── Page Style ────────────────────────────────────────────────────────────
\pagestyle{plain}

%% ── Hyperref ──────────────────────────────────────────────────────────────
\hypersetup{
  colorlinks=true,
  linkcolor=black,
  citecolor=black,
  urlcolor=blue,
  bookmarksnumbered=true,
  pdfborder={0 0 0}
}

%% ── Captions ──────────────────────────────────────────────────────────────
\captionsetup{
  font=normalsize,
  labelfont=bf,
  justification=centering,
  singlelinecheck=false
}

%% ── Lists ─────────────────────────────────────────────────────────────────
\setlist[itemize]{leftmargin=0.5in, topsep=2pt, itemsep=1pt}
\setlist[enumerate]{leftmargin=0.5in, topsep=2pt, itemsep=1pt}

%% ── Title Page ────────────────────────────────────────────────────────────
%% \maketitlepage{title}{subtitle}{institution}{ignored}{authors}{year}{degree}
\newcommand{\maketitlepage}[7]{%
  \begin{titlepage}
    \begin{center}
      \vspace*{1in}
      {\large\bfseries #1\par}
      \vspace{1cm}
      {\normalsize #2\par}
      \vspace{1cm}
      {\normalsize Presented to the Faculty of\par #3\par}
      \vspace{1cm}
      {\normalsize In Partial Fulfillment of\par
        the Requirements for the Degree\par #7\par}
      \vspace{1.5cm}
      {\normalsize #5\par}
      \vspace{1.5cm}
      {\normalsize #6\par}
    \end{center}
  \end{titlepage}
}

%% ── Abstract ──────────────────────────────────────────────────────────────
\renewenvironment{abstract}{%
  \section*{Abstract}\addcontentsline{toc}{section}{Abstract}}{}

%% ── Equation numbering ────────────────────────────────────────────────────
\numberwithin{equation}{section}

\endinput