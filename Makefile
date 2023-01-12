all:
	rm -f _book/*.html
	BOOKDOWN_FULL_PDF=false Rscript --quiet _render.R
	cp -r _book/* _dist/

clean:
	Rscript -e 'bookdown::clean_book(TRUE)'
