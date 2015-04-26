#include <stdint.h>
#include <stdio.h>

extern int32_t double_input(int32_t input);

int example1(int val)
{
	int input = 4;
	int output = double_input(input);
	return output;
}