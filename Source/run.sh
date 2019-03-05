#!/bin/bash
for omp_threads in 1 2 3 4 
do
	export OMP_NUM_THREADS=$omp_threads
	for dim in 99 299 699 999
	do
		for ((i=1; i <=2; i++))
		do
		./main $dim >results${omp_threads}_${dim}_${i}.csv
		done
	done
done