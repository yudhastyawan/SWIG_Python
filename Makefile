MODNAME=example
PYTHONLIB=/home/yudha/miniconda3/include/python3.8

_${MODNAME}.so: ${MODNAME}.o ${MODNAME}_wrap.o
	gcc -shared ${MODNAME}.o ${MODNAME}_wrap.o -o _${MODNAME}.so

${MODNAME}_wrap.o: ${MODNAME}_wrap.c
	gcc -O2 -fPIC -c ${MODNAME}_wrap.c -I${PYTHONLIB}

${MODNAME}_wrap.c: ${MODNAME}.i
	swig -python ${MODNAME}.i

${MODNAME}.o: ${MODNAME}.c
	gcc -O2 -fPIC -c ${MODNAME}.c

clean:
	rm *_wrap.c *.o *.so ${MODNAME}.py
	clear