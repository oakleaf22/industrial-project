# Make sure that paper.tex is the first item of the
# following list.  Otherwise paper.pdf target won't work.

CHAPTER_DIR := Chapters/

SRC := main.tex \
			 $(CHAPTER_DIR)01-intro.tex \
			 $(CHAPTER_DIR)02-work_exp.tex \
			 $(CHAPTER_DIR)03-skills_analysis.tex \
			 $(CHAPTER_DIR)04-personal_reflection.tex \
			 $(CHAPTER_DIR)05-ccl.tex \
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
