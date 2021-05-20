OBJ = classify.o  eval.o  getscore.o  output.o  score.o
APPNAME = score

%.o : %.c
	gcc -c -o $@ $<

$(APPNAME) : $(OBJ)
	gcc -o $(APPNAME) $(OBJ)

clean :
	rm $(OBJ) $(APPNAME)
