#!/bin/bash

FILES=($@)
BINDIR=$(dirname $0)
POOL_SIZE=20
TMPDIR=~/tempdata

for GENFILE in ${FILES[@]}
do
    PREFIX=$(basename ${GENFILE} .gen)
    ${BINDIR}/01_gen_to_mgf.py ${GENFILE} ${POOL_SIZE} ${TMPDIR}
    cat $(find ${TMPDIR}/ -name "${PREFIX}.*.d" | sort -V) > ${PREFIX}.mgf
    rm ${TMPDIR}/${PREFIX}.*.d
done