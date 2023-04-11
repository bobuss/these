.PHONY: clean publish

all:
	rm -f _book/*.html
	BOOKDOWN_FULL_PDF=false Rscript --quiet _render.R
	cp -r _book/* _dist/
	cp "These Bertrand Tornil.pdf" _dist/

publish:
	rsync -dav _dist/ bobuss@tornil.net:~/www/these/

clean:
	Rscript -e 'bookdown::clean_book(TRUE)'
