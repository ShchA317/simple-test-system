#!/bin/bash

echo "hello! How many tests do you want to add?"

read quantity

echo "let's start adding ${quantity} tests"

for ((i=1; i <= quantity; i++))
do
    echo "enter the ${i} test:"
    read test
    count=$(ls -l tests/ | grep "^-" | wc -l)
    j=$(($count+1))
    touch tests/t${j}
    echo ${test} > tests/t${j}
    echo "test t${j} is added"
    echo "enter answer to this test:"
    read answer
    count=$(ls -l answers/ | grep "^-" | wc -l)
    j=$(($count+1))
    touch answers/a${j}
    echo ${answer} > answers/a${j}
    echo "answer a${j} is added"
done

echo "it's all!"
