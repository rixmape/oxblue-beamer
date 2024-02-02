\ProvidesClass{oxblue-beamer}[2023/11/20 Oxford Blue Beamer Class]

\RequirePackage{graphicx}
\RequirePackage{xcolor}
\RequirePackage{minted}
\RequirePackage{tikz}

\newif\ifshowendframe
\showendframefalse % Default is to hide the end frame
\DeclareOption{endframe}{\showendframetrue}

\newif\ifshowsectionframe
\showsectionframefalse % Default is to hide the section frame
\DeclareOption{sectionframe}{\showsectionframetrue}

\ProcessOptions\relax
\LoadClass{beamer}

% Set up code styling
\setminted{
    fontsize=\footnotesize,
    breaklines,
    style=default,
    frame=lines,
    framesep=2mm,
    linenos,
    numbersep=5pt,
}

% Color definitions
\definecolor{blue}{HTML}{002147}
\definecolor{green}{HTML}{004732}
\definecolor{red}{HTML}{740D0D}

% Theme and color settings
\usetheme{Copenhagen}
\usecolortheme[named=blue]{structure}
\setbeamertemplate{headline}{}
\setbeamertemplate{navigation symbols}{}
\setbeamerfont{footline}{size=\fontsize{7}{9}}
\useinnertheme[shaded=false,shadow=false]{tcolorbox}

% Block colors
\setbeamercolor{block title}{bg=blue, fg=white}
\setbeamercolor{block body}{bg=blue!10}
\setbeamercolor{block title alerted}{bg=red, fg=white}
\setbeamercolor{block body alerted}{bg=red!10}
\setbeamercolor{block title example}{bg=green, fg=white}
\setbeamercolor{block body example}{bg=green!10}

% Set custom footline
\setbeamertemplate{footline}{
    \begin{beamercolorbox}[wd=\textwidth,ht=4mm,dp=2mm,rightskip=5mm,leftskip=5mm]{title in head/foot}
    \insertframenumber{} / \inserttotalframenumber
    \hfill
    \insertshortauthor{} --- \insertshorttitle{}
    \end{beamercolorbox}
}

% Section beginning frame
\AtBeginSection[]{
    \ifshowsectionframe
    {
    \setbeamercolor{background canvas}{bg=blue}
    \begin{frame}[plain]
    \centering \color{white}
    {\Large Part \insertsectionnumber}
    \par \vspace{5mm}
    {\huge\secname}
    \end{frame}
    }
    \fi
}

% End frame
\AtEndDocument{
    \ifshowendframe
    {
    \setbeamercolor{background canvas}{bg=blue}
    \begin{frame}[plain]
    \centering \color{white}
    {\huge Thank you!}
    \par \vspace{5mm}
    {\Large Any questions?}
    \end{frame}
    }
    \fi
}