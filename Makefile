MODNAME=example
PYTHONLIB=/home/yudha/Miniconda/include/python3.8

_${MODNAME}.so: ${MODNAME}.o ${MODNAME}_wrap.o
	g++ -shared ${MODNAME}.o ${MODNAME}_wrap.o -o _${MODNAME}.so

${MODNAME}_wrap.o: ${MODNAME}_wrap.cxx
	g++ -O2 -fPIC -c ${MODNAME}_wrap.cxx -I${PYTHONLIB}

${MODNAME}_wrap.cxx: ${MODNAME}.i
	swig -c++ -python -globals CONSTANTS ${MODNAME}.i

${MODNAME}.o: ${MODNAME}.cxx
	g++ -O2 -fPIC -c ${MODNAME}.cxx

clean:
	rm *_wrap.cxx *.o *.so ${MODNAME}.py
	clear