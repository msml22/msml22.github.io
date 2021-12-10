\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{msml2022}[2021/12/10 v0.1 MSML 2022 Proceedings]

\@ifundefined{ifanonsubmission}{
  \newif\ifanonsubmission
  \anonsubmissionfalse
}{}

\@ifundefined{iffinalsubmission}{
  \newif\iffinalsubmission
  \finalsubmissionfalse
}{}

\DeclareOption{anon}{\anonsubmissiontrue}
\DeclareOption{final}{\finalsubmissiontrue}
\ProcessOptions\relax

\LoadClass[pmlr]{jmlr}

\jmlrvolume{vol 145}
\jmlryear{2022}
\jmlrproceedings{PMLR}{Proceedings of Machine Learning Research}

\ifanonsubmission
 \newcommand{\msmlauthor}[1]{}
 \author{author names withheld}
 \editor{Under Review for MSML 2022}
 \jmlrworkshop{3rd Annual Conference on Mathematical and Scientific Machine Learning}
 \renewcommand{\acks}[1]{}
\else
 \newcommand{\msmlauthor}[1]{\author{#1}}
 \iffinalsubmission
  \editors{Joan Bruna, Jan S Hesthaven, Lenka Zdeborova}
  \jmlrworkshop{3rd Annual Conference on Mathematical and Scientific Machine Learning}
 \fi
\fi



