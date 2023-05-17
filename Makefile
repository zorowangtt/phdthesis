# PHD thesis in Nagoya University
# 28, Jan, 2023@Tingting WANG
# Usage: 
# make pdf to generate phd thesis pdf version # compile all scripts

# set python environment

BASEDIR=$(CURDIR)
INPUTDIR=$(BASEDIR)/source
OUTPUTDIR=$(BASEDIR)/output
UTILSDIR=$(BASEDIR)/utils

all: dir pdf 

dir: 
	mkdir -p output

# generate the manuscript based on markdown file of manuscript.md 
help: 
	@echo 'Makefile for the Markdown thesis                                       '
	@echo '                                                                       '
	@echo 'Usage:                                                                 '
	@echo '   make pdf                         generate a PDF file  			  '
	@echo '     


pdf: 
	pandoc \
	--filter pandoc-crossref \
	-s "$(INPUTDIR)"/metadata.yaml "$(INPUTDIR)"/*.md \
	--toc \
	--to=latex \
	--citeproc \
	--bibliography="$(UTILSDIR)"/bibliography-hp36.bib \
	--bibliography="$(UTILSDIR)"/bibliography-fixl.bib \
	--bibliography="$(UTILSDIR)"/bibliography-cp12.bib \
	--csl="$(UTILSDIR)/american-chemical-society.csl" \
	--lua-filter="$(UTILSDIR)/scholarly-metadata.lua" \
	--lua-filter="$(UTILSDIR)/pandoc-list-table.lua" \
	--lua-filter="$(UTILSDIR)/author-info-blocks.lua" \
	-o "$(OUTPUTDIR)"/thesis.pdf 



