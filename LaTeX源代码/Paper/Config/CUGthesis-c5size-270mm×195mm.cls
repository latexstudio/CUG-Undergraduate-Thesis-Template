% !TEX encoding = System
% !Mode:: "TeX:UTF-8"
%%
%% This file `CUGthesis-c5size-270mm��195mm.cls', which is written by Yang Bo based on `CUGthesis.cls',
\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{Config/CUGthesis-c5size-270mm��195mm}
  [2013/06/04  v0.2  CUGthesis-c5size-270mm��195mm document class]
%%����ѡ�Ĭ��Ϊ���ƣ�
%%
\newif\ifisundergraduate\isundergraduatetrue
\DeclareOption{undergraduate}{\isundergraduatetrue}
\DeclareOption{ohno}{\isundergraduatefalse}
%%������Ϣѡ��
\newif\ifCUGT@fundinfo \CUGT@fundinfotrue
\DeclareOption{nofundinfo}{\CUGT@fundinfofalse}
%%�Ű�����ѡ��
\newif\ifCUGT@dvips \CUGT@dvipsfalse
\DeclareOption{dvips}{\CUGT@dvipstrue}
\DeclareOption{dvipdfm}{\CUGT@dvipsfalse}
\DeclareOption{pdftex}{\CUGT@dvipsfalse}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{ctexbook}}
\ProcessOptions
%%����ctexbook�ĵ���
%��л�����ƺ���������λ�������������״�ʹ�����¸�ʽ�ύ��ӡ���ĵ��ˣ��������β�������������
\LoadClass[c5size,fancyhdr,fntef,punct]{ctexbook}[2005/11/25]  %c5size  5���� ��ҳ�߾��������Ҷ�Ϊ2.5cm ֽ�Ŵ�СΪ 270mm��195mm ,ҳü15mm��ҳ��17.5mm
\CTEXoptions[today=small]  %ִ��\todayʱ��ʾ��ʽ������ ��2013��6��2 ��
\RequirePackage{etex}  %ʹ��etex����tex��256����   http://ctan.org/pkg/etex/
%%����ҳ�����������˸��������ú��ױ�ʾ�� A4��׼
\RequirePackage[paperheight=270mm,paperwidth=195mm,top=25mm,bottom=25mm,left=25mm,right=25mm,headsep=10pt,head=15mm,foot=17.5mm]{geometry}
\linespread{1.5}\selectfont  %�о�1.5
%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%һ��������żҳҳ�߾෴�˵����� 2013.6.1
%������żҳҳ�߾෴�˵�����,��������������ҳ��ҳ�߾�Ϊ��խ�ҿ�����ż��ҳȴ��������խ������װ��ʱ��Ҫ��������ҳ������խ��ż��ҳ��խ�ҿ�����������������ԭ������żҳҳ�߾�	http://stackoverflow.com/questions/2565755/latex-book-class-twosided-document-with-wrong-margins
%ע���������й۲�����
%\let\tmp\oddsidemargin                          %�ο�c���Եľ�������:���ε�������������ֵ
%\let\oddsidemargin\evensidemargin
%\let\evensidemargin\tmp
%\reversemarginpar
%%%%%%%%%%%%%%%%����������żҳҳ�߾෴������
%%���غ���
%% check pdfTeX mode
\RequirePackage{ifpdf,ifxetex}
%% math packages
\RequirePackage{amsmath,amsthm,amsfonts,amssymb,bm,txfonts}
\RequirePackage{Package/vector} %������������������ ӡˢ������ \bvec{} ��λ���� \buvec �ȣ������鿴����˵�� http://mirror.bjtu.edu.cn/CTAN/macros/latex/contrib/vector/vector.pdf
\RequirePackage{yhmath}                          %���õ�����Ӧ��ѧ���� (���� ��AB ,\wideparen{AB} ) ftp://tug.ctan.org/pub/tex-archive/macros/latex/contrib/yhmath/yhmath.pdf
%% graphics packages
\RequirePackage{graphicx}
\RequirePackage{titletoc}
\RequirePackage{titlesec}
\RequirePackage{subfigure}
%% sort and compress citations
\RequirePackage[sort&compress,numbers]{natbib}
\RequirePackage{hypernat}
%% caption packages
\RequirePackage{caption2}
%% enumitem package
\RequirePackage{enumitem}
\setenumerate[1]{itemsep=0pt,partopsep=0pt,parsep=\parskip,topsep=0pt}
\setitemize[1]{itemsep=0pt,partopsep=0pt,parsep=\parskip,topsep=0pt}
\setdescription{itemsep=0pt,partopsep=0pt,parsep=\parskip,topsep=0pt}
\RequirePackage{ccmap} %ʹ���ɵ�pdf�ļ����ݿɱ���������
\RequirePackage{times}  %Times New Roman Ӣ������
%%����Ϊ�Ǳ�����������ɾ��%%%

\RequirePackage{CJK,CJKnumb}
\RequirePackage{textcomp}  %���϶�֮���ķ���
\RequirePackage{booktabs}

%\RequirePackage[framed,numbered,autolinebreaks,useliterate]{Package/Mcode}
\RequirePackage{Package/Pagenote}
\RequirePackage{Package/Endnotes}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%��ע%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{pifont,bbding}% \RihtHand �ȷ���
\RequirePackage[%perpage, %Ϊÿҳ��ע��������
		stable,	 %�����½ڱ����еĽ�ע��ͬ�½ڱ���������Ŀ¼��ҳü֮��
		multiple %���������������ϵĲ��Ž�ע����֮�����Ϸָ�����
		%symbol*	  %����ע���������Ÿ�Ϊ * �ŵȲ�ͬ�ķ���
		]{footmisc}
%\DefineFNsymbols{lamport-mystyle}{\SnowflakeChevron \OrnamentDiamondSolid  \FourClowerOpen \FourStarOpen \SixFlowerPetalDotted \JackStarBold \NibSolidLeft \Cross \CrossClowerTips \CrossMaltese \Asterisk\FiveFlowerPetal \FiveStar  \AsteriskCenterOpen \AsteriskRoundedEnds  \SixFlowerPetalRemoved \SixFlowerRemovedOpenPetal\EightAsterisk \EightFlowerPetalRemoved \Snowflake  \S * {**} \textparagraph \textdagger \textdaggerdbl \PencilLeft }
%\setfnsymbol{lamport-mystyle}
%if Specified a symbol which must be used in math enviroment ,then chang "symbol*" to "symbol" and use the define \DefineFNsymbols{lamport}[math]{....symbol....}  ---\DefineFNsymbols{lamport}[math]{*\dagger\ddagger\S\P\|{**}{\dagger\dagger}{\ddagger\ddagger}}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%��ע�������޸�
%�������������г�����ͬ�Ľ�ע     http://www.tex.ac.uk/cgi-bin/texfaq2html?label=run-fn-nos
%��ʹ�����������У���ÿ�������½ڣ���ע�������������±�Ϊ0�������½��л�������ͬ�Ľ�ע����
%\RequirePackage{chngcntr}
%\counterwithout*{footnote}{chapter}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%��ע%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage{xcolor}
\RequirePackage{multirow}    %���к���

%%����Ϊ�Ǳ�����������ɾ��%%%
\RequirePackage{diagbox}    %������ͷ
\RequirePackage[figuresright]{rotating}
\RequirePackage{tagging}    %��������

%%����Ϊ�Ǳ�����������ɾ��%%%


%% packages and settings depend on PDF mode
\ifxetex
  \RequirePackage[xetex]{hyperref}
  \DeclareGraphicsExtensions{.pdf,.png,.jpg}
\else
  \ifpdf   % We're running pdfTeX in PDF mode
    \RequirePackage[pdftex]{hyperref}
    \RequirePackage{CJK,CJKnumb}
    \DeclareGraphicsExtensions{.pdf,.png,.jpg}
  \else    % We're not running pdfTeX, or running pdfTeX in DVI mode
    \ifCUGT@dvips
      \RequirePackage[dvips]{hyperref}
      \RequirePackage{psfrag}
      \AtBeginDvi{\special{pdf:tounicode GBK-EUC-UCS2}} % GBK -> Unicode
    \else
      \RequirePackage[dvipdfm]{hyperref}
    \fi
    \DeclareGraphicsExtensions{.eps,.ps}
  \fi
\fi
\hypersetup{CJKbookmarks,%
       bookmarksnumbered,%
              colorlinks,%
               linkcolor=blue,%
               citecolor=blue,%
              plainpages=false,%
            pdfstartview=FitH}

%%���ز����ļ�
\AtEndOfPackage{\makeatletter\input{Config/CUGthesis.cfg}\makeatother}
%%�Զ�������
%����Ϊ���ݴ��߶���
\RequirePackage{array}                %����������\while ���ݴ���I
\newcolumntype{I}{!{\vrule width 2pt}}
\newlength\savewidth
\newcommand\shline{\noalign{\global\savewidth\arrayrulewidth
                            \global\arrayrulewidth 2pt}%
                   \hline
                   \noalign{\global\arrayrulewidth\savewidth}}
%����Ϊ���ݴ��߶���
%%ͼ��
\renewcommand{\captionlabeldelim}{} %������  " ͼ(��)2: ʾ��" �еļ�������,�� ":" ,���ﶨ��Ϊ��
\renewcommand{\captionlabelsep}{\hspace{1em}} % ����ͼ���������������ļ�������
\renewcommand{\captionlabelfont}{\songti\zihao{-5}} %����ͼ����ǩ������
\renewcommand{\captionfont}{\songti\zihao{-5}} %����ͼ���������ݵ�����
\newcommand{\excaption}{\songti\zihao{-5}}  %����ͼ�����⸽�������ֺ�����

\def\cleardoublepage{\clearpage\if@twoside \ifodd\c@page\else
  \thispagestyle{empty}%
  \hbox{}\newpage\if@twocolumn\hbox{}\newpage\fi\fi\fi}
\renewcommand{\floatpagefraction}{0.80}
%\bibliographystyle{plain}      %��ʾ�ο����׵ĸ�ʽΪplain text ��ȡ��ע�ͺ󿴿�Ӣ�Ĳο�������ԭ������ʲô��ͬ
\newcommand\CUGTspace{\protect\CTEX@spaceChar\protect\CTEX@spaceChar}
\def\CUGT@getfileinfo#1 #2 #3\relax#4\relax{%
  \def\CUGTfiledate{#1}%
  \def\CUGTfileversion{#2}%
  \def\CUGTfileinfo{#3}}%
\expandafter\ifx\csname ver@CUGthesis.cls\endcsname\relax
  \edef\reserved@a{\csname ver@ctextemp_CUGthesis.cls\endcsname}
\else
  \edef\reserved@a{\csname ver@CUGthesis.cls\endcsname}
\fi
\expandafter\CUGT@getfileinfo\reserved@a\relax? ? \relax\relax
\def\CUGT@underline[#1]#2{%
  \CTEXunderline{\hbox to #1{\hfill#2\hfill}}}
\def\CUGTunderline{\@ifnextchar[\CUGT@underline\CTEXunderline}
\newcommand\schoolnumber[1]{\def\CUGT@value@schoolnumber{#1}}
\newcommand\studentnumber[1]{\def\CUGT@value@studentnumber{#1}}
\newcommand\classification[1]{\def\CUGT@value@classification{#1}}
\newcommand\confidential[1]{\def\CUGT@value@confidential{#1}}
\newcommand\UDC[1]{\def\CUGT@value@UDC{#1}}
\newcommand\serialnumber[1]{\def\CUGT@value@serialnumber{#1}}
\newcommand\school[1]{\def\CUGT@value@school{#1}}
\newcommand\degree[1]{\def\CUGT@value@degree{#1}}
\renewcommand\title[2][\CUGT@value@title]{%
  \def\CUGT@value@title{#2}
  \def\CUGT@value@titlemark{\MakeUppercase{#1}}}
\renewcommand\author[1]{\def\CUGT@value@author{#1}}
\newcommand\advisorschool[1]{\def\CUGT@value@advisorschool{#1}}
\newcommand\advisorenterprise[1]{\def\CUGT@value@advisorenterprise{#1}}
\newcommand\fund[1]{\def\CUGT@value@fund{#1}}
\newcommand\advisorschoolinstitute[1]{\def\CUGT@value@advisorschoolinstitute{#1}}
\newcommand\advisorenterpriseinstitute[1]{\def\CUGT@value@advisorenterpriseinstitute{#1}}
\newcommand\major[1]{\def\CUGT@value@major{#1}}
\newcommand\submitdatechs[1]{\def\CUGT@value@submitdatechs{#1}}
\newcommand\submitdate[1]{\def\CUGT@value@submitdate{#1}}
\newcommand\defenddate[1]{\def\CUGT@value@defenddate{#1}}
\newcommand\institute[1]{\def\CUGT@value@institute{#1}}
\newcommand\chairman[1]{\def\CUGT@value@chairman{#1}}
\newcommand\advisorschooltitles[1]{\def\CUGT@value@advisorschooltitles{#1}}
\newcommand\advisorenterprisetitles[1]{\def\CUGT@value@advisorenterprisetitles{#1}}
\newcommand\reviewerstitles[1]{\def\CUGT@value@reviewerstitles{#1}}
\newcommand\reviewers[1]{\def\CUGT@value@reviewers{#1}}
\newcommand\authorheader[1]{\def\CUGT@value@authorheader{#1}}
%%�Զ����ο������ϱ�����
\newcommand{\ucite}[1]{\textsuperscript{\textsuperscript{\cite{#1}}}}  % ����2
%%�Զ���frontmatter��ʽ
\newif\if@frontmatter\@frontmattertrue
\renewcommand\frontmatter{%
\cleardoublepage
\@frontmattertrue
\@mainmatterfalse
\setcounter{page}{1}
\pagenumbering{Roman}
\pagestyle{plain}{}
\fancyhf{}%
\renewcommand{\headrulewidth}{0pt}
}
%%�Զ���mainmatter��ʽ
\renewcommand\mainmatter{%
\cleardoublepage
\@frontmatterfalse
\@mainmattertrue
\setcounter{page}{1}
\pagenumbering{arabic}
\fancypagestyle{plain}{%
  \fancyhf{}%
  \fancyhead[LO,RE]{\songti\zihao{-5} \CUGT@value@submitdate}
  \fancyhead[CO]{\songti\zihao{-5} \CUGT@value@school\CUGT@value@degree\CUGT@label@thesis}
  \fancyhead[CE]{\songti\zihao{-5} \CUGT@value@authorheader ��~~ \CUGT@value@titlemark}
  \fancyhead[LE,RO]{\songti\zihao{-5} ~\thepage~}
}
\pagestyle{fancy}
  \fancyhf{}
  \fancyhead[LO,RE]{\songti\zihao{-5} \CUGT@value@submitdate}
  \fancyhead[CO]{\songti\zihao{-5} \CUGT@value@school\CUGT@value@degree\CUGT@label@thesis}
  \fancyhead[CE]{\songti\zihao{-5} \CUGT@value@authorheader ��~~ \CUGT@value@titlemark}
  \fancyhead[LE,RO]{\songti\zihao{-5} ~\thepage~}
%%����ҳü˫��
\newcommand{\makeheadrule}{%
\makebox[0pt][l]{\rule[0.55\baselineskip]{\headwidth}{0.4pt}}%
\rule[0.7\baselineskip]{\headwidth}{0.4pt}}
\renewcommand{\headrule}{%
{\if@fancyplain\let\headrulewidth\plainheadrulewidth\fi
\makeheadrule}}
\makeatother%
}
%%����Ŀ¼��ʽ
\setcounter{tocdepth}{3} \setcounter{secnumdepth}{3}
\dottedcontents{chapter}[3.5em]{\songti\zihao{5}}{4em}{0.5pc}
\dottedcontents{section}[5.5em]{\songti\zihao{5}}{3em}{0.5pc}
\dottedcontents{subsection}[6.1em]{\songti\zihao{5}}{1.7em}{0.5pc}
%%�����½ڱ�����ʽ
\renewcommand\chaptername{��\CJKnumber{\value{chapter}}��}
\renewcommand{\thesection}{\S~\arabic{chapter}.\arabic{section}}
\renewcommand{\thesubsection}{\hspace{-3ex}\arabic{chapter}.\arabic{section}.\arabic{subsection}}
\renewcommand{\thesubsubsection}{\arabic{subsubsection}.}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%�������漰�̶���Ϣҳ��
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%���ķ���1
\newcommand\makecover{%
  \cleardoublepage
  \thispagestyle{empty}
  \begin{center}
  \vspace*{1.5em}
      \heiti\zihao{-1} \CUGT@value@school \CUGT@value@degree\CUGT@label@thesis \\
		\vspace{0.5em}
    \begin{center}
    \includegraphics[width=0.618\textwidth]{CUG_Logo/CUG_Logo.png}
    \end{center}
    \vspace{1.5em}
    \heiti\zihao{3}
    \def\tabcolsep{1pt}
    \def\arraystretch{1.5}
\begin{minipage}{71.8mm}
    \begin{tabular}{r@{\textbf{\zihao{3}{:}}}l}
      \CUGT@label@author~~ & ~~ \CUGT@value@author \\
      \CUGT@label@major ~~ & ~~ \CUGT@value@major  \\
      \CUGT@label@advisorschool ~~ & ~~ \CUGT@value@advisorschool \\
%      \CUGT@label@advisorenterprise ~~ & ~~ \CUGT@value@advisorenterprise &\\

	  \CUGT@label@institute ~~ & ~~ \CUGT@value@institute  \\
    \end{tabular}
\end{minipage}
	\\
	\vspace{2em}
	\songti\zihao{3}
      \CUGT@value@submitdatechs
	%\vspace{1em}	
  \end{center}
}

%%%���ķ���2
\renewcommand\maketitle{%
  \cleardoublepage
  \thispagestyle{empty}
  \begin{center}

    \songti\zihao{3}
%      \CUGT@label@schoolnumber~\CUGT@value@schoolnumber
%        \hfill
%      \CUGT@label@studentnumber~\CUGT@value@studentnumber
%    \vskip \stretch{1.8}
%\vspace*{1.5em}
   \ \\
      \heiti\zihao{2} \CUGT@value@school\CUGT@value@degree\CUGT@label@thesis
    \vskip \stretch{0.9}
     \includegraphics[width=0.618\textwidth]{CUG_Logo/CUG_Logo.png}\\
     \vspace{2em}
      \heiti\zihao{3} ~\CUGT@value@title~\\
      \vspace{2em}
    \vskip \stretch{1}
    \begin{flushleft}
    \songti\zihao{3}
    \def\tabcolsep{1pt}
    \def\arraystretch{1.0}%��������ÿ�м����м���
\begin{tabular}{l@{:}rcl@{:}r}
\CUGT@label@author~~&~~\CUGT@value@author &\hspace*{2em}&\CUGT@label@studentnumber~~&~~\CUGT@value@studentnumber\\
\CUGT@label@institute~~&~~\CUGT@value@institute &\hspace*{2em}&\CUGT@label@major~~&~~\CUGT@value@major \\
\CUGT@label@advisorschool~~&~~\CUGT@value@advisorschool &\hspace*{2em}&\CUGT@label@advisorschooltitles~~&~~\CUGT@value@advisorschooltitles \\
% \CUGT@label@advisorenterprise~~&~~\CUGT@value@advisorenterprise &\hspace*{2em}&\CUGT@label@advisorenterprisetitles\CUGT@value@advisorenterprisetitles\\
\CUGT@label@reviewers ~~&~~\CUGT@value@reviewers &\hspace*{2em}&\CUGT@label@reviewerstitles~~&~~\CUGT@value@reviewerstitles\\
\end{tabular}
    \end{flushleft}
	\vskip \stretch{2.9}
	 \ifCUGT@fundinfo
	\songti\zihao{5}
      \CUGT@label@fundhead \CUGT@value@fund \CUGT@label@fundtail
	\vskip \stretch{0.6}
	\fi
	 \vspace{3em}
	\songti\zihao{3}
      \CUGT@value@submitdatechs
	\vspace{1em}	
  \end{center}
}

%%%Ӣ�ķ���
\newcommand\englishtitle[1]{\def\CUGT@value@englishtitle{#1}}
\newcommand\englishauthor[1]{\def\CUGT@value@englishauthor{#1}}
\newcommand\englishadvisorschool[1]{\def\CUGT@value@englishadvisorschool{#1}}
% \newcommand\englishadvisorenterprise[1]{\def\CUGT@value@englishadvisorenterprise{#1}}
\newcommand\englishinstitute[1]{\def\CUGT@value@englishinstitute{#1}}
\newcommand\englishdate[1]{\def\CUGT@value@englishdate{#1}}
\newcommand\englishdegree[1]{\def\CUGT@value@englishdegree{#1}}
\newcommand\englishmajor[1]{\def\CUGT@value@englishmajor{#1}}
\newcommand\makeenglishtitle{%
  \cleardoublepage
  \thispagestyle{empty}
  \begin{center}
	 \heiti\zihao{2} \CUGT@label@englishstatement \\ \vspace*{1em}
	 \includegraphics[width=0.618\textwidth]{CUG_Logo/CUG_Logo.png}\\
	\vspace{2em}
      \bf\zihao{-2} \CUGT@value@englishtitle
    \vskip \stretch{1.5}
	\normalfont\zihao{4}
    \def\tabcolsep{1pt}
    \def\arraystretch{1.0}
    \begin{tabular}{r@{:}l}         %Ӣ��ʹ��һ���ո�
      \CUGT@label@englishauthor~&~\CUGT@value@englishauthor \\
      \CUGT@label@englishmajor ~ &~\CUGT@value@englishmajor \\
      \CUGT@label@englishadvisorschool~&~\CUGT@value@englishadvisorschool \\
%      \CUGT@label@englishadvisorenterprise~&~\CUGT@value@englishadvisorenterprise \\

    \end{tabular}
    \vskip \stretch{4}
      \normalfont\zihao{-3} \CUGT@label@englishschool \\
    \vskip 5pt
      \normalfont\zihao{-3} \CUGT@label@englishadress
  \end{center}
  \clearpage
  \if@twoside
    \thispagestyle{empty}
    \cleardoublepage
  \fi
}

%%%ԭ��������
\newcommand\makestatement{%
  \cleardoublepage
  \thispagestyle{empty}
  \begin{center}
  \vspace*{3em}	
	\heiti\zihao{-2}�й����ʴ�ѧ���人��\CUGT@value@degree ��ҵ����ԭ��������
	\vspace{1em}
  \end{center}
  \vspace{5em}
  \songti\zihao{-4}\hspace{2em} ����֣���������������ʽ���\CUGT@value@degree ��ҵ���ġ�\CUGT@value@titlemark �����Ǳ����ڵ�ʦ��ָ���½��е�ʵ�����о�������ȡ�õĳɹ������������������˵����ס����ݡ�ͼ�������ϵȾ�����ȷ��ע���������еĽ��ۺͽ���Ϊ���˶������ɣ����������˳ɹ���Ϊ�����й����ʴ�ѧ����������������ѧλ��֤����ʹ�ù��Ĳ��ϡ�ͬʱ���Ա��о��������κι��׵���ʦ��ͬѧ������������������ȷ��˵������ʾ��л�⡣\par
  �������ʽ���\CUGT@value@degree ��ҵ����û��Υ��ѧ�����º�ѧ���淶��û����Ȩ��Ϊ����Ը���е��ɴ˶������ķ������κͷ��ɺ�����\\
   \ \\ \ \\ \  \\
      �������ߣ�ǩ�֣���\underline{ \hspace{5em}   }   \hspace{4em}   ���ڣ�\underline{����}��\underline{����}��\underline{����}��
  }

%%%��Ȩ��
\newcommand\makeauthorization{%
  \cleardoublepage
  \thispagestyle{empty}
  \begin{center}	
	\heiti\zihao{-2}�й����ʴ�ѧ���人������ʹ����Ȩ��
	\vspace{2em}
  \end{center}
  \songti\zihao{4}\hspace{2em} ������Ȩ�й����ʴ�ѧ���人���ɲ���Ӱӡ����ӡ�����ֻ������������ֶα��汾���ģ�
  ѧУ���������йز��Ż������ͽ������ĵĵ��Ӱ�ȫ�ģ������й����ݿ����м��������ؼ����״��ݷ�����
  ͬ����У԰�����ṩȫ�����������ط�����

\vspace{4em}
\hspace{4em} ��������ǩ����\CUGTunderline[170pt]{}        \\

\hspace{4em} ��\hspace{6em}�ڣ�  \CUGTunderline[45pt]{\hspace{3em}} ��\CUGTunderline[45pt]{\hspace{2em}}��\CUGTunderline[45pt]{\hspace{2em}}��
}%

%%����ժҪ
\newenvironment{abstract}
  {%
  \cleardoublepage
  \thispagestyle{empty}
  \vspace*{2em}
  \begin{center}
  \heiti\zihao{3}\CUGT@value@title \\
  \vspace{1em}
  \def\arraystretch{1.0}
 \begin{tabular}{r@{\zihao{-4}{:}}l}  %���ָ����ĳ�С��ð�Ŵ�С�պã���Ȼ̫��
  \songti\zihao{-4}\CUGT@label@authorshort~~&~~\songti\zihao{-4}\CUGT@value@author \\
  \songti\zihao{-4} \CUGT@label@advisorschoolshort~~&~~\songti\zihao{-4}\CUGT@value@advisorschool \\
   %  \songti\zihao{-4}\CUGT@label@advisorenterpriseshort~~&~~\songti\zihao{-4}\CUGT@value@advisorenterprise \\
   \end{tabular}
  \vspace{1em}\\
  \songti\zihao{4}\CUGT@label@abstract
  \end{center}
  \hspace{1.3em}
  \songti\zihao{5}
  }{}
%%���Ĺؼ���
\newcommand\keywords[1]{%
  \vspace{2ex}\noindent{\heiti\zihao{5} \CUGT@label@keywords~\heiti{\zihao{5}{\textbf{:}}}} ~~\heiti\zihao{5}#1}

%%Ӣ��ժҪ
\newenvironment{englishabstract}
  {%
  \cleardoublepage
  \thispagestyle{empty}
   \vspace*{2em}
  \begin{center}
   \zihao{2}\CUGT@value@englishtitle \\
 \vspace{0.2em}
\def\arraystretch{.5}
 \begin{tabular}{r@{\zihao{-4}{:}}l}  %���ָ����ĳ�С��ð�Ŵ�С�պã���Ȼ̫��
  \zihao{-4}\CUGT@label@englishauthor~&~ \zihao{-4}\CUGT@value@englishauthor \\
 \zihao{-4} \CUGT@label@englishadvisorschool~ &~\zihao{-4}\CUGT@value@englishadvisorschool \\
 %\zihao{-4}\CUGT@label@englishadvisorenterprise~&~\songti\zihao{-4}\CUGT@value@englishadvisorenterprise \\
  \end{tabular}
  \vspace{1em}\\
  \zihao{4}\MakeUppercase\CUGT@label@englishabstract
  \end{center}
  \hspace{2ex}
  \zihao{5}
  }{}

%%Ӣ�Ĺؼ���
\newcommand\englishkeywords[1]{%
  \vspace{2ex}\noindent{\bf\zihao{5} \CUGT@label@englishkeywords~\zihao{5}{\textbf{:}}  ~~\bf \zihao{5}#1}}
%���´�����������������̫�Ե��������������ã�
\RequirePackage{listings}
\lstset{
  language=Matlab,
  numberbychapter=true,
  basicstyle=\small,
  numbers=left,
  keywordstyle=\color{blue},
  numberstyle={\tiny\color{lightgray}},
  stepnumber=1,                      %�кŻ��������ϵ���
  numbersep=5pt,
  commentstyle=\small\color{red},
  backgroundcolor=\color[rgb]{0.95,1.0,1.0},
  showspaces=false,                  %��ʾ�ո�
  showtabs=false,
  breaklines=true,                   %�Զ�����
  frame=shadowbox, framexleftmargin=5mm, rulesepcolor=\color{red!20!green!20!blue!20!},
    flexiblecolumns=true,
    breaklines=true,            %�Թ����Ĵ����Զ�����
    breakautoindent=true,
    breakindent=1em,
   keepspaces=true,
    extendedchars=false,
    columns=flexible,
    mathescape=true,
     frame=single,
%  TABframe=single,
  tabsize=4,
  aboveskip=1em,
  breaklines=tr,
  extendedchars=false %��һ���������Խ���������ҳʱ���½ڱ��⣬ҳü�Ⱥ��ֲ���ʾ������
}
%���ϴ�������

%�趨��������
\newcommand{\PreserveBackslash}[1]{\let\temp=\\#1\let\\=\temp}
\newcolumntype{C}[1]{>{\PreserveBackslash\centering}p{#1}}

%%
%% End of file `CUGthesis-c5size-270mm��195mm.cls'.
