# PHD thesis in Nagoya University
# 28, Jan, 2023@Tingting WANG
# Usage: 
# make pdf to generate phd thesis pdf version # compile all scripts

# set python environment

BASEDIR=$(CURDIR)
INPUTDIR=$(BASEDIR)/source
OUTPUTDIR=$(BASEDIR)/output
UTILSDIR=$(BASEDIR)/utils

all: dir titlepage acknow contents 

dir: 
	mkdir -p output
	source ~/.bash_profile

titlepage: 
	pdflatex \
	$(INPUTDIR)/titlepage.tex

acknow: 
	pdflatex \
	$(INPUTDIR)/acknowledgement.tex

contents: 
	pandoc \
	--filter pandoc-crossref \
	$(INPUTDIR)/metadata.yaml \
	$(INPUTDIR)/*.md \
	--to=latex \
	--citeproc \
	--bibliography=$(UTILSDIR)/bibliography-hp36.bib \
	--bibliography=$(UTILSDIR)/bibliography-fixl.bib \
	--bibliography=$(UTILSDIR)/bibliography-cp12.bib \
	--csl=$(UTILSDIR)/american-chemical-society.csl \
	--lua-filter=$(UTILSDIR)/scholarly-metadata.lua \
	--lua-filter=$(UTILSDIR)/pandoc-list-table.lua \
	--lua-filter=$(UTILSDIR)/author-info-blocks.lua \
	-o $(OUTPUTDIR)/contents.pdf

# thesis:
# 	pdfunite \
# 	$(BASEDIR)/titlepage.pdf \
# 	$(BASEDIR)/acknowledgement.pdf \
# 	$(OUTPUTDIR)/contents.pdf \
# 	$(OUTPUTDIR)/thesis.pdf