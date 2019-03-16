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
	disjoint_sets_1/docs/disjoint_sets_1.pdf\
	disjoint_sets_2/docs/disjoint_sets_2.pdf\
	disjoint_sets_move/docs/disjoint_sets_move.pdf\
	disjoint_sets_isolate/docs/disjoint_sets_isolate.pdf\
	hashpipe/docs/hashpipe.pdf\
	heaps/docs/heaps.pdf\
	strangestack/docs/strangestack.pdf\
	asymptotic/docs/asymptotic.pdf\
	catenablequeue/docs/catenablequeue.pdf

all: $(ALLPDF)

clean:
	rm -f $(ALLPDF) */docs/{vc.tex,*.{aux,log}}

%.pdf : %.tex
	bash createpdf.sh $@

congress/docs/congress.pdf: congress/docs/congressphoto.pdf

gorillahash/docs/gorillahash.pdf: gorillahash/docs/sea_cucumber.png

mario/docs/mario.pdf: mario/docs/mario.png mario/docs/racetrack.pdf
