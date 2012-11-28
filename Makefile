export TEXINPUTS = styles:figs:~hjs/utils:
export BSTINPUTS = styles:

TEX = latex
BIB = bibtex -min-crossrefs=1000
DVIPS = dvips -Ppdf -G0 -tletter
PSPDF = ps2pdf14 -dPDFSETTINGS=/printer -dMaxSubsetPct=0 -dSubsetFonts=false -dEmbedAllFonts=true -dOptimize=true -sPAPERSIZE=letter
GV = gv
XPDF = xpdf
XDVI = xdvi -postscript 0
EVINCE = evince

T = nada

all : clean pdf

ps : $(T).ps
pdf : $(T).pdf
dvi : $(T).dvi

$(T).dvi : *.tex *.bib figs/*
	$(TEX) $(T)
	-$(BIB) $(T)
	$(TEX) $(T)
	$(TEX) $(T)

$(T).ps : $(T).dvi
	$(DVIPS) $<

$(T).pdf : $(T).ps
	$(PSPDF) $<

xdvi : $(T).dvi
	$(XDVI) $<

gv : $(T).ps
	$(GV) $<

xpdf : $(T).pdf
	$(XPDF) $<

ev : evince
evince : $(T).pdf
	$(EVINCE) $<

clean :
	rm -f $(T).{aux,bbl,blg,dvi,log,out,ps,pdf}