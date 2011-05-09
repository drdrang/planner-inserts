# Makefile for notebook inserts.

all:
	ps2pdf notes-letter-r.ps
	ps2pdf notes-letter-v.ps
	ps2pdf notes-junior-r.ps
	ps2pdf notes-junior-v.ps
	ps2pdf notes-topbinding-r.ps
	ps2pdf notes-topbinding-v.ps
	ps2pdf notes-topbinding-short-r.ps
	ps2pdf notes-topbinding-short-v.ps
	pdfcat notes-letter-r.pdf notes-letter-v.pdf > notes-letter-rv.pdf
	pdfcat notes-junior-r.pdf notes-junior-v.pdf > notes-junior-rv.pdf
	pdfcat notes-topbinding-r.pdf notes-topbinding-v.pdf > notes-topbinding-rv.pdf
	pdfcat notes-topbinding-short-r.pdf notes-topbinding-short-v.pdf > notes-topbinding-short-rv.pdf

clean:
	rm *.pdf
