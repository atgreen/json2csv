json2csv: *.lisp Makefile
	buildapp --output json2csv \
		--asdf-path `pwd`/.. \
		--asdf-tree ~/quicklisp/dists/quicklisp/software \
		--load-system json2csv \
		--compress-core \
		--entry "json2csv:main"

clean:
	-rm -f json2csv
	-rm -f *~
