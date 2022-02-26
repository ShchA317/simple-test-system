#!/bin/bash

echo "hello! How many tests do you want to add?"

read quantity

echo "let's start adding ${quantity} tests"

for ((i=1; i <= quantity; i++))
do
    echo "enter the ${i} test, to finish typing, press ctrl+d:"
    test=$(cat)
    count=$(ls -l tests/ | grep "^-" | wc -l)
    j=$(($count+1))
    echo "$test" | cat>tests/t${j}
    echo "test t${j} is added"
    echo "enter answer to this test. To finish typing, press ctrl+d:"
    answer=$(cat)
    count=$(ls -l answers/ | grep "^-" | wc -l)
    j=$(($count+1))
    echo "$answer" | cat > answers/a${j}
    echo "answer a${j} is added"
done

echo "it's all!"
