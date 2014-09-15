% 
%  Lecture notes
%  Beate Baier Biribakken - biribakk@stud.ntnu.no
%  2014-Sept-05

% Based on Jim Hefferons ''Take minutes of meetings''


\ProvidesClass{lecture}[2014/09/05 version 1.00 Lecture notes]
\NeedsTeXFormat{LaTeX2e}

% subject
\def\@subjectname{}
\newcommand{\setsubject}[1]{\def\@subject{#1}}
\newcommand{\show@subject}{\@subject}

% lecture number
\def\@lecturename{}
\newcommand{\setlecture}[1]{\def\@lecture{#1}}
\newcommand{\show@lecture}{\@lecture}


% date
\def\@date{\today}
\newcommand{\setdate}[1]{\def\@date{#1}}
\newcommand{\show@date}{\@date}

% title of paper
\def\@headline{}
\newcommand{\setheadline}[1]{\def\@headline{#1}}
\newcommand{\show@headline}{''\@headline''}

% optional: subtitle
\def\@subheadline{}
\newcommand{\setsubheadline}[1]{\def\@hsubeadline{#1}}
\newcommand{\show@subheadline}{''\@subheadline''}
% ---
\ProcessOptions \relax

\LoadClass{article}

\newcounter{lecnum}

% This is the box surrounding subject title, page number, lecture number, etc. If you need more space, just adjust the document margins, and height and width of the box.
\newcommand{\lecture}[3]{
   \pagestyle{myheadings}
   \newpage
   \setcounter{lecnum}{#1}
\vspace{-1cm}
\begin{addmargin}[35em]{1em}

   \tcboxfit[width=6cm,height=1.5cm,nobeforeafter,blank,
  borderline={0.9pt}{-5pt}{black},
  before=\noindent]{\raggedleft
      \vbox{\vspace{3mm}
    \hbox { \large{\bf #3} }
       \vspace{3mm}
              \hbox {\large \hspace{0.1cm}Dato: {#2 }\hfill {\huge\hspace{1.8cm}{\textcircled{\raisebox{-0.5pt}{\Large{#1}}}}}}{\vspace{-0.65cm} \Large \framebox{\thepage}}}
   }
\end{addmargin}
}
% Shortcuts
\newcommand{\ch}{\chapter}
\newcommand{\sect}{\section}
\newcommand{\sub}{\subsection}
\newcommand{\subsub}{\subsubsection}
\newcommand{\bl}{\begin{outline}}
\newcommand{\el}{\end{outline}}
\newcommand{\ble}{\begin{outline}{enumerate}}
\newcommand{\plus}{\1[+]} % item bullet is plus
\newcommand{\minus}{\1[-]} % item bullet is minus
\newcommand{\ra}{\2[$\rightarrow$]} % item bullet is right arrow
\newcommand{\numfir}{\renewcommand{\outlinei}{enumerate}} % sets only first level to enumerate style
\newcommand{\numsec}{\renewcommand{\outlineii}{enumerate}} % sets only second level to enumerate style


% Page layout
\RequirePackage[margin=2.5cm, top=3cm]{geometry}
\RequirePackage[many]{tcolorbox}
\RequirePackage{scrextend}
\RequirePackage[english]{babel}
\RequirePackage[utf8x]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage{pdfpages} % include pdf
\RequirePackage{graphicx} % include figures, etc
\RequirePackage{changepage} % detects odd or even pages
%\RequirePackage{relsize} % handles textsize
\RequirePackage{outlines} % multi-level lists
\RequirePackage{float} % float of figures, tables, etc.
\RequirePackage{subcaption, caption} % captions and captions for subenvironments
\RequirePackage{listings} % code style
\RequirePackage{amsthm, amssymb, amsmath} % mathematical symbols

% Custom theorem-style. Must be added below required package (amsthm)
\newtheoremstyle{defi}
    {}
	{}
	{\itshape}
	{}
	{\bfseries}
	{}
	{.5em }
{\thmnote{#1 }#3:}
\theoremstyle{defi}


\newtheorem{definition}{Definition}[section]
\newtheorem{defi}[definition]{Definition of}



\RequirePackage{fancyhdr}

\fancypagestyle{firstpage}{%
  \fancyhf{}% clear header/footer
	 \fancyhead[LEH, LOH]{
  {\Large\bfseries \show@headline}\vspace{0.1cm}
  }
  \fancyhead[REH, ROH]{
  \lecture{\show@lecture}{\show@date}{\show@subject}
  }
  \renewcommand{\headrulewidth}{0pt}% No header rule
  \parindent=0pt
\setlength{\headsep}{1cm}
}

\fancypagestyle{pages}{%
  \fancyhf{}% clear header/footer
	 \fancyhead[LEH, LOH]{
  \vspace{0.1cm}
  }

  \fancyhead[REH, ROH]{
  \lecture{\show@lecture}{\show@date}{\show@subject}
  }
  \renewcommand{\headrulewidth}{0pt}% No header rule
  \parindent=0pt
\setlength{\headsep}{1cm}


  
}
\pagestyle{pages}
\AtBeginDocument{\thispagestyle{firstpage}}

