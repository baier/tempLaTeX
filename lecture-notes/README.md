% The class file is based on the LaTeX template ''article''

\documentclass[12pt]{lecture}

\setsubject{Subject title}
\setdate{Date}
\setlecture{1}
\setheadline{Lecture subject}

\begin{document}

% To speed up the process of taking notes in LaTeX during lecture, I've added some shortcuts to make lists:

\sect{Test section}
\sub{Test subsection}
\subsub{Test subsubsection}
\bl % begin list
\1 This is a default bullet list
\2 You can have several levels
\3 Which is very practical during quick notes
\4 Even as low as this
\plus 
\el % end list

\ble % begin list enumerate
\1 Should you want numbers instead of bullet points, this is the style for you
\plus This may be used both within enumerative lists, and regular bullet lists
\minus Or minus, if you prefer
\ra Even right arrows!
\2[$\cdot$] Actually, you can customize your bullet points and just add new ones to the .cls file, or do like I've done here
\el

\bl
\1 When I do my lecture notes, I often only wish to have bullet point lists. Sometimes, however, I need some numbers
\numfir 
\1 For the first level
\2 See, a bullet point!
\numsec
\2 And for the second level
\1
\el

\end{document}
