LATEX	= pdflatex -interaction=nonstopmode -halt-on-error
CV		= JAE-cv
RESUME 	= JAE-resume

all: ${CV}.pdf ${RESUME}.pdf

.PHONY: clean

${CV}.pdf: ${CV}.tex
	${LATEX} ${CV}.tex

${RESUME}.pdf: ${RESUME}.tex
	${LATEX} ${RESUME}.tex

clean:
	rm -rf *.aux *.out *.log *.synctex.gz
