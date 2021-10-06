CC=gcc #definir el compilador a utilizar
EXE=conv #definir el nombre ejecutable

CDEBUG= -g -Wall #definir las banderas de depuración
CSTD= -std=c99 #definir el estándar del lenguaje a utilizar

CFLAGS = -Who-deprecated-register -00 $(CDEBUG) $(CSTD)
CLIBS= -lm

COBJ = main funciones

FILES = $(addsuffix .c, $(COBJ))
OBJS = $(addsuffix .o, $(COBJ))

CLEANLIST = $(addsuffix .o, $(COBJ))

.PHONY: all
all: wc

wc: $(FILES)	
	$(MAKE) $(OBJS)
	$(CC) $(CFLAGS) -o $(EXE) $(OBJS) $(CLIBS)

.PHONY: clean 
clean: 
	rm -rf $(CLEANLIST) 