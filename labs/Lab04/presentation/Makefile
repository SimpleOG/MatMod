<<<<<<< HEAD
SRC = presentation.md
FILES += $(patsubst %.md, %.pdf, $(wildcard *.md))
FILES += $(patsubst %.md, %.html, $(wildcard *.md))

FILTERS =
PDF_ENGINE =
PDF_OPTIONS =
PDF_FORMAT_OPTIONS = -t beamer --slide-level=2

FILTERS += --citeproc
# FILTERS += -F pandoc-crossref
PDF_ENGINE += --pdf-engine=lualatex
PDF_OPTIONS += --number-sections

REVEALJS_THEME = beige

%.pdf: %.md
	-@pandoc "$<" $(FILTERS) $(PDF_ENGINE) $(PDF_OPTIONS) $(PDF_FORMAT_OPTIONS) -o "$@"

%.html: %.md
	-@pandoc "$<" --self-contained -t revealjs -V theme=$(REVEALJS_THEME) -o "$@"

all: $(FILES)

clean:
	-@rm $(FILES) *~

cleanall: clean
=======
SRC = presentation.md
FILES += $(patsubst %.md, %.pdf, $(wildcard *.md))
FILES += $(patsubst %.md, %.html, $(wildcard *.md))

FILTERS =
PDF_ENGINE =
PDF_OPTIONS =
PDF_FORMAT_OPTIONS = -t beamer --slide-level=2

FILTERS += --citeproc
# FILTERS += -F pandoc-crossref
PDF_ENGINE += --pdf-engine=lualatex
PDF_OPTIONS += --number-sections

REVEALJS_THEME = beige

%.pdf: %.md
	-@pandoc "$<" $(FILTERS) $(PDF_ENGINE) $(PDF_OPTIONS) $(PDF_FORMAT_OPTIONS) -o "$@"

%.html: %.md
	-@pandoc "$<" --self-contained -t revealjs -V theme=$(REVEALJS_THEME) -o "$@"

all: $(FILES)

clean:
	-@rm $(FILES) *~

cleanall: clean
>>>>>>> a6f8be1ddfc00fceaac848c5a18f9e077c10a690
