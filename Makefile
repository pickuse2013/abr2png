CC         = g++
CFLAGS     = -Wall -pedantic
CFLAGS_OPT = -O2
LIBS       = -lstdc++ -lm -lpng -lz

all:
	$(CC) $(CFLAGS) $(CFLAGS_OPT) -c abr_util.cpp -s $(LIBS) -o target/abr_util.o
	$(CC) $(CFLAGS) $(CFLAGS_OPT) -c PngWrite.cpp -s $(LIBS) -o target/PngWrite.o
	$(CC) $(CFLAGS) $(CFLAGS_OPT) -c abr.cpp -s $(LIBS) -o target/abr.o
	$(CC) target/abr.o target/abr_util.o target/PngWrite.o -o target/abr2png -s $(LIBS)

.PHONY: clean

clean:
	rm -rf abr2png *.o
