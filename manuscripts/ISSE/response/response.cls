%%
%% This is file `response.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% response.dtx  (with options: `response')
%% 
%% This is a generated file.
%% 
%% Copyright (C) 2013 by Thai Son Hoang <htson at inf dot ethz dot ch>
%% 
%% This file may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either version 1.3c
%% of this license or (at your option) any later version.
%% The latest version of this license is in:
%% 
%%    http://www.latex-project.org/lppl.txt
%% 
%% and version 1.3c or later is part of all distributions of LaTeX
%% version 2008/05/04 or later.
%% 
%%%%% BEGIN Identification part %%%%%
\NeedsTeXFormat{LaTeX2e}\relax
\ProvidesClass{response}
    [2013/08/15 v1.0 Class for typesetting responses to paper reviews]
%%%%% END Identification part %%%%%

%%%%% BEGIN Special class file commands %%%%%
\LoadClass{article}
\PassOptionsToClass{10pt}{article}
%%%%% END Special class file commands %%%%%

%%%%% BEGIN Package loading %%%%%
\RequirePackage{a4wide}
\RequirePackage{fancyvrb}
\RequirePackage{etoolbox}
%%%%% END Package loading %%%%%

%%%%% BEGIN Fields with some default value %%%%%
\newcommand{\title@response}{Paper title}
\newcommand{\papertitle}[1]{\renewcommand{\title@response}{#1}}
\newcommand{\author@response}{Paper author}
\newcommand{\paperauthor}[1]{\renewcommand{\author@response}{#1}}
\newcommand{\acknowledgement@response}{%
  We would like to thank the anonymous reviewers for their constructive
  comments and providing us with the chance to improve our paper. Below we summarise our major changes and address the problems and questions raised by the referees.%
}
\newcommand{\acknowledgement}[1]{\renewcommand{\acknowledgement@response}{#1}}
%%%%% END Fields with some default value %%%%%

%%%%% BEGIN Title %%%%%

% Redefine \maketitle
\renewcommand{\maketitle} {
  \begin{center}
    {\LARGE \textsf{Responses to Reviewers' Comments}}

    \bigskip

    for paper titled

    \emph{\title@response}

    by

    \textsf{\author@response}
  \end{center}

  \bigskip

  \paragraph{Thanks}
  \acknowledgement@response }

% Always start with title
\AtBeginDocument{
  \maketitle
}

%%%%% END title %%%%%

%%%%% BEGIN Special environments %%%%%
%   A wrapper for \ifstrequal to make sure that the first argument is properly expanded
\newcommand{\RES@ifstrequal}{\expandafter\ifstrequal\expandafter}

\newenvironment{comment}[1]
{
  \VerbatimEnvironment \bigskip
  \textbf{{#1}:}
  \begin{Verbatim}
}{
  \end{Verbatim}
}

\newenvironment{response}[1][]
{
  \medskip
  \RES@ifstrequal{#1}{}{
    \textit{Response:}
  }{
    \textit{Response (#1):}
  }
}
{}
\newcommand{\fixed}{Fixed. Thank you very much.}
%%%%% END Special environments %%%%%
\endinput
%%
%% End of file `response.cls'.
