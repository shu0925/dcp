/* 
 * Copyright 04/17/07 Sun Microsystems, Inc. All Rights Reserved 
 * @(#)prime.c 1.2 07/04/17 SMI 
 */


#include <stdio.h>
#include <math.h>

#define N 10000

int primes[N];
int pflag[N];

int is_prime(int v)
{
    int i;
    int bound = floor(sqrt(v)) + 1;
    
    for (i = 2; i < bound; i++) {
        /* no need to check against known composites */ 
        if (!pflag[i]) 
            continue;
        if (v % i == 0) { 
            pflag[v] = 0;
            return 0;
        }
    }
    return (v > 1); 
}

int main(int argn, char **argv)
{
    int i;
    int total = 0;

    for (i = 0; i < N; i++) {
        pflag[i] = 1; 
    }
    
    for (i = 2; i < N; i++) {
        if ( is_prime(i) ) {
            primes[total] = i;
            total++;
        }
    }

    printf("Number of prime numbers between 2 and %d: %d\n",
           N, total);

    return 0;
}
