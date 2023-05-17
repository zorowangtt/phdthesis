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
	-s "$(INPUTDIR)"/metadata.yaml "$(INPUTDIR)"/*.md \
	--toc \
	-o "$(OUTPUTDIR)"/thesis.pdf \
	--bibliography="$(UTILSDIR)"/*.bib \
	--citeproc \
	--filter pandoc-crossref \
	--csl="$(UTILSDIR)/american-chemical-society.csl" \
	--lua-filter="$(UTILSDIR)/scholarly-metadata.lua" \
	--lua-filter="$(UTILSDIR)/pandoc-list-table.lua" \
	--lua-filter="$(UTILSDIR)/author-info-blocks.lua" \
	-V fontsize=12pt \
	-V papersize=a4paper \
	--to=latex 



