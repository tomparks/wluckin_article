\LoadClass[11pt]{article}
\RequirePackage[a4paper, left=1.5in, right=1.5in]{geometry}
% for modifying the fonts
\RequirePackage{fontspec}
% for changing the spacing of the lines and after paragraphs
\RequirePackage{setspace}
% for modifying section headers
\RequirePackage{titlesec}
% CHOOSE from the below for justification or for ragged right
% for better justification
% \RequirePackage[]{microtype}
% for ragged right, but with hyphens
\RequirePackage{ragged2e}
\RaggedRight
% for the header and footer
\RequirePackage{fancyhdr}
\RequirePackage{lastpage}
% for making images go where I tell them to
\RequirePackage{float}
% for changing the caption font
\RequirePackage{caption}

% set the spacing correctly
% http://tex.stackexchange.com/questions/263617/set-line-spacing-to-point-size
\setstretch{1.1}
\titlespacing{\section}{0pt}{3pt}{3pt}
\titlespacing{\subsection}{0pt}{0pt}{0pt}
\titlespacing{\subsubsection}{0pt}{0pt}{0pt}

% set the paragraph spacing correctly
\setlength{\parskip}{7pt}

% Set the body font to Palatino, and all its derivatives
\setmainfont{PalatinoLTStd}[
Extension = .otf,
Path = /home/will/.fonts/Palatino/,
UprightFont = *-Roman,
BoldFont = *-Bold,
ItalicFont = *-Italic,
BoldItalicFont = *-BoldItalic]

% Create a slightly spaced font variation for use in smallcaps
\newfontfamily\slightspacing{PalatinoLTStd}[
Extension = .otf,
Path = /home/will/.fonts/Palatino/,
UprightFont = *-Roman,
BoldFont = *-Bold,
ItalicFont = *-Italic,
BoldItalicFont = *-BoldItalic,
LetterSpace=2]
\newfontfamily\gillsans[Path = /home/will/.fonts/Gill Sans Pro/, LetterSpace=5]{GillSansMTPro-Book.otf}

% delcare a new caption format that uses smallcaps
\newcommand\textlcsc[1]{\slightspacing\textsc{\MakeLowercase{#1}}}  % create a new smallcaps that lowercases too
\DeclareCaptionFormat{luckin}{\textlcsc{#1#2} #3}
\captionsetup{format=luckin}

% Change the formatting of sections and subsections
\titleformat{\section}
{\normalfont\fontsize{13}{15}\bfseries}{\thesection}{1em}{}
\titleformat{\subsection}
{\normalfont\fontsize{12}{15}\itshape}{\thesubsection}{1em}{}
\titleformat{\subsubsection}
{\normalfont\fontsize{11}{14}\itshape}{\thesubsubsection}{1em}{}

\newcommand{\wtitle}[3]{
  % Set up the title
  \makeatletter
  \title{#1} \let\Title\@title
  \author{#2}           \let\Author\@author
  \date{#3}            \let\Date\@date
  \makeatother
  
  % Set up the footer
  \pagestyle{fancy}
  \fancyhf{}
  \fancyfoot[L]{\textsc{\gillsans{\MakeLowercase{\Author : \Title}}}}
  \fancyfoot[R]{\textsc{\gillsans{page \thepage\ of \pageref{LastPage}}}}
  \renewcommand{\footrulewidth}{0.4pt}
  \renewcommand{\headrulewidth}{0pt} 
}
