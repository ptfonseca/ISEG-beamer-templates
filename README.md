# ISEG Beamer templates

## About this project

This repository contains three beamer templates tailored for [ISEG](https://www.iseg.ulisboa.pt/aquila/instituicao/ISEG/?locale=en) students and faculty:

- A template for [thesis presentations](https://github.com/pedro-teles-fonseca/ISEG-beamer-templates/tree/master/thesis-presentation-template) (see [pdf](https://github.com/pedro-teles-fonseca/ISEG-beamer-templates/tree/master/thesis-presentation-template/presentation.pdf))

- A template for [lecture slides](https://github.com/pedro-teles-fonseca/ISEG-beamer-templates/tree/master/lecture-slides-template) (see [pdf](https://github.com/pedro-teles-fonseca/ISEG-beamer-templates/tree/master/lecture-slides-template/presentationpdf))

- A [minimalist multi-purpose](https://github.com/pedro-teles-fonseca/ISEG-beamer-templates/tree/master/minimalist-template) template (see [pdf](https://github.com/pedro-teles-fonseca/ISEG-beamer-templates/tree/master/minimalist-template/presentation.pdf))

## About the templates

- The thesis presentation template has a field for advisor/supervisor name
- The lecture slides template has title and subtitle fields (for course name and lecture subject, respectively)
- The minimalist template has no TOC frame, no TOC on the headers, no sections and no subsections
  
## Tl;dr instructions

1. Download or clone this repository

2. Choose a template

3. If you use citations, paste them in biblatex format in the references.bib file.

4. Edit the presentation.tex file

5. Compile the document (the bibliography, if used, should be compiled with biber)

6. You can find your presentation is in the presentation.pdf file

## Detailed instructions

### Customization

I made most of the customizations on scripts that are called from the main tex file so that you only have to edit presentation.tex. Compiling this file will render a presentation in pdf format called presentation.pdf. You can find both these files in the template's main folder.

In the **presentation.tex** file you need to edit the *title* and *author* fields. Uncomment the *subtitle* field in case you want to use it.

```tex
% Title and subtitle
%--------------------------------------------------------------
\title[Presentation with LaTeX]{Presentation with \LaTeX}
%\subtitle{A user friendly template}

% Your name
%--------------------------------------------------------------
\author[Pedro Fonseca]{\textbf{Pedro Fonseca}}

```

The name and the title between in the square brackets will show up on the footer of the frames, and the name and title between curly brackets will be displayed in the title page.

In the lecture slides template the subtitle field is uncommented by default, so you need to comment it out or delete it if you don't want to use it:

```tex
% Title and subtitle
%--------------------------------------------------------------
\title[Lecture slides with LaTeX]{Lecture slides with \LaTeX}
\subtitle{A user friendly template}
```

You can optionally edit the date folder. By default, the presentation will display the date when it was compiled:

```tex
% Date
%--------------------------------------------------------------
\date{\today}
```

In the thesis presentation template you also need to edit the advisor's name:

```tex
% Your name and advisor's name
%--------------------------------------------------------------
\author[Pedro Fonseca]{\textbf{Pedro Fonseca} \\ \footnotesize Advisor: Prof Dr. Rui Paulo}
```

If you don´t want a slide with the TOC after the title page, comment out or delete the inclusion of the **contents-page.tex** file:

```tex
% Table of contents page (can be commented out)
%--------------------------------------------------------------
\include{files/contents-page}
```

You can build your frames after these commented lines:

```tex
%--------------------------------------------------------------
%--------------------------------------------------------------
%  This is where the frames begin
%--------------------------------------------------------------
%--------------------------------------------------------------
```

This is what a basic frame looks like:

```tex
\begin{frame}{frame title}

frame content

\end{frame}
```

Note that frames with the *verbatim* environment should contain the *fragile* option:

```tex
\begin{frame}[fragile]{frame title}

\begin{verbatim}

some text

\end{verbatim}

\end{frame}
```

If you want your definitions and theorems to be numbered go to the preamble.tex file in the files folder and uncomment the following lines:

```tex
% \setbeamertemplate{theorems}[numbered]
% \setbeamertemplate{definitions}[numbered]
```

### References

If you use citations, paste them in the **references.bib** replace it with a file of the same name where you have your citations in biblatex format. I recommend using [Jabref](http://www.jabref.org) to organize your citations and generate bib files.

If you don't want to print the **bibliography** on the last slide, or if you don't use citations on your presentation, comment out or delete the inclusion of the **references-section.tex** file, just before the end of the document:

```tex
% Bibliography page (can be commented out)
%--------------------------------------------------------------
\include{files/references-section}

% End of the document
%--------------------------------------------------------------
\end{document}
```