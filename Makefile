#!/usr/bin/make -f

# Minimal makefile for Sphinx documentation, added 13 Oct 2021.
SPHINXOPTS    =
SPHINXBUILD   = sphinx-build
SOURCEDIR     = .
BUILDDIR      = _build

PAPEROPT_a4     = -D latex_paper_size=a4
PAPEROPT_letter = -D latex_paper_size=letter
ALLSPHINXOPTS   = -d $(BUILDDIR)/doctrees $(PAPEROPT_$(PAPER)) $(SPHINXOPTS) .
ERROROPTS       = -W --keep-going

# Put it first so that "make" without argument is like "make help".
help:
	@$(SPHINXBUILD) -M help "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)

.PHONY: help clean html

clean:
	rm -rf $(BUILDDIR)/*
	@echo "Directories cleaned."
	@rm -rf .venv

html:
	$(SPHINXBUILD) -b html $(ALLSPHINXOPTS) $(BUILDDIR)/html
	@echo
	@echo "Build finished. The HTML pages are in $(BUILDDIR)/html."

venv:
	python -m venv .venv
	. .venv/bin/activate
	python -m pip install -r requirements.txt
	@echo
	@echo "Virtual environment successfully created."
