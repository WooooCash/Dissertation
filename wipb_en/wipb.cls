%%
%% This is file `wipb.cls`.
%%
\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{wipb}[2009/07/31 v1.3 LaTeX document class (MZ)]

\DeclareOption*{%
	\PassOptionsToClass{\CurrentOption}{mbook}%
}
\ExecuteOptions{a4paper,12pt,oneside}
\ProcessOptions %\relax

\LoadClass[oneside,12pt]{mbook}
\RequirePackage[utf8]{inputenc}
\RequirePackage{graphicx}
\RequirePackage[colorlinks,plainpages=false,
 pdfpagelabels,
 naturalnames=true,
  pdftex]{hyperref}
\RequirePackage[tableposition=top]{caption}
\RequirePackage{listings}
\RequirePackage{multirow}
\RequirePackage[ruled]{algorithm2e}%algorytmy
\RequirePackage{tikz}
\RequirePackage{indentfirst}
\RequirePackage{t1enc}
\RequirePackage{times}

\pagestyle{headings}
\parindent=1cm
\linespread{1.5}

%definicje odstepow
\hoffset -1 in
\textwidth 15.5 cm
\voffset -1 in
\textheight 23.5 cm
\oddsidemargin = 3.5cm
\evensidemargin = 3.5cm
\topmargin = 1.5 cm

\def\katedra#1{\gdef\@katedra{#1}}
\def\typpracy#1{\gdef\@typpracy{#1}}
\def\temat#1{
\gdef\@temat{#1}
\title{#1}
}
\def\autor#1{\gdef\@autor{#1} \author{#1}}
\def\promotor#1{\gdef\@promotor{#1}}
\def\indeks#1{\gdef\@indeks{#1}}
\def\studia#1{\gdef\@studia{#1}}
\def\rokakademicki#1{\gdef\@rokakademicki{#1}}
\def\profil#1{\gdef\@profil{#1}}
\def\kierunekstudiow#1{\gdef\@kierunekstudiow{#1}}
\def\specjalnosc#1{\gdef\@specjalnosc{#1}}
\def\zakres#1{\gdef\@zakres{#1}}
\newcounter{@zak}

\newcommand{\mcolumns}[4]{
\multicolumn{#1}{#2}{\parbox{#3\textwidth}{#4}}
}

\newcommand{\mpbox}[1]{
\parbox{.3\textwidth}{\centering #1}
}

\newcommand{\biblioteka}[1]
{\pagebreak
\pagestyle{empty}
~\\ \vspace{2cm}
\begin{center}
{\Large    \textsc{Owiadczenie}}
\end{center}
\vspace{2cm}
Ja, \@autor, \ifthenelse{\equal{nie}{#1}}{nie wyrażam zgody}{wyrażam zgodę} na udostępnienie mojej pracy dyplomowej,  pt: ,,\@temat'' w Bibliotece Politechniki Białostockiej.
\vspace{2cm}
\begin{flushright}
\mpbox{...................................\\
\today
{\scriptsize \\[-1em] czytelny podpis}}\hspace{1cm}~
\end{flushright}
}

\def\clearheadinfo{\gdef\@autor{Brak autora}%
                  \gdef\@temat{Brak Tytu³u}%
                  \gdef\@institute{Brak Katedry}%
}

\renewenvironment{titlepage}{%
%%%%%%%%%strona tytulowa%%%%%%%%%%
    \cleardoublepage
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse\newpage
    \fi
    \thispagestyle{empty}%
  }%
  {\if@restonecol\twocolumn \else \newpage \fi}


\clearheadinfo
\renewcommand\maketitle{%
  \begin{titlepage}
    \linespread{1.0}
    \begin{center}
      {\Huge\textsc{Politechnika Białostocka}\par}
      \vspace{\stretch{.3}}
      {\LARGE\textsc{Wydział Informatyki}\par}
      \vspace{\stretch{.3}}
      %{\Large\textsc{Katedra \@katedra}\par}
      \vspace{\stretch{1}}
      {\LARGE\textsc{Praca dyplomowa\@typpracy}\par}
      \vspace{\stretch{2}}
      {\Huge\textsc{Temat: \@temat}\par}
      \begin{flushright}
          \vspace{\stretch{2}}
          {\LARGE\textsc{Wykonawca: \@autor} \par}
          \vskip 2em
          ....................................\\podpis~~~~~~~~~~~~
      \end{flushright}
      \begin{flushleft}
          \vspace{\stretch{1}}
          {\LARGE\textsc{Promotor: \@promotor} \par}
      \end{flushleft}
      \vspace{\stretch{2}}
      {\LARGE\textsc{Białystok \number\year }\ r.\par}
   \end{center}
   \end{titlepage}
   \if@twoside
      {\pagestyle{empty}
      \cleardoublepage}
  \else
  \fi
  %\setcounter{page}\@ne

}

\endinput
