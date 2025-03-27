
default: session.txt.tex \
	md5.py.tex \
	withopen.py.tex \
	listdir.py.tex \
	projekt_ps_2022.pdf

projekt_ps_2022.pdf: projekt_ps_2022.tex method_READ.tex method_LS.tex method_LENGTH.tex
	xelatex projekt_ps_2022.tex
	xelatex projekt_ps_2022.tex

method_%.tex : method_%.yaml ./render_method templates/method.tex
	./render_method method_$(*F).yaml $(*F)> $@

%.tex: %
	pygmentize -f latex -O encoding=utf-8 $(*F) > $@

pygments.tex:
	python get_pygments_tex.py > pygments.tex

