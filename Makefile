# I am a comment, and I want to say that the variable CC will be
# the compiler to use.
CC=g++
# Hey!, I am comment number 2. I want to say that CFLAGS will be the
# options I'll pass to the compiler.
CFLAGS=-lgsl -lgslcblas -lm
FFLAGS=-L/home/laima/gsl/lib -I/home/laima/gsl/include

all: main

main: main.cc viela.cc energija_jacobi.cc utilities.cc
	$(CC) $(FFLAGS) main.cc -o steady_KD1-22_D2-22-4sigma-rabi5-100 $(CFLAGS) -static
