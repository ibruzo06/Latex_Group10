\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{research}[2025 Custom Research Class for BSIS Capstone]

\LoadClass[12pt,letterpaper]{report}

% ---------- Page geometry ----------
\RequirePackage{geometry}
\geometry{
  paperwidth=8.5in,
  paperheight=11in,
  left=1.5in,
  right=1in,
  top=1in,
  bottom=1in,
  headheight=14.5pt
}

% ---------- Fonts ----------
\RequirePackage{fontspec}
\setmainfont{Times New Roman}

% ---------- Line spacing ----------
\RequirePackage{setspace}
\onehalfspacing

% ---------- Headers / footers ----------
\RequirePackage{fancyhdr}
\pagestyle{fancy}
\fancyhf{}
\fancyhead[R]{\thepage}
\renewcommand{\headrulewidth}{0pt}
\fancyheadoffset{0pt}
\fancypagestyle{plain}{%
  \fancyhf{}%
  \fancyhead[R]{\thepage}%
  \renewcommand{\headrulewidth}{0pt}%
}

% ---------- Chapter / section formatting ----------
\RequirePackage{titlesec}
\titleformat{\chapter}[hang]
  {\normalfont\Large\bfseries\filcenter}
  {\thechapter}{1em}{\MakeUppercase}
\titlespacing*{\chapter}{0pt}{-50pt}{10pt}
\titleformat{\section}{\normalfont\large\bfseries}{\thesection}{1em}{}
\titleformat{\subsection}{\normalfont\normalsize\bfseries}{\thesubsection}{1em}{}

% ---------- TOC formatting ----------
\RequirePackage{tocloft}
\renewcommand{\cftchapfont}{\bfseries}
\renewcommand{\cftchappagefont}{\bfseries}
\setlength{\cftbeforechapskip}{6pt}

% Match List of Tables and List of Figures to TOC style
\renewcommand{\cfttoctitlefont}{\hfill\Large\bfseries\MakeUppercase}
\renewcommand{\cftaftertoctitle}{\hfill}
\renewcommand{\cftlottitlefont}{\hfill\Large\bfseries\MakeUppercase}
\renewcommand{\cftafterlottitle}{\hfill}
\renewcommand{\cftloftitlefont}{\hfill\Large\bfseries\MakeUppercase}
\renewcommand{\cftafterloftitle}{\hfill}

% Reduce spacing after the titles
\setlength{\cftbeforetoctitleskip}{0pt}
\setlength{\cftaftertoctitleskip}{12pt}
\setlength{\cftbeforelottitleskip}{0pt}
\setlength{\cftafterlottitleskip}{12pt}
\setlength{\cftbeforeloftitleskip}{0pt}
\setlength{\cftafterloftitleskip}{12pt}

% ---------- Paragraph formatting ----------
\setlength{\parskip}{0pt plus 1pt}
\setlength{\parindent}{0.5in}
\RequirePackage{indentfirst}

% ---------- Captions ----------
\RequirePackage{caption}
\captionsetup{font=small,labelfont=bf,labelsep=period}

% ---------- Graphics, math, tables, lists ----------
\RequirePackage{graphicx}
\graphicspath{{images/}}
\RequirePackage{amsmath}
\let\Bbbk\relax
\RequirePackage{amssymb}
\RequirePackage{booktabs}
\RequirePackage{array}
\RequirePackage{longtable}
\RequirePackage{float}
\RequirePackage{enumitem}

% ---------- URLs ----------
\RequirePackage{xurl}
\RequirePackage[hidelinks]{hyperref}

% ---------- Bibliography: IEEE style ----------
\RequirePackage[backend=biber,style=ieee,sorting=none]{biblatex}
\setlength{\bibhang}{0.5in}
\setlength{\bibitemsep}{6pt}
\renewcommand*{\bibfont}{\normalfont\normalsize}
\addbibresource{references.bib}

% ---------- TikZ ----------
\RequirePackage{tikz}
\usetikzlibrary{arrows.meta,positioning}

\endinput