all:
	for f in `ls *.ly`;\
	do lilypond -o pdf $$f;\
	done;\
