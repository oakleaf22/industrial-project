# Make sure that paper.tex is the first item of the
# following list.  Otherwise paper.pdf target won't work.

CHAPTER_DIR := Chapters/

SRC := main.tex \
			 $(CHAPTER_DIR)01-intro.tex \
			 $(CHAPTER_DIR)02-lit_rev.tex \
			 $(CHAPTER_DIR)03-scoping.tex \
			 $(CHAPTER_DIR)04-aim.tex \
			 $(CHAPTER_DIR)05-methodology.tex \
			 $(CHAPTER_DIR)06-communication.tex \
			 $(CHAPTER_DIR)07-tools.tex \
			 $(CHAPTER_DIR)08-prescription.tex \
			 $(CHAPTER_DIR)09-real_world.tex \
			 $(CHAPTER_DIR)10-discussion.tex \
			 $(CHAPTER_DIR)11-ccl.tex \
       Bibliography.bib

main.pdf: $(SRC)
	if which latexmk > /dev/null 2>&1 ;\
        then latexmk -pdf -f -pdflatex='pdflatex -halt-on-error' $< ;\
        else pdflatex $< && \
        bibtex $(patsubst %.tex,%,$<) && \
        pdflatex $< ;\
        pdflatex $< ;\
        fi

clean:
	$(RM) *.aux *.log *.out *.vrb main.pdf \
              *.bbl *.blg *.fdb_latexmk *.toc *.fls *.cut
