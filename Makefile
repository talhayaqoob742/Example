
MDS=$(wildcard *.md)
PDFS=$(MDS:.md=.pdf)

default: $(PDFS)

%.pdf: %.md 
        rinoh $< 2> /dev/null
        rm $(basename $@).rtc $(basename $@).stylelog
