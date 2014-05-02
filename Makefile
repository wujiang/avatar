NAME=avatar

all: ${NAME}.pdf ${NAME}.png ${NAME}.svg

${NAME}.pdf: ${NAME}.tex
	pdflatex ${NAME}.tex

${NAME}.png: ${NAME}.tex
	latex ${NAME}.tex
	dvipng -D 231.26 -o ${NAME}.png ${NAME}.dvi

${NAME}.svg: ${NAME}.tex
	pdf2svg ${NAME}.pdf ${NAME}.svg

clean:
	rm -rf *.pdf *.aux *.log *.out *.toc *.png *.dvi *.svg
	rm -rf auto
