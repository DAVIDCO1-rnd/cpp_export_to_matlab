#include <iostream>
#include "calc_sum.h"

int main() {
	float num1 = 4.0f;
	float num2 = 3.0f;
	float res = my_func(num1, num2);
	std::cout << num1 << " + " << num2 << " = " << res << std::endl;
}