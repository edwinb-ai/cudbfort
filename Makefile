CC = nvfortran
LFLAGS = -fast
OBJS = parameters.o utils.o forces.o positions.o
EXE = dbrown.exe

all: $(EXE)

$(EXE): $(OBJS)
	$(CC) $(LFLAGS) src/dbrown.cuf -o $(EXE) $(OBJS)

parameters.o: src/parameters.cuf
	$(CC) $(LFLAGS) -c $<

utils.o: src/utils.cuf
	$(CC) $(LFLAGS) -c $<

forces.o: src/forces.cuf
	$(CC) $(LFLAGS) -c $<

positions.o: src/positions.cuf
	$(CC) $(LFLAGS) -c $<

clean:
	rm *.o *.mod $(EXE)