TARGETS=\
AlBello.jpg.eps \
bw1a.jpg.eps \
bw1b.jpg.eps \
crop1a.jpg.eps \
crop1b.jpg.eps \
giffords1.jpg.eps \
giffords2.jpg.eps \
giffords3.jpg.eps \
hue1a.jpg.eps \
hue1b.jpg.eps \
missed1.jpg.eps \
missed2.jpg.eps \
synth0.jpg.eps \
synth1.jpg.eps \
synth3.jpg.eps \
synth4.jpg.eps \
time1.jpg.eps \
time2.jpg.eps \
wikileaksPyramid.jpg.eps 

all: $(TARGETS)

%.jpg.eps : %.jpg
	convert $< $<.eps

clean:
	/bin/rm -rf $(TARGETS)
