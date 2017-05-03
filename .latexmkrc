#!/usr/bin/env perl

# tex -> dvi -> pdf
$pdf_mode = 3;

# uplatex: Japanese LaTeX with its internal encoding unicode
# -kanji=utf8: use utf8 as external encoding
# -synctex=1: output *.synctex.gz for forward/backward search
# -file-line-error: enable file:line:error style messages
# -halt-on-error: halt on error, instead of asking interactively
# -interaction=nonstopmode: halt on file not found, instead of asking interactively
# %O: options
# %S: source file (*.tex)
$latex = 'uplatex -kanji=utf8 -synctex=1 -file-line-error -halt-on-error -interaction=nonstopmode %O %S';

# dvipdfmx: integrated dvi-pdf converter with CJK support
# %O: options
# -o %D: destination file (*.pdf)
# %S: source file (*.dvi)
$dvipdf = 'dvipdfmx %O -o %D %S';

# upbibtex: Japanese BibTeX with its internal encoding unicode
# %O: options
# %B: source file basename (*(.aux))
$bibtex = 'upbibtex %O %B';

# biber: BibLaTeX backend used when *.bcf exists
# -u: input encoding utf8
# -U: output encoding utf8
# %O: options
# %S: source file (*.bcf)
$biber = 'biber -u -U %O %S';

# upmendex: Japanese index processor with its internal encoding unicode
# %O: options
# -o %D: destination file (*.ind)
# %S: source file (*.idx)
$makeindex = 'upmendex %O -o %D %S';
