#!/bin/sh

awk="goawk -i tsv"

echo -n 'Current money: ' ; $awk -f count-current-money.awk come.tsv
echo -n 'Current debt: ' ; $awk -f count-current-debt.awk come.tsv 

