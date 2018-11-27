%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Thesis LaTeX Template - THESIS CLASS FILE
%
% This template has been downloaded from:
% http://www.latextemplates.com
%
% This class file defines the structure and design of the template. 
%
% There is one part of this file that needs to be filled out - the variables
% dictating the document particulars such as the author name, university
% name, etc. You will find these in the commented "DOCUMENT VARIABLES"
% section below.
%
% The other two easily-editable sections are the margin sizes and abstract.
% These have both been commented for easy editing. Advanced LaTeX
% users will have no trouble editing the rest of the document to their liking.
%
% Original header:
%% This is file `Thesis.cls', based on 'ECSthesis.cls', by Steve R. Gunn
%% generated with the docstrip utility.
%%
%% Created by Steve R. Gunn, modified by Sunil Patel: www.sunilpatel.co.uk
%% Further modified by www.latextemplates.com
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\NeedsTeXFormat{LaTeX2e}[1996/12/01]
\ProvidesClass{Thesis}
              [2007/22/02 v1.0
   LaTeX document class]
\def\baseclass{book}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{\baseclass}}
\def\@checkoptions#1#2{
  \edef\@curroptions{\@ptionlist{\@currname.\@currext}}
  \@tempswafalse
  \@tfor\@this:=#2\do{
    \@expandtwoargs\in@{,\@this,}{,\@curroptions,}
    \ifin@ \@tempswatrue \@break@tfor \fi}
  \let\@this\@empty
  \if@tempswa \else \PassOptionsToClass{#1}{\baseclass}\fi
}
\@checkoptions{11pt}{{10pt}{11pt}{12pt}}
\PassOptionsToClass{a4paper}{\baseclass}
\ProcessOptions\relax
\LoadClass{\baseclass}
\newcommand\bhrule{\typeout{------------------------------------------------------------------------------}}

\newcommand\Declaration[1]{
\btypeout{Declaration of Authorship}
\addtotoc{Declaration of Authorship}
\thispagestyle{plain}
\null\vfil
%\vskip 60\p@
\begin{center}{\huge\bf Declaration of Authorship\par}\end{center}
%\vskip 60\p@
{\normalsize #1}
\vfil\vfil\null
%\cleardoublepage
}

\newcommand\btypeout[1]{\bhrule\typeout{\space #1}\bhrule}
\def\today{\ifcase\month\or
  January\or February\or March\or April\or May\or June\or
  July\or August\or September\or October\or November\or December\fi
  \space \number\year}
\usepackage{setspace}
\onehalfspacing
\setlength{\parindent}{0pt}
\setlength{\parskip}{2.0ex plus0.5ex minus0.2ex}
\usepackage{vmargin}

\RequirePackage[utf8]{inputenc} % Allows the use of international characters (e.g. Umlauts)

%----------------------------------------------------------------------------------------
%	MARGINS
%----------------------------------------------------------------------------------------
\setmarginsrb  {  20mm}  % left margin
                        {  20mm}  % top margin
                        {  20mm}  % right margin
                        {  20mm}  % bottom margin
                        {  20pt}  % head height
                        {0.25in}  % head sep
                        {   9pt}  % foot height
                        { 0.3in}  % foot sep
%----------------------------------------------------------------------------------------
\raggedbottom
\setlength{\topskip}{1\topskip \@plus 5\p@}
\doublehyphendemerits=10000       % No consecutive line hyphens.
\brokenpenalty=10000              % No broken words across columns/pages.
\widowpenalty=9999                % Almost no widows at bottom of page.
\clubpenalty=9999                 % Almost no orphans at top of page.
\interfootnotelinepenalty=9999    % Almost never break footnotes.
\usepackage{fancyhdr}
\lhead[\rm\thepage]{\fancyplain{}{\sl{\rightmark}}}
\rhead[\fancyplain{}{\sl{\leftmark}}]{\rm\thepage}
\chead{}\lfoot{}\rfoot{}\cfoot{}
\pagestyle{fancy}
\renewcommand{\chaptermark}[1]{\btypeout{\thechapter\space #1}\markboth{\@chapapp\ \thechapter\ #1}{\@chapapp\ \thechapter\ #1}}
\renewcommand{\sectionmark}[1]{}
\renewcommand{\subsectionmark}[1]{}
\def\cleardoublepage{\clearpage\if@twoside \ifodd\c@page\else
\hbox{}
\thispagestyle{empty}
\newpage
\if@twocolumn\hbox{}\newpage\fi\fi\fi}
\usepackage{amsmath,amsfonts,amssymb,amscd,amsthm,xspace}
\theoremstyle{plain}
\newtheorem{example}{Example}[chapter]
\newtheorem{theorem}{Theorem}[chapter]
\newtheorem{corollary}[theorem]{Corollary}
\newtheorem{lemma}[theorem]{Lemma}
\newtheorem{proposition}[theorem]{Proposition}
\newtheorem{axiom}[theorem]{Axiom}
\theoremstyle{definition}
\newtheorem{definition}[theorem]{Definition}
\theoremstyle{remark}
\newtheorem{remark}[theorem]{Remark}
\usepackage[centerlast,small,sc]{caption}
\setlength{\captionmargin}{20pt}
\newcommand{\fref}[1]{Figure~\ref{#1}}
\newcommand{\tref}[1]{Table~\ref{#1}}
\newcommand{\eref}[1]{Equation~\ref{#1}}
\newcommand{\cref}[1]{Chapter~\ref{#1}}
\newcommand{\sref}[1]{Section~\ref{#1}}
\newcommand{\aref}[1]{Appendix~\ref{#1}}
\renewcommand{\topfraction}{0.85}
\renewcommand{\bottomfraction}{.85}
\renewcommand{\textfraction}{0.1}
\renewcommand{\dbltopfraction}{.85}
\renewcommand{\floatpagefraction}{0.75}
\renewcommand{\dblfloatpagefraction}{.75}
\setcounter{topnumber}{9}
\setcounter{bottomnumber}{9}
\setcounter{totalnumber}{20}
\setcounter{dbltopnumber}{9}
\usepackage{graphicx}
\usepackage{epstopdf}
\usepackage{booktabs}
\usepackage{rotating}
\usepackage{listings}
\usepackage{lstpatch}
\lstset{captionpos=b,
        frame=tb,
        basicstyle=\scriptsize\ttfamily,
        showstringspaces=false,
        keepspaces=true}
\lstdefinestyle{matlab} {
        language=Matlab,
        keywordstyle=\color{blue},
        commentstyle=\color[rgb]{0.13,0.55,0.13}\em,
        stringstyle=\color[rgb]{0.7,0,0} }
\usepackage[pdfpagemode={UseOutlines},bookmarks=true,bookmarksopen=true,
   bookmarksopenlevel=0,bookmarksnumbered=true,hypertexnames=false,
   colorlinks,linkcolor={blue},citecolor={blue},urlcolor={red},
   pdfstartview={FitV},unicode,breaklinks=true]{hyperref}
\pdfstringdefDisableCommands{
   \let\\\space
}
\usepackage{rotating}
\newcommand*{\supervisor}[1]{\def\supname{#1}}
\newcommand*{\thesistitle}[1]{\def\ttitle{#1}}
\newcommand*{\examiner}[1]{\def\examname{#1}}
\newcommand*{\degree}[1]{\def\degreename{#1}}
\newcommand*{\authors}[1]{\def\authornames{#1}}
\newcommand*{\addresses}[1]{\def\addressnames{#1}}
\newcommand*{\university}[1]{\def\univname{#1}}
\newcommand*{\UNIVERSITY}[1]{\def\UNIVNAME{#1}}
\newcommand*{\department}[1]{\def\deptname{#1}}
\newcommand*{\DEPARTMENT}[1]{\def\DEPTNAME{#1}}
\newcommand*{\group}[1]{\def\groupname{#1}}
\newcommand*{\GROUP}[1]{\def\GROUPNAME{#1}}
\newcommand*{\faculty}[1]{\def\facname{#1}}
\newcommand*{\FACULTY}[1]{\def\FACNAME{#1}}
\newcommand*{\subject}[1]{\def\subjectname{#1}}
\newcommand*{\keywords}[1]{\def\keywordnames{#1}}



%----------------------------------------------------------------------------------------
%	COURSE CODES
%	Fill in the lines below to update the thesis template
%	If you wish to cite each of the variables defined below, look at the
%	section above for the citation command e.g. \thermal{} below is
%	defined as \tps above so you cite it as \tps
%----------------------------------------------------------------------------------------
\newcommand*{\ConstructionTechnologyOne}[1]{\def\ConTechOne{#1}}
\ConstructionTechnologyOne{D37TA} % 
%-------------------------------------------------  

\newcommand*{\HistoryoftheBuiltEnvironment}[1]{\def\HBE{#1}}
\HistoryoftheBuiltEnvironment{D17HH} % 
%-------------------------------------------------

\newcommand*{\IntroductiontoDesign}[1]{\def\ID{#1}}
\IntroductiontoDesign{D17DE} % 
%-------------------------------------------------

\newcommand*{\MathematicsforEngineersandScientistsOne}[1]{\def\MESOne{#1}}
\MathematicsforEngineersandScientistsOne{F17XA} % 
%-------------------------------------------------

\newcommand*{\BuildingServicesTechnology}[1]{\def\BST{#1}}
\BuildingServicesTechnology{D18BT} % 
%-------------------------------------------------

\newcommand*{\MechanicsB}[1]{\def\MechB{#1}}
\MechanicsB{D27MB} % 
%-------------------------------------------------

\newcommand*{\IntroductiontotheEnvironment}[1]{\def\IE{#1}}
\IntroductiontotheEnvironment{D47IE} % 
%-------------------------------------------------

\newcommand*{\MathematicsforEngineersandScientistsTwo}[1]{\def\MESTwo{#1}}
\MathematicsforEngineersandScientistsTwo{F17XB} % 
%-------------------------------------------------

\newcommand*{\DesignProjectA}[1]{\def\DPA{#1}}
\DesignProjectA{D18PA} % 
%-------------------------------------------------

\newcommand*{\ConstructionTechnologyTwo}[1]{\def\ConTechTwo{#1}}
\ConstructionTechnologyTwo{D38TA} % 
%-------------------------------------------------

\newcommand*{\AcousticsandArchitecturalDesign}[1]{\def\Acoustics{#1}}
\AcousticsandArchitecturalDesign{D18AB} % 
%-------------------------------------------------

\newcommand*{\HydraulicsandHydrologyA}[1]{\def\HYD{#1}}
\HydraulicsandHydrologyA{D28HA} % 
%-------------------------------------------------

\newcommand*{\EnvironmentandBehaviour}[1]{\def\EnvBeh{#1}}
\EnvironmentandBehaviour{D17BG} % 
%-------------------------------------------------

\newcommand*{\StatisticsforScience}[1]{\def\Stats{#1}}
\StatisticsforScience{F78SC} % 
%-------------------------------------------------

\newcommand*{\EnergyPrinciplesandApplications}[1]{\def\EPA{#1}}
\EnergyPrinciplesandApplications{D18EP} % 
%-------------------------------------------------

\newcommand*{\DesignProjectB}[1]{\def\DPB{#1}}
\DesignProjectB{D18DP} % 
%-------------------------------------------------

\newcommand*{\CriticalArchitecturalStudies}[1]{\def\CAS{#1}}
\CriticalArchitecturalStudies{D19CX} % 
%-------------------------------------------------

\newcommand*{\ElectricalandLightingServicesforBuildings}[1]{\def\ELS{#1}}
\ElectricalandLightingServicesforBuildings{D19EL} % 
%-------------------------------------------------

\newcommand*{\DesignSoftwareApplications}[1]{\def\DSA{#1}}
\DesignSoftwareApplications{D19SO} % 
%-------------------------------------------------

\newcommand*{\ProcurementandContracts}[1]{\def\PC{#1}}
\ProcurementandContracts{D39PZ} % 
%-------------------------------------------------

\newcommand*{\EnergyandBuildings}[1]{\def\EnBldgs{#1}}
\EnergyandBuildings{D19EB} % 
%-------------------------------------------------

\newcommand*{\ThermalPerformanceStudies}[1]{\def\TPS{#1}}
\ThermalPerformanceStudies{D19TP} % 
%-------------------------------------------------

\newcommand*{\DesignIssues}[1]{\def\DI{#1}}
\DesignIssues{D19DI} % 
%-------------------------------------------------

\newcommand*{\FacilitiesManagementPrinciples}[1]{\def\FMP{#1}}
\FacilitiesManagementPrinciples{D38FM} % 
%-------------------------------------------------

\newcommand*{\DesignProject}[1]{\def\PRJ{#1}}
\DesignProject{D10YD/F} % 
%-------------------------------------------------

\newcommand*{\Dissertation}[1]{\def\DST{#1}}
\Dissertation{D10ZA/B} % 
%-------------------------------------------------

\newcommand*{\LaboratoryProject}[1]{\def\LAB{#1}}
\LaboratoryProject{D10LP} % 
%-------------------------------------------------

\newcommand*{\InclusiveandSafeEnvironments}[1]{\def\ISE{#1}}
\InclusiveandSafeEnvironments{D10IE} % 
%-------------------------------------------------

\newcommand*{\SustainableandIntelligentBuildings}[1]{\def\SIB{#1}}
\SustainableandIntelligentBuildings{D10IS} % 
%-------------------------------------------------

\newcommand*{\InnovationinConstructionPractice}[1]{\def\ICP{#1}}
\InnovationinConstructionPractice{D30IC} % 
%-------------------------------------------------

\newcommand*{\IndustrialProject}[1]{\def\IP{#1}}
\IndustrialProject{D11PJ} % 
%-------------------------------------------------

\newcommand*{\ClimateChangeSustainabilityandAdaptation}[1]{\def\CCSA{#1}}
\ClimateChangeSustainabilityandAdaptation{D11CA} % 
%-------------------------------------------------

\newcommand*{\WaterSupplyandDrainageforBuildings}[1]{\def\WSD{#1}}
\WaterSupplyandDrainageforBuildings{D21WC} % 
%-------------------------------------------------

\newcommand*{\ArchitecturalAcoustics}[1]{\def\AA{#1}}
\ArchitecturalAcoustics{D11AF} % 
%-------------------------------------------------

\newcommand*{\DesignofLowCarbonBuildings}[1]{\def\LCB{#1}}
\DesignofLowCarbonBuildings{D11DC} % 
%-------------------------------------------------

\newcommand*{\Thermofluids}[1]{\def\Thermo{#1}}
\Thermofluids{D11TH} % 
%-------------------------------------------------



%----------------------------------------------------------------------------------------
%	COURSE TITLES
%	Fill in the lines below to update the thesis template
%	If you wish to cite each of the variables defined below, look at the
%	section above for the citation command e.g. \thermal{} below is
%	defined as \tps above so you cite it as \tps
%----------------------------------------------------------------------------------------
\newcommand*{\ConstructionTechnologyOneTitle}[1]{\def\ConTechOneTitle{#1}}
\ConstructionTechnologyOneTitle{\textit{Construction Technology 1}} % 
%-------------------------------------------------  

\newcommand*{\HistoryoftheBuiltEnvironmentTitle}[1]{\def\HBETitle{#1}}
\HistoryoftheBuiltEnvironmentTitle{\textit{History of the Built Environment}} % 
%-------------------------------------------------

\newcommand*{\IntroductiontoDesignTitle}[1]{\def\IDTitle{#1}}
\IntroductiontoDesignTitle{\textit{Introduction to Design}} % 
%-------------------------------------------------

\newcommand*{\MathematicsforEngineersandScientistsOneTitle}[1]{\def\MESOneTitle{#1}}
\MathematicsforEngineersandScientistsOneTitle{\textit{Mathematics for Engineers and Scientists 1}} % 
%-------------------------------------------------

\newcommand*{\BuildingServicesTechnologyTitle}[1]{\def\BSTTitle{#1}}
\BuildingServicesTechnologyTitle{\textit{Building Services Technology}} % 
%-------------------------------------------------

\newcommand*{\MechanicsBTitle}[1]{\def\MechBTitle{#1}}
\MechanicsBTitle{\textit{Mechanics B}} % 
%-------------------------------------------------

\newcommand*{\IntroductiontotheEnvironmentTitle}[1]{\def\IETitle{#1}}
\IntroductiontotheEnvironmentTitle{\textit{Introduction to the Environment}} % 
%-------------------------------------------------

\newcommand*{\MathematicsforEngineersandScientistsTwoTitle}[1]{\def\MESTwoTitle{#1}}
\MathematicsforEngineersandScientistsTwoTitle{\textit{Mathematics for Engineers and Scientists 2}} % 
%-------------------------------------------------

\newcommand*{\DesignProjectATitle}[1]{\def\DPATitle{#1}}
\DesignProjectATitle{\textit{Design Project A}} % 
%-------------------------------------------------

\newcommand*{\ConstructionTechnologyTwoTitle}[1]{\def\ConTechTwoTitle{#1}}
\ConstructionTechnologyTwoTitle{\textit{Construction Technology 2}} % 
%-------------------------------------------------

\newcommand*{\AcousticsandArchitecturalDesignTitle}[1]{\def\AcousticsTitle{#1}}
\AcousticsandArchitecturalDesignTitle{\textit{Acoustics and Architectural Design}} % 
%-------------------------------------------------

\newcommand*{\HydraulicsandHydrologyATitle}[1]{\def\HYDTitle{#1}}
\HydraulicsandHydrologyATitle{\textit{Hydraulics and Hydrology A}} % 
%-------------------------------------------------

\newcommand*{\EnvironmentandBehaviourTitle}[1]{\def\EnvBehTitle{#1}}
\EnvironmentandBehaviourTitle{\textit{Environment and Behaviour}} % 
%-------------------------------------------------

\newcommand*{\StatisticsforScienceTitle}[1]{\def\StatsTitle{#1}}
\StatisticsforScienceTitle{\textit{Statistics for Science}} % 
%-------------------------------------------------

\newcommand*{\EnergyPrinciplesandApplicationsTitle}[1]{\def\EPATitle{#1}}
\EnergyPrinciplesandApplicationsTitle{\textit{Energy Principles and Applications}} % 
%-------------------------------------------------

\newcommand*{\DesignProjectBTitle}[1]{\def\DPBTitle{#1}}
\DesignProjectBTitle{\textit{Design Project B}} % 
%-------------------------------------------------

\newcommand*{\CriticalArchitecturalStudiesTitle}[1]{\def\CASTitle{#1}}
\CriticalArchitecturalStudiesTitle{\textit{Critical Architectural Studies}} % 
%-------------------------------------------------

\newcommand*{\ElectricalandLightingServicesforBuildingsTitle}[1]{\def\ELSTitle{#1}}
\ElectricalandLightingServicesforBuildingsTitle{\textit{Electrical and Lighting Services for Buildings}} % 
%-------------------------------------------------

\newcommand*{\DesignSoftwareApplicationsTitle}[1]{\def\DSATitle{#1}}
\DesignSoftwareApplicationsTitle{\textit{Design Software Applications}} % 
%-------------------------------------------------

\newcommand*{\ProcurementandContractsTitle}[1]{\def\PCTitle{#1}}
\ProcurementandContractsTitle{\textit{Procurement and Contracts}} % 
%-------------------------------------------------

\newcommand*{\EnergyandBuildingsTitle}[1]{\def\EnBldgsTitle{#1}}
\EnergyandBuildingsTitle{\textit{Energy and Buildings}} % 
%-------------------------------------------------

\newcommand*{\ThermalPerformanceStudiesTitle}[1]{\def\TPSTitle{#1}}
\ThermalPerformanceStudiesTitle{\textit{Thermal Performance Studies}} % 
%-------------------------------------------------

\newcommand*{\DesignIssuesTitle}[1]{\def\DITitle{#1}}
\DesignIssuesTitle{\textit{Design Issues}} % 
%-------------------------------------------------

\newcommand*{\FacilitiesManagementPrinciplesTitle}[1]{\def\FMPTitle{#1}}
\FacilitiesManagementPrinciplesTitle{\textit{Facilities Management Principles}} % 
%-------------------------------------------------

\newcommand*{\DesignProjectTitle}[1]{\def\PRJTitle{#1}}
\DesignProjectTitle{\textit{Design Project}} % 
%-------------------------------------------------

\newcommand*{\DissertationTitle}[1]{\def\DSTTitle{#1}}
\DissertationTitle{\textit{Dissertation}} % 
%-------------------------------------------------

\newcommand*{\LaboratoryProjectTitle}[1]{\def\LABTitle{#1}}
\LaboratoryProjectTitle{\textit{Laboratory Project}} % 
%-------------------------------------------------

\newcommand*{\InclusiveandSafeEnvironmentsTitle}[1]{\def\ISETitle{#1}}
\InclusiveandSafeEnvironmentsTitle{\textit{Inclusive and Safe Environments}} % 
%-------------------------------------------------

\newcommand*{\SustainableandIntelligentBuildingsTitle}[1]{\def\SIBTitle{#1}}
\SustainableandIntelligentBuildingsTitle{\textit{Sustainable and Intelligent Buildings}} % 
%-------------------------------------------------

\newcommand*{\InnovationinConstructionPracticeTitle}[1]{\def\ICPTitle{#1}}
\InnovationinConstructionPracticeTitle{\textit{Innovation in Construction Practice}} % 
%-------------------------------------------------

\newcommand*{\IndustrialProjectTitle}[1]{\def\IPTitle{#1}}
\IndustrialProjectTitle{\textit{Industrial Project}} % 
%-------------------------------------------------

\newcommand*{\ClimateChangeSustainabilityandAdaptationTitle}[1]{\def\CCSATitle{#1}}
\ClimateChangeSustainabilityandAdaptationTitle{\textit{Climate Change, Sustainability and Adaptation}} % 
%-------------------------------------------------

\newcommand*{\WaterSupplyandDrainageforBuildingsTitle}[1]{\def\WSDTitle{#1}}
\WaterSupplyandDrainageforBuildingsTitle{\textit{Water Supply and Drainage for Buildings}} % 
%-------------------------------------------------

\newcommand*{\ArchitecturalAcousticsTitle}[1]{\def\AATitle{#1}}
\ArchitecturalAcousticsTitle{\textit{Architectural Acoustics}} % 
%-------------------------------------------------

\newcommand*{\DesignofLowCarbonBuildingsTitle}[1]{\def\LCBTitle{#1}}
\DesignofLowCarbonBuildingsTitle{\textit{Design of Low Carbon Buildings}} % 
%-------------------------------------------------

\newcommand*{\ThermofluidsTitle}[1]{\def\ThermoTitle{#1}}
\ThermofluidsTitle{\textit{Thermofluids}} % 
%-------------------------------------------------



%----------------------------------------------------------------------------------------
%	DOCUMENT VARIABLES
%	Fill in the lines below to update the thesis template
%	If you wish to cite each of the variables defined below, look at the
%	section above for the citation command e.g. \examiner{} below is
%	defined as \examname above so you cite it as \examname
%----------------------------------------------------------------------------------------

\thesistitle{It's More Complicated Than That: A Study of Discrepancies Between Industry Guidance and Practice in Building Services Engineers’ Processes for Collaboration in the UK} % Your thesis title - this is used in the title and abstract
%-------------------------------------------------  
\supervisor{Alex \textsc{Maclaren}} % You supervisor's name - this is used in the title page
%-------------------------------------------------   
\examiner{} % Your examiner's name - this is not currently used anywhere in the template, cite it with \examname if you want it
%-------------------------------------------------   
\degree{MEng Architectural Engineering} % Your degree name - this is currently used in the title page and abstract
%-------------------------------------------------   
\authors{Stephanie \textsc{Baird-Eklöw}} % Your name - this is used in the title page and abstract
%-------------------------------------------------   
\addresses{} % Your address - this is not currently used anywhere in the template, cite it with \addressnames if you want it
%-------------------------------------------------   
\subject{} % Your subject area - this is not currently used anywhere in the template, cite it with \subjectname if you want it
%-------------------------------------------------   
\keywords{} % Keywords for your thesis - this is not currently used anywhere in the template, cite it with \keywordnames if you want it
%-------------------------------------------------   
\university{\texorpdfstring{\href{http://www.hw.ac.uk} % Your university's URL
                {Heriot-Watt University}} % Your university's name - this is currently used in the title page
                {Heriot-Watt University}}
%-------------------------------------------------   
\UNIVERSITY{\texorpdfstring{\href{http://www.hw.ac.uk)} % Your university's URL
                {HERIOT-WATT UNIVERSITY}} % Your university's name in capitals - this is currently used in the abstract page
                {HERIOT-WATT UNIVERSITY}}
%-------------------------------------------------                
\department{School of Energy, Geoscience, Infrastructure and Society} % Your department's name - used in the title page and abstract
%-------------------------------------------------                
\DEPARTMENT{SCHOOL OF ENERGY, GEOSCIENCE, INFRASTRUCTURE AND SOCIETY} % Your department's name in capitals - this is not currently used anywhere in the template, cite it with \DEPTNAME if you want it
%-------------------------------------------------                
\group{\texorpdfstring{\href{Research Group Web Site URL Here (include http://)} % Your research group's URL
                {Research Group Name}} % Your research group's name - this is currently used in the title page 
                {Research Group Name}}
%-------------------------------------------------                
\GROUP{\texorpdfstring{\href{Research Group Web Site URL Here (include http://)} % Your research group's URL
                {RESEARCH GROUP NAME (IN BLOCK CAPITALS)}} % Your research group's name in capitals - this is not currently used anywhere in the template, cite it with \GROUPNAME if you want it
                {RESEARCH GROUP NAME (IN BLOCK CAPITALS)}}
%-------------------------------------------------                
\faculty{\texorpdfstring{\href{Faculty Web Site URL Here (include http://)} % Your faculty's URL
                {Faculty Name}} % Your faculty's name - this is currently used in the abstract page
                {Faculty Name}}
%-------------------------------------------------                
\FACULTY{\texorpdfstring{\href{Faculty Web Site URL Here (include http://)} % Your faculty's URL
                {FACULTY NAME (IN BLOCK CAPITALS)}} % Your faculty's name in capitals - this is not currently used anywhere in the template, cite it with \FACNAME if you want it
                {FACULTY NAME (IN BLOCK CAPITALS)}}
%----------------------------------------------------------------------------------------    

% The default title page, this is not used in this www.latextemplates.com version            
\renewcommand\maketitle{
  \btypeout{Title Page}
  \hypersetup{pdftitle={\@title}}
  \hypersetup{pdfsubject=\subjectname}
  \hypersetup{pdfauthor=\authornames}
  \hypersetup{pdfkeywords=\keywordnames}
  \thispagestyle{empty}
  \begin{titlepage}
    \let\footnotesize\small
    \let\footnoterule\relax
    \let \footnote \thanks
    \setcounter{footnote}{0}
    \null\vfil
    \vskip 60\p@
    \begin{center}
      \setlength{\parskip}{0pt}
      {\large\textbf{\UNIVNAME}\par}
      \vfill
      {\huge \bf \@title \par}
      \vfill
      {\LARGE by \par}
      \smallskip
      {\LARGE \authornames \par}
      \vfill
      {\large A thesis submitted in partial fulfilment for the \par}
      {\large degree of \degreename \par}
      \bigskip
      \bigskip
      {\large in the \par}
      {\large \facname \par}
      {\large \deptname \par} 
      \bigskip
      \bigskip
      \bigskip
      {\Large \@date \par}
      \bigskip
    \end{center}
    \par
    \@thanks
    \vfil\null
  \end{titlepage}
  \setcounter{footnote}{0}%
  \global\let\thanks\relax
  \global\let\maketitle\relax
  \global\let\@thanks\@empty
  \global\let\@author\@empty
  \global\let\@date\@empty
  \global\let\@title\@empty
  \global\let\title\relax
  \global\let\author\relax
  \global\let\date\relax
  \global\let\and\relax
  \cleardoublepage
}
%----------------------------------------------------------------------------------------
%	ABSTRACT PAGE DESIGN
%----------------------------------------------------------------------------------------
\newenvironment{abstract}
{
  \btypeout{Abstract Page}
  \thispagestyle{empty}
  \null\vfil
  \begin{center}
    \setlength{\parskip}{0pt}
    {\normalsize \UNIVNAME \par} % University name in capitals
    \bigskip
    {\huge{\textit{Abstract}} \par}
    \bigskip
  %  {\normalsize \facname \par} % Faculty name
    {\normalsize \deptname \par} % Department name
    \bigskip
    {\normalsize \degreename\par} % Degree name
    \bigskip
    {\normalsize\bf \@title \par} % Thesis title
    \medskip
    {\normalsize by \authornames \par} % Author name
    \bigskip
  \end{center}
}
%----------------------------------------------------------------------------------------
{
  \vfil\vfil\vfil\null
  \cleardoublepage
}
\setcounter{secnumdepth}{5}
\setcounter{tocdepth}{2}
\newcounter{dummy}
\newcommand\addtotoc[1]{
\refstepcounter{dummy}
\addcontentsline{toc}{chapter}{#1}}
\renewcommand\tableofcontents{
\btypeout{Table of Contents}
\addtotoc{Contents}
\begin{spacing}{1}{
    \setlength{\parskip}{1pt}
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{\contentsname
        \@mkboth{
           \MakeUppercase\contentsname}{\MakeUppercase\contentsname}}
    \@starttoc{toc}
    \if@restonecol\twocolumn\fi
   \cleardoublepage
}\end{spacing}
}
\renewcommand\listoffigures{
\btypeout{List of Figures}
\addtotoc{List of Figures}
\begin{spacing}{1}{
    \setlength{\parskip}{1pt}
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{\listfigurename
      \@mkboth{\MakeUppercase\listfigurename}
              {\MakeUppercase\listfigurename}}
    \@starttoc{lof}
    \if@restonecol\twocolumn\fi
    \cleardoublepage
}\end{spacing}
}
\renewcommand\listoftables{
\btypeout{List of Tables}
\addtotoc{List of Tables}
\begin{spacing}{1}{
    \setlength{\parskip}{1pt}
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{\listtablename
      \@mkboth{
          \MakeUppercase\listtablename}{\MakeUppercase\listtablename}}
    \@starttoc{lot}
    \if@restonecol\twocolumn\fi
    \cleardoublepage
}\end{spacing}
}
\newcommand\listsymbolname{Abbreviations}
\usepackage{longtable}
\newcommand\listofsymbols[2]{
\btypeout{\listsymbolname}
\addtotoc{\listsymbolname}
    \chapter*{\listsymbolname
      \@mkboth{
          \MakeUppercase\listsymbolname}{\MakeUppercase\listsymbolname}}
\begin{longtable}[c]{#1}#2\end{longtable}\par
    \cleardoublepage
}
\newcommand\listconstants{Physical Constants}
\usepackage{longtable}
\newcommand\listofconstants[2]{
\btypeout{\listconstants}
\addtotoc{\listconstants}
    \chapter*{\listconstants
      \@mkboth{
          \MakeUppercase\listconstants}{\MakeUppercase\listconstants}}
\begin{longtable}[c]{#1}#2\end{longtable}\par
    \cleardoublepage
}
\newcommand\listnomenclature{Symbols}
\usepackage{longtable}
\newcommand\listofnomenclature[2]{
\btypeout{\listnomenclature}
\addtotoc{\listnomenclature}
    \chapter*{\listnomenclature
      \@mkboth{
          \MakeUppercase\listnomenclature}{\MakeUppercase\listnomenclature}}
\begin{longtable}[c]{#1}#2\end{longtable}\par
    \cleardoublepage
}
\newcommand\acknowledgements[1]{
\btypeout{Acknowledgements}
\addtotoc{Acknowledgements}
\thispagestyle{plain}
\begin{center}{\huge{\textit{Acknowledgements}} \par}\end{center}
{\normalsize #1}
\vfil\vfil\null

}
\newcommand\dedicatory[1]{
\btypeout{Dedicatory}
\thispagestyle{plain}
\null\vfil
\vskip 60\p@
\begin{center}{\Large \sl #1}\end{center}
\vfil\null
\cleardoublepage
}
\renewcommand\backmatter{
  \if@openright
    \cleardoublepage
  \else
    \clearpage
  \fi
  \addtotoc{\bibname}
  \btypeout{\bibname}
  \@mainmatterfalse}
\endinput