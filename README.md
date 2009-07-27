# Planner inserts #

A set of PostScript and PDF files for Cornell-like notepaper. Three types:

1. Letter-sized paper (8.5 × 11) with side binding margins.
    
    <img src="http://www.leancrew.com/all-this/images/notes-letter.png" />
    
2. Junior-sized paper (5.5 × 8.25) with side binding margins.

    <img src="http://www.leancrew.com/all-this/images/notes-junior.png" />
    
3. Junior-sized paper (5.5 × 8.5) with top binding margins.

    <img src="http://www.leancrew.com/all-this/images/notes-topbinding.png" />

All are intended to be printed on letter-sized paper. The junior-sizes pages are printed two-up.

The PostScript files are the master files; the PDFs are derived from them via the `ps2pdf` utility that ships with [Ghostscript][1]. The multipage PDFs (which end with "-rv") are constructed from the single-page PDFs through a shell script called `pdfcat`:

    #!/bin/bash
    gs -dBATCH -dNOPAUSE -q -sDEVICE=pdfwrite -sOutputFile=- $*

This uses Ghostscript to concatenate the PDF files listed on the command line and send them to stdout.

The Makefile puts everything together. Running `make` creates all the PDF files; running `make clean` deletes all the PDF files.

[1]: http://pages.cs.wisc.edu/~ghost/
