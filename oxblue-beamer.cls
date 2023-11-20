\ProvidesClass{oxblue-beamer}[2023/11/20 Oxford Blue Beamer Class]
\LoadClass{beamer}

\RequirePackage{graphicx}
\RequirePackage{xcolor}
\RequirePackage{minted}

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
\useinnertheme[shaded=false,shadow=false]{tcolorbox}

% Block colors
\setbeamercolor{block title}{bg=blue, fg=white}
\setbeamercolor{block body}{bg=blue!10}
\setbeamercolor{block title alerted}{bg=red, fg=white}
\setbeamercolor{block body alerted}{bg=red!10}
\setbeamercolor{block title example}{bg=green, fg=white}
\setbeamercolor{block body example}{bg=green!10}

% Section beginning frame
\AtBeginSection[]{
    {
    \setbeamercolor{background canvas}{bg=blue}
    \setbeamertemplate{footline}{}
    \begin{frame}
    \centering
    \huge\color{white}\secname
    \end{frame}
    }
}
