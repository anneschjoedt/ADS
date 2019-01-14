ALLPDF=congress/docs/congress.pdf \
	mario/docs/mario.pdf \
	connected-warmup/docs/connected-warmup.pdf \
	mario/docs/report.pdf \
	giantbook/docs/giantbook.pdf \
	randomqueue/docs/randomqueue.pdf\
	randomqueue/docs/report.pdf\
	gorillahash/docs/gorillahash.pdf\
	runsort/docs/runsort.pdf\
	foursum/docs/foursum.pdf\
	foursum/docs/report-foursum.pdf\
	disjointsets1/docs/disjoint_sets_1.pdf\
	disjointsets2/docs/disjoint_sets_2.pdf\
	hashpipe/docs/hashpipe.pdf

all: $(ALLPDF)

clean:
	rm -f $(ALLPDF) */docs/{vc.tex,*.{aux,log}}

%.pdf : %.tex
	bash createpdf.sh $@

congress/docs/congress.pdf: congress/docs/congressphoto.pdf

gorillahash/docs/gorillahash.pdf: gorillahash/docs/sea_cucumber.png

mario/docs/mario.pdf: mario/docs/mario.png mario/docs/racetrack.pdf
