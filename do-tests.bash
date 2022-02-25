#!/bin/bash

name=""
suc=0
err=0

count=$(ls -l tests/ | grep "^-" | wc -l)

for ((i=1; i <= count; i++))
do
    cat tests/t${i} | ./${name} > output
    if cmp -s answers/a${i} output; then
        echo "test${i} OK"
        suc=$(($suc+1));
    else
        echo "test ${i} FAILED"
        diff answers/a${i} output
        err=$(($err+1))
    fi
done

echo ""
echo "${suc} tests passed";
echo "${err} tests failed";
